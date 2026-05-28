class PeekCode < Formula
  desc "Multi-language code definition search powered by tree-sitter"
  homepage "https://github.com/owniai/peek"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.3.0/peek-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "48b17648a8d0fb68c713b31042bff0d7a01fc49c9005128432dc97fe75aec521"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.3.0/peek-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "488fc7d85f54105a35e65cc3518b9ae120e7a5f90136ffcc9befbec30c9367b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.3.0/peek-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b716f3182567166d1ff0ff159de7cd2a0abd22430e24c35a2d37179da4e84d4c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.3.0/peek-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d04ab2c85802f05d1a7cc772670708ab6a9477919599bc38b1927e6ce1de66d"
    end
  end

  def install
    bin.install "peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
