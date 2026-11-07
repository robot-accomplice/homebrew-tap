class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.6/scope-macos-arm64.tar.gz"
      sha256 "7d12927f5150fa1c5ae60d07b35dafb0c736926d7b62f28d48743243c9c47b50"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.6/scope-macos-x64.tar.gz"
      sha256 "d0be5d72e9ecab777fb724913105155e5b30afa2eacd8401994cf2f311ebf049"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.6/scope-linux-x64.tar.gz"
      sha256 "f940510259fd14dd6e2206af282022eacc1b2fd3aea6bd93d49cde9a81460c90"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.6/scope-linux-arm64.tar.gz"
      sha256 "7dc955b8b70157e2e54e6ae6287466ab7d153cc0e7a56219c319fce3c3fa76e5"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
