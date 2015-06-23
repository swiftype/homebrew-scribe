require 'formula'

class Scribe < Formula
  homepage 'https://github.com/facebookarchive/scribe'
  url 'https://github.com/swiftype/scribe/archive/ffb20bcd03f0a379b84ea4e906decfa2f59f3e68.zip'
  sha1 'a55bf54299a5bf2f0933589fc130854a73e6cd68'
  head 'https://github.com/swiftype/scribe.git'

  depends_on 'cmake' => :build
  depends_on 'libevent'
  depends_on 'thrift' => 'with-libevent'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/scribe -h"
  end
end
