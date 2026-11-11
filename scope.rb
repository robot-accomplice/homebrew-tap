class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.8/scope-macos-arm64.tar.gz"
      sha256 "3619de1dc55a66c46c00092c543543b8310b07fcdb3deefd70e2e4d53ecd2544"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.8/scope-macos-x64.tar.gz"
      sha256 "5e5bbd45282986f87a2978efb16be6b0a42095a98b39a192a1f02bd56844ec6b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.8/scope-linux-x64.tar.gz"
      sha256 "2b7c9845514507e3e5c82a019a3ea447ac62883a2f0641541034d4318faad56b"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.8/scope-linux-arm64.tar.gz"
      sha256 "b419c94b9151d396e240aefa73f24073be1e12d3145eacd67a60c3a10f6379dd"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
