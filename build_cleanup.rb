# Copyright (c) 2017 Christian Huxtable <chris@huxtable.ca>.
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

require 'set'
require 'fileutils'

DRY_RUN = false
OLD_LISTS = [ "60base.list", "61base.list", "62base.list"]
CUR_LIST = "63base.list"


def strip_comment(string, identifier = '#')
	return +'' if ( string.start_with?(identifier) )

	offset = string.index(identifier)
	return string if ( offset.nil?() )
	return string[0, offset]
end

def append_paths(path, set)
	File.open(path,"r") { |fd|
		fd.each_line() { |line|
			line = strip_comment(line.strip())
			set << line if ( !line.nil? && !line.empty? )
		}
	}
end

def paths(*paths)
	set = SortedSet.new()
	paths.each() { |path|
		append_paths(path, set)
	}
	return set
end

def ignore?(path)
	# Accept only absolute paths
	return true if ( !path.start_with?('/') )

	# Should be deleted pre-upgrade
	if ( path.start_with?("/usr") )
		return true if ( path.start_with?("/usr/share/man") )
		return true if ( path.start_with?("/usr/X11R6/man") )
		return false
	end

	# Protected Directories
	if ( path.start_with?("/var") )
		return false if ( path.start_with?("/var/syspatch/") )
		return true
	end

	if ( path.start_with?("/bsd") )
		return true if ( path == "/bsd" )
		return true if ( path == "/bsd.rd" )
		return true if ( path == "/bsd.sp" )
		return true if ( path == "/bsd.mp" )
		return true if ( path == "/bsd.booted" )
		return false
	end

	return true if ( path.start_with?("/home") )
	return true if ( path.start_with?("/etc") )
	return true if ( path.start_with?("/dev") )
	return true if ( path.start_with?("/tmp") )
	return true if ( path.start_with?("/etc") )
	return true if ( path.start_with?("/root") )
	return true if ( path == "/obsd" )
	return true if ( path == "/boot" )

	return false
end

def in_dirs?(dirs, path)
	dirs.each() { |dir| return true if ( path.start_with?(dir) ) }
	return false
end


# Main

old_paths = nil
dir_paths = nil
new_paths = nil

FileUtils.cd('lists') {
	old_paths = paths("files.list", *OLD_LISTS)
	dir_paths = paths("directories.list")
	new_paths = paths(CUR_LIST)
}

File.open("6.3/cleanup.sh","w") { |fd|

	fd << "#! /bin/sh\n\n"
	fd << "function clean {\n"
	fd << "\tif [ -f \"$1\" ] ; then\n"
	fd << "\t\techo \"Deleting File:      $1\"\n"
	fd << "#" if ( DRY_RUN )
	fd << "\t\trm \"$1\"\n"
	fd << "\telif [ -d \"$1\" ]; then\n"
	fd << "\t\techo \"Deleting Directory: $1\"\n"
	fd << "#" if ( DRY_RUN )
	fd << "\t\trm -r \"$1\"\n"
	fd << "\telse\n"
	fd << "\t\techo \"Missing:            $1\"\n"
	fd << "\tfi\n"
	fd << "}\n\n"

	fd << "echo\n"
	fd << "echo \"Directories:\"\n"
	dir_paths.each() { |path| fd << "clean \"#{path}\"\n" }

	fd << "\n"
	fd << "echo\n"
	fd << "echo \"Paths:\"\n"
	old_paths.each() { |path|
		next if ( ignore?(path) )
		next if ( in_dirs?(dir_paths, path) )
		next if ( new_paths.include?(path) )

		fd << "clean \"#{path}\"\n"
	}

	fd << "\necho \"Please restart\""
}
