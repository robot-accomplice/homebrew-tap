class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.4/scope-macos-arm64.tar.gz"
      sha256 "08647868ebfe3ad1cbe599295c2ba4604fcff1b40e68e0c0ea0d454c851d4a27"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.4/scope-macos-x64.tar.gz"
      sha256 "92841d5087e9ca3c6090b82ac2cd33bd09cf56b652c11cb0d5e063d3bf8e7937"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.4/scope-linux-x64.tar.gz"
      sha256 "19f11aad3da79270eace58664021b65635900eb3b378c1f0ad502020cc2a77de"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.4/scope-linux-arm64.tar.gz"
      sha256 "1f6839a5d3923660af2f6338ab51d19fd4678648e1b8cabe06244b68db0c6d7a"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
