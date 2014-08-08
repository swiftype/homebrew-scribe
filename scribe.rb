require 'formula'

class Scribe < Formula
  homepage 'https://github.com/facebookarchive/scribe'
  url 'https://github.com/swiftype/scribe/archive/ffb20bcd03f0a379b84ea4e906decfa2f59f3e68.zip'
  sha1 '056f3e2c2657b869066c859132e97e8fbd404d0d'
  head 'https://github.com/swiftype/scribe.git'

  depends_on 'cmake' => :build
  depends_on 'thrift'

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/scribe -h"
  end
end
