class Peek < Formula
  desc "Multi-language code definition search powered by tree-sitter"
  homepage "https://github.com/owniai/peek"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.1.2/peek-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "30649434c9fc571d8390f0b233d703c33947d765bfcbf34f7f6c98c1fbcec321"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.1.2/peek-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "be732566b4b76e2bf453d3bce1699b9bf1b0dbe37830749edcbbf403aab1787d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.1.2/peek-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "abf7bd9eb4eef4e72e4d9f43cf50b3dbab6df511b0c0032a1662c904075980f9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.1.2/peek-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d45d7dc5fa0d5d3fcb500d9276a573e41c3e36a5a437664205a19ce0975d5e2"
    end
  end

  def install
    bin.install "peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
