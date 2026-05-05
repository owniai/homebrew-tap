class PeekCode < Formula
  desc "Multi-language code definition search powered by tree-sitter"
  homepage "https://github.com/owniai/peek"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.2.1/peek-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "e91a993a4adf5d9e2a7484f485dd11efce389aa4a7d7554bd60e16181ab41fe5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.2.1/peek-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "f59893f020a334fb4a9b9b6fcd2264c632373f7394d89b34c5d4fc7a57b209bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.2.1/peek-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cdd1bf01a0489d411f8fd1b96437d94b977cd57969daeb5555e0ff8b7e430862"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.2.1/peek-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9facbce8db8a069431fb85465a94645280689cc78ae1697552a9e60563ac170"
    end
  end

  def install
    bin.install "peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
