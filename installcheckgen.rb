
require 'find'
require 'base64'
require 'zlib'

if ARGV.length<1
  puts "Usage: ruby installcheckgen.rb <dir>"
  exit
end
ROOT=ARGV[0]
OUTFILE="installcheck.rb"

files=[]
Find.find(ROOT) do |f|
  files.push(f)
end

files.sort!
zlib=Zlib::Deflate.new(nil)
st=zlib.deflate(files.join('|'),Zlib::FINISH)
zlib.close
str=Base64.encode64(st)

f=File.new(OUTFILE,"w")
f.puts <<"EOS"
require 'find'
require 'base64'
require 'zlib'

ROOT="#{ROOT}"

files=[]
Find.find(ROOT) do |f|
  files.push(f)
end
files.sort!

f=DATA
st=Base64.decode64(f.read)
f.close
zlib=Zlib::Inflate.new
str=zlib.inflate(st)
zlib.finish
zlib.close
files2=str.split("|")
files2.sort!

i=0
matched=true
files2.each do |ff|
  while i<files.length && ff!=files[i]
    i+=1
  end
  if i>=files.length
    matched=false
    break
  end
  i+=1
end

if matched
  puts "OK"
else
  puts "Broken"
end

__END__
#{str}
EOS
f.close() 
