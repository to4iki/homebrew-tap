class Funpou < Formula
  desc "Quick one-line memos with automatic timestamps"
  homepage "https://github.com/to4iki/funpou"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/to4iki/funpou/releases/download/v#{version}/fnp-aarch64-apple-darwin.tar.gz"
      sha256 "4174cb0936ad8fcf696b8592a991ee853635527bb6f2bf2befcd227ce87dbc86"
    end
    on_intel do
      url "https://github.com/to4iki/funpou/releases/download/v#{version}/fnp-x86_64-apple-darwin.tar.gz"
      sha256 "d360ec2dcd83a64cc525b970fc5d7cc8db5197a29456f65ed4d5cfda30459069"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/to4iki/funpou/releases/download/v#{version}/fnp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "589ec8cb0fa49e3fffbd444298f1776a76e5ef25fcc5419585c7b9a012580eff"
    end
    on_intel do
      url "https://github.com/to4iki/funpou/releases/download/v#{version}/fnp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b74e769d6b66417840adb65850e1ea2fb76880b050e50b1fb013a4ffef0611ff"
    end
  end

  def install
    bin.install "fnp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fnp --version")
  end
end
