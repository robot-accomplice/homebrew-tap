class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.7.0/scope-macos-arm64.tar.gz"
      sha256 "6f0aaa50e43b156998b01ce4d36bdc6261204fda02e5b8219a746461847bd2b9"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.7.0/scope-macos-x64.tar.gz"
      sha256 "4ac24d62e97058f7173b6253d259e0f62b92f33fcf266d4e41ea757d3689ba02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.7.0/scope-linux-x64.tar.gz"
      sha256 "ea266023a3176461fc90addb74bc69c6c9652916046ff7b3d0f33c974c818fb9"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.7.0/scope-linux-arm64.tar.gz"
      sha256 "77bc8e51cefaa8a20d5b75c30f43c512b51ad05a6c7b11376118dd345a8c3c5d"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
