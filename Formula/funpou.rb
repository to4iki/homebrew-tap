class Funpou < Formula
  desc "Quick one-line memos with automatic timestamps"
  homepage "https://github.com/to4iki/funpou"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.5/fnp-darwin-arm64.tar.gz"
      sha256 "ec6910714da44c5d1d5f38921feee4d591a814213848adcf6704a00c524210e3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.5/fnp-darwin-amd64.tar.gz"
      sha256 "ed30b7bc404527ec8e226af13d2afce369e5ca0b4ee87e8e338c0c44f108920a"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.5/fnp-linux-arm64.tar.gz"
      sha256 "50580ecf5d1763cd4de55dd4285144825b8f6f9c55617fd62fa66a454d79692b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/to4iki/funpou/releases/download/v0.1.5/fnp-linux-amd64.tar.gz"
      sha256 "dc662e33a2d64e55941729734dd3d36bf9f7d109fc5547b0bc73289bdb9a0117"
    end
  end

  def install
    bin.install "fnp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fnp --version")
  end
end
