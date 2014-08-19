require "formula"

class Bossac  < Formula
  homepage "http://www.shumatech.com/web/products/bossa"
  url "http://sourceforge.net/code-snapshots/git/b/b-/b-o-s-s-a/code.git/b-o-s-s-a-code-05bfcc39bc0453c3028b1161175b95a81af7a901.zip"
  sha1 "4a21cb6c19ad755fd31f6f0b96b6b1dd997c62c9"
  version "1.3a"
  head 'http://git.code.sf.net/p/b-o-s-s-a/code b-o-s-s-a-code'


  def install
    # bossac uses a horrible custom makefile so lets hack away on it

    system "make", "bin/bossac"
    system "mkdir", "#{bin}"
    system "cp", "bin/bossac", "#{bin}/"
  end

  test do
    system "#{bin}/bossac", "-h"
  end
end
