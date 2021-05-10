class Grepip < Formula
  desc "Filters IPv4 & IPv6 addresses with a grep-compatible interface"
  homepage "https://ipinfo.io"
  url "https://github.com/ipinfo/cli/archive/grepip-1.0.1.tar.gz"
  sha256 "5e03a5ea3ce631daa4d616809a035c440c11ef5cb69bbd161e067d56c6dcb402"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "./grepip/build.sh"
    bin.install "build/grepip"
  end

  test do
    assert_equal "1.0.1\n", `#{bin}/grepip --version`
  end
end
