class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.5.6/scope-macos-arm64.tar.gz"
      sha256 "dc81ca564833f072b7fe14c8e97f8980b8025b0f53ba1c28a0bddd549d56fd6e"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.5.6/scope-macos-x64.tar.gz"
      sha256 "da3ef55fa4700ef3c3f0fc8e46578e1e7b02fe0f9ff0f6a1a05a4570000623fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.5.6/scope-linux-x64.tar.gz"
      sha256 "5ba439a14fc455994746221457a799e4c73bbc3af679a712b929d3a6eb3aac50"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.5.6/scope-linux-arm64.tar.gz"
      sha256 "a4f427bcf12b2eb32c956c75c284bfc4558039518a7c25607db20f783c45b5ab"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
