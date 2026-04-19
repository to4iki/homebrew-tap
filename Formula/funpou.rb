class Funpou < Formula
  desc "Quick one-line memos with automatic timestamps"
  homepage "https://github.com/to4iki/funpou"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.3/fnp-darwin-arm64.tar.gz"
      sha256 "9fa5f745a7c549a697b7f3232dee98e2c497674a12ddebfd12b1c593a8cbb088"
    end
    if Hardware::CPU.intel?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.3/fnp-darwin-amd64.tar.gz"
      sha256 "fd4938daf793d5199821f087fea20491de85883cdb97d7596a826b351879d087"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.3/fnp-linux-arm64.tar.gz"
      sha256 "70a2231c160cc219c1adf0c15b60e567276a0195af395f7e6bb238ec3605dbf3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.3/fnp-linux-amd64.tar.gz"
      sha256 "e7f0e8e7c7ca30f03807cd7441017c7de16eb6b82fa48d6c8755cb13e2f91548"
    end
  end

  def install
    bin.install "fnp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fnp --version")
  end
end
