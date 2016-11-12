#!/usr/bin/env ruby
#
require 'digest'

file_path = ARGV[0]

if file_path.nil?
  $stderr.puts 'You have to give a filename: generate_checksum.rb <filename>'
  exit 1
end

sha1 = Digest::SHA1.file file_path
puts "Checksum SHA1: #{sha1.hexdigest}"

sha256 = Digest::SHA256.file file_path
puts "Checksum SHA256: #{sha256.hexdigest}"

sha512 = Digest::SHA512.file file_path
puts "Checksum SHA512: #{sha512.hexdigest}"

md5 = Digest::MD5.file file_path
puts "Checksum MD5: #{md5.hexdigest}"
