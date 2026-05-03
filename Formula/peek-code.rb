class PeekCode < Formula
  desc "Multi-language code definition search powered by tree-sitter"
  homepage "https://github.com/owniai/peek"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.2.0/peek-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "6b0b1bb9b9fc4cd802a0515b1e20de819eaa025d77b91625a8e2d205f35cc273"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.2.0/peek-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "405b2af1bb71d76df4f8dcde79f38bd92399aef06f9d6ed52f2e518e295c4d4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owniai/peek/releases/download/v0.2.0/peek-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02e1294c78ba4ba2b23c9279a5be1a96d5a9deec31b9b8a6129153d01519bf27"
    end
    if Hardware::CPU.intel?
      url "https://github.com/owniai/peek/releases/download/v0.2.0/peek-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "25558765b4636fb41992ae3515bfd84c6f3cd4e5d2dade6f7a30e6f8a514581a"
    end
  end

  def install
    bin.install "peek"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peek --version")
  end
end
