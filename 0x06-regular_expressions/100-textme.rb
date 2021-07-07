#!/usr/bin/env ruby
puts ARGV[0].scan(/\[from:\+?\d{11}\]\s\[to:\+?\d{11}\]\s\[flags:\-?[0-9]\:\-?[0-9]\:\-?[0-9]\:\-?[0-9]\:\-?[0-9]\]/).join(",")
