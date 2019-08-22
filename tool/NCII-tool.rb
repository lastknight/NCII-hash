require 'digest'
require 'phashion'
require 'find'

NCIItool_VERSION = 0.1
NCIItool_SHELLS = ["md5", "sha1", "sha256", "pHash"]

digest_md5 = ""
digest_rmd160 = ""
digest_sha1 = ""
digest_sha256 = ""
digest_sha384 = ""
digest_sha512 = ""
digest_phash = ""

USAGE = <<ENDUSAGE
Usage:
   NCII-tool [-h] [-f filename] [-d directory] ([-a algo])
ENDUSAGE

HELP = <<ENDHELP
   -h, --help       Show this help.
   -v, --version    Show the version number (#{NCIItool_VERSION}).
   -f, --file.      The file to be hashed.
   -f, --file.      The direcotry to be hashed.
   -a, --algo.      The algorithm to be used
                    Available algos: #{NCIItool_SHELLS.join(', ')}

ENDHELP

ARGS = { :algorythm=>'all'} # Setting default values
UNFLAGGED_ARGS = [ :directory ]              # Bare arguments (no flag)
next_arg = UNFLAGGED_ARGS.first
ARGV.each do |arg|
  case arg
    when '-h','--help'      then ARGS[:help] = true
    when '-d','--dir'       then next_arg = :path
    when '-f','--file'      then next_arg = :file
    else
      if next_arg
        ARGS[next_arg] = arg
        UNFLAGGED_ARGS.delete( next_arg )
      end
      next_arg = UNFLAGGED_ARGS.first
  end
end

puts "NCIItool v#{NCIItool_VERSION}" if ARGS[:version]

if ARGS[:help]
  puts USAGE unless ARGS[:version]
  puts HELP if ARGS[:help]
  exit
end

if ARGS[:file]
  filename = ARGS[:file]
  puts "\nFilename:      "   + filename
  puts "\nDigest::MD5      - " + digest_md5    = Digest::MD5.file(filename).hexdigest
  puts "Digest::RMD160   - "   + digest_rmd160 = Digest::RMD160.file(filename).hexdigest
  puts "Digest::SHA1     - "   + digest_sha1   = Digest::SHA1.file(filename).hexdigest
  puts "Digest::SHA256   - "   + digest_sha256 = Digest::SHA256.file(filename).hexdigest
  puts "Digest::SHA384   - "   + digest_sha384 = Digest::SHA384.file(filename).hexdigest
  puts "Digest::SHA512   - "   + digest_sha512 = Digest::SHA512.file(filename).hexdigest
  puts "Digest::Phashion - "   + digest_phash  = Phashion::Image.new(filename).fingerprint.to_s
  puts "\n"
end

if ARGS[:path]
  path = ARGS[:path]
    
  Find.find(path) do |f|
     if f.match(/\.(jpg|png|jpeg|mpg|mp4|avi|mov)\Z/)  
      filename = f      
      puts "Filename:      "   + filename
      digest_md5    += Digest::MD5.file(filename).hexdigest + "\n"
      digest_rmd160 += Digest::RMD160.file(filename).hexdigest + "\n"
      digest_sha1   += Digest::SHA1.file(filename).hexdigest + "\n"
      digest_sha256 += Digest::SHA256.file(filename).hexdigest + "\n"
      digest_sha384 += Digest::SHA384.file(filename).hexdigest + "\n"
      digest_sha512 += Digest::SHA512.file(filename).hexdigest + "\n"
      if !(File.extname(filename) == ".mpg" or File.extname(filename) == ".mp4" or File.extname(filename) == ".avi" or File.extname(filename) == ".mov")
       digest_phash  += Phashion::Image.new(filename).fingerprint.to_s + "\n"
      end
     end
  end
  File.write('../lists/NCII-hash_md5.txt', digest_md5)
  File.write('../lists/NCII-hash_rmd160.txt', digest_rmd160)
  File.write('../lists/NCII-hash_sha1.txt', digest_sha1)
  File.write('../lists/NCII-hash_sha265.txt', digest_sha256)
  File.write('../lists/NCII-hash_sha386.txt', digest_sha384)
  File.write('../lists/NCII-hash_sha512.txt', digest_sha512)
  File.write('../lists/NCII-hash._pHash.txt', digest_phash)
    
end