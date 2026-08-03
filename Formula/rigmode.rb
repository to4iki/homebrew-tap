class Rigmode < Formula
  desc "Attach work modes to AI coding agent prompts"
  homepage "https://github.com/to4iki/rigmode"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/to4iki/rigmode/releases/download/v0.1.0/rigmode-darwin-arm64.tar.gz"
      sha256 "5deb3451a8540e4cdc3732773f1d0d8306b8c7679f1cb83e221f275e475a27e4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/to4iki/rigmode/releases/download/v0.1.0/rigmode-darwin-amd64.tar.gz"
      sha256 "012f75761e054bece09e307f9f882fa8eec16c1281366fc3b02810e0acd511a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/to4iki/rigmode/releases/download/v0.1.0/rigmode-linux-arm64.tar.gz"
      sha256 "748a4e346309e58cb634415b3f37a34533e46ef39a52441d5e5b718f53113e53"
    end
    if Hardware::CPU.intel?
      url "https://github.com/to4iki/rigmode/releases/download/v0.1.0/rigmode-linux-amd64.tar.gz"
      sha256 "6a7beda85bd30e27aafceff11ae82189eba590640ac4df0e72d13d3ac4d00984"
    end
  end

  def install
    bin.install "rigmode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rigmode --version")
  end
end
