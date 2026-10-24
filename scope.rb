class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.2/scope-macos-arm64.tar.gz"
      sha256 "8ee4fad33ecec69cb2518ee8789534a404dbf050fcc2cf3166c0f52849161a4b"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.2/scope-macos-x64.tar.gz"
      sha256 "504dad8317040a280ebf1dbdca8fbb6d90a426c06d05e33164f5a132191d3e38"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.2/scope-linux-x64.tar.gz"
      sha256 "229ee33f149d25455e57feeb5fc6ba7cdbc4f604895b5cfbf7f5333e181b96a3"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.2/scope-linux-arm64.tar.gz"
      sha256 "261f850e922dd429dad3ddc308169dc3f9a81b835de1d3f11db113bc250ff87b"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
