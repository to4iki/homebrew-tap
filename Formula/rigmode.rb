class Rigmode < Formula
  desc "Attach work modes to AI coding agent prompts"
  homepage "https://github.com/to4iki/rigmode"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/to4iki/rigmode/releases/download/v0.1.2/rigmode-darwin-arm64.tar.gz"
      sha256 "9276e066515f7d864ede3f6f4a13b028cfff1c97c52d05dde0692a46988f4b5f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/to4iki/rigmode/releases/download/v0.1.2/rigmode-darwin-amd64.tar.gz"
      sha256 "6ac8ece139c5f07393a0298c702418af0edabf5898b2b44889994f87de3b6e5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/to4iki/rigmode/releases/download/v0.1.2/rigmode-linux-arm64.tar.gz"
      sha256 "0cd16072ff488933225722373fd8ffdf1b8f6aa625a0bf15aeb53b49c0d632d5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/to4iki/rigmode/releases/download/v0.1.2/rigmode-linux-amd64.tar.gz"
      sha256 "272032041c29883348cc5e2154e74a1391d4a036f1ff3db9008975fa78d0e9ed"
    end
  end

  def install
    bin.install "rigmode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rigmode --version")
  end
end
