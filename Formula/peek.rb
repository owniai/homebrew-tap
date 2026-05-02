class Peek < Formula
  desc "Multi-language code definition search powered by tree-sitter"
  homepage "https://github.com/owniai/peek"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.1.4/peek-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "d9517b7c457302244880d12995405576a988ecce1c66b24629323924e98f05c6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.1.4/peek-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "ca64b3def7097538878b989c9a17762f2257953e18700ba8fa9730976a233a9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.1.4/peek-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac46961fdb0d2d1a4a926fc91cbbd08da73a9c091837a91c0d1bab4362e9f8cf"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.1.4/peek-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f0df891cbce8db5097429e23821b33bf3c200c7a9397e4e3d6ec2b58e7066e6"
    end
  end

  def install
    bin.install "peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
