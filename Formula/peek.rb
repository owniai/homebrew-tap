class Peek < Formula
  desc "Multi-language code definition search powered by tree-sitter"
  homepage "https://github.com/owniai/peek"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.1.3/peek-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "7776fa545eb6e84a0a9f6419300dc97da41c6aae3e3428f1afc3e3562c9f1a80"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.1.3/peek-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "5a9d4cd65520fc2497ebf9ff2a2488ab254cf2991f2d28d8b0545310357d4b58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.1.3/peek-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f05ce5d5dc50feb0be9d519a9ff62befa20cc6d31f7e29d3cf85c7cc81286c7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.1.3/peek-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f4e3e3155b190a42a8ec4dc6d6a02afb75e3b0c9ea2500f0811c390487d8897"
    end
  end

  def install
    bin.install "peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
