class Libmetalink < Formula
  desc "C library to parse Metalink XML files"
  homepage "https://launchpad.net/libmetalink/"
  url "https://launchpad.net/libmetalink/trunk/libmetalink-0.1.3/+download/libmetalink-0.1.3.tar.xz"
  sha256 "86312620c5b64c694b91f9cc355eabbd358fa92195b3e99517504076bf9fe33a"

  bottle do
    cellar :any
    sha256 "87711da9c52d75d2d6fed5829a70b0f6561f55fdcf1129266001b6e96bc69b1b" => :sierra
    sha256 "4ca3f82ac2e2520c677def661168c6ba14ee2b8f0139fbe33cf5be66745244d3" => :el_capitan
    sha256 "e627cde406e135a735fd2586622d2fa05cf6ef9fda8a0ea08d09ddfce20dca75" => :yosemite
    sha256 "9ff31fac7dcd9f9231c067eff04d9b59e1de9f8416142d519799746dbfa34c24" => :mavericks
    sha256 "7f8f2b1fbedd2c845252928f3f379cc3d411fca1cd6d546f26e7d4d084017fa7" => :x86_64_linux
  end

  depends_on "pkg-config" => :build
  depends_on "libxml2" unless OS.mac?

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
