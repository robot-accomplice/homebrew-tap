class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.7/scope-macos-arm64.tar.gz"
      sha256 "4fe402d91f0a8e3707e7bb1518860b22684999df7c2baaad62d88a59d628d067"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.7/scope-macos-x64.tar.gz"
      sha256 "ac08a182505d168ce59248de3b5a79a5463067a07643c73885c10d5ae0a1a9cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.7/scope-linux-x64.tar.gz"
      sha256 "ce3831f94aba899c23a7b6d467fea0a33556ebaeb2a6c604b7f25f5aa31a5b46"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.7/scope-linux-arm64.tar.gz"
      sha256 "5a63956870d9206e3f474273b28e1c93e11e0f676a1fb473858753c60e425439"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
