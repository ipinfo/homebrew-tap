class IpinfoCli < Formula
  desc "Official CLI for the IPinfo IP Address API"
  homepage "https://ipinfo.io"
  url "https://github.com/ipinfo/cli/archive/ipinfo-1.1.1.tar.gz"
  sha256 "4fd12fa7c8082529283b308685719f26b96def081a0f70fbdd647f40d3c8fcc7"
  license "Apache-2.0"

  depends_on "go" => :build

  conflicts_with "ipinfo",
    because: "homebrew/core/ipinfo conflicts with the binary name provided by this formula"

  def install
    system "ipinfo/build.sh"
    bin.install "build/ipinfo"
  end

  test do
    assert_equal "1.1.1\n", `#{bin}/ipinfo version`
  end
end
