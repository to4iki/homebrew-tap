class Funpou < Formula
  desc "Quick one-line memos with automatic timestamps"
  homepage "https://github.com/to4iki/funpou"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.6/fnp-darwin-arm64.tar.gz"
      sha256 "32dfbe1415f8a3a246f50d8227e0e20453837c4736b6af5569efc54aa07d9249"
    end
    if Hardware::CPU.intel?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.6/fnp-darwin-amd64.tar.gz"
      sha256 "76af5845b9dc2fe5999956db2b04f32a2652238c630476ae278239e9f516225b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.6/fnp-linux-arm64.tar.gz"
      sha256 "33f0220f45548fe4763d61d931116b12acfbfd8e87ca9edcea6eb00a215102bf"
    end
    if Hardware::CPU.intel?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.6/fnp-linux-amd64.tar.gz"
      sha256 "106e0a7a940ed7c23e501447d48004eba5ac66a85762a67831f9cd1fb3c8fc84"
    end
  end

  def install
    bin.install "fnp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fnp --version")
  end
end
