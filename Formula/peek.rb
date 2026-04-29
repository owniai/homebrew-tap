class Peek < Formula
  desc "Multi-language code definition search powered by tree-sitter"
  homepage "https://github.com/owniai/peek"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.1.1/peek-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "9a704b7f0951487f7c2d3c79fb19e82791505efe84a1250f2451bfa5865f404a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.1.1/peek-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "19163f012234483dd7aa91e70810f382ec2ae17558c56b86f992aeddd6497761"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.1.1/peek-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f0525bb810243e79010094578d7ece276942a72c7b89640ac84c02a14a93e07b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.1.1/peek-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33f1baecdb48881261dc800c1b77b6c39f8e9af79e157bef1bae6fcc087df0ae"
    end
  end

  def install
    bin.install "peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
