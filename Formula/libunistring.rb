class Libunistring < Formula
  desc "C string library for manipulating Unicode strings"
  homepage "https://www.gnu.org/software/libunistring/"
  url "https://ftpmirror.gnu.org/libunistring/libunistring-0.9.6.tar.xz"
  mirror "https://ftp.gnu.org/gnu/libunistring/libunistring-0.9.6.tar.xz"
  sha256 "2df42eae46743e3f91201bf5c100041540a7704e8b9abfd57c972b2d544de41b"

  bottle do
    cellar :any
    sha256 "aa0b21d3084db39b2bd6047909008372c6fe00d1f7c60adb875fb10aae10e686" => :sierra
    sha256 "e40c7dd30dc0815c41ef694014d4954744b515a99a03ac762cd4fac85611a3e6" => :el_capitan
    sha256 "b89e4c0269f9915f3014fc5597b1feb9c87b3677c22c627003b155a803e32394" => :yosemite
    sha256 "3029d050b300143e45a867b4043e124212c5917920ef70552e2b557620ae89fc" => :mavericks
    sha256 "4dce7f8c3549d66c9c15503aa5aa408cfd77c67ad8704901e1dd1197431687de" => :mountain_lion
    sha256 "d2deb23a16589f825ce6b744a9ea6d9b51c2a6e6f2982787a555f4cfca26fae5" => :x86_64_linux
  end

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "check"
    system "make", "install"
  end
end
