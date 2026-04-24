class Funpou < Formula
  desc "Quick one-line memos with automatic timestamps"
  homepage "https://github.com/to4iki/funpou"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.4/fnp-darwin-arm64.tar.gz"
      sha256 "464050474147e9f02e72b8b9bcfb33597e71c9a6c4173963e3a6bdd624ad84c1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.4/fnp-darwin-amd64.tar.gz"
      sha256 "c40860b149936d3288b59a1b599a1ae185f4b8e0ff9df61481c400ab7136d4fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.4/fnp-linux-arm64.tar.gz"
      sha256 "d1b859146c56929675a9a898f8c58462a2f670a1de6a815be2b7cad77cf43a4b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.4/fnp-linux-amd64.tar.gz"
      sha256 "a670a83134c14680977388e564c5df10ca0e483bd65de90dcc5b29c25369bef9"
    end
  end

  def install
    bin.install "fnp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fnp --version")
  end
end
