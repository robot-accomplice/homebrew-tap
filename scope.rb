class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.6.0/scope-macos-arm64.tar.gz"
      sha256 "d6d69d13f2dd4fcc3460cc79b42464aca8c9fe8eeed37baf747be288bb73fff0"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.6.0/scope-macos-x64.tar.gz"
      sha256 "298ccc55558fc51abecb13a87bf1ca3a1d19bb4672a5c899f938be1cc0882d2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.6.0/scope-linux-x64.tar.gz"
      sha256 "77dc5e094d023c3a52d9a10aeb4c0b2495286c7a3fa25525635fbdf3e7cbea77"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.6.0/scope-linux-arm64.tar.gz"
      sha256 "e86d1c267f43442c7ae4db1d26322db07978bdabdd494ed74548a43a068c1dfd"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
