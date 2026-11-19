class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.12/scope-macos-arm64.tar.gz"
      sha256 "ad15e3bc07d0463875cea8212fc77f9e9ab049834f1e71df13aa0f56f7e874ac"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.12/scope-macos-x64.tar.gz"
      sha256 "9b25aabfeba87403e1f2a101c6555b585666570491c8acd58935d2e0c0bd979b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.12/scope-linux-x64.tar.gz"
      sha256 "31f63700102bcfe15fe094e762f4d43f616669f1a65a2a416e9bef6c4d9f1b18"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.12/scope-linux-arm64.tar.gz"
      sha256 "cccb60afcd3ead1fe87cf062c21f4c69e431bff68d19c62210bfec4192671be2"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
