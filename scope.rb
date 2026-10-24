class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.0/scope-macos-arm64.tar.gz"
      sha256 "dba74f8992728be6adfffc490074cc49b7299870d060b3278ad2694b27db328d"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.0/scope-macos-x64.tar.gz"
      sha256 "0d407b8939a3512180c4478aa118c185ace0b1b2e58f0e1f1e5065c50591c4dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.0/scope-linux-x64.tar.gz"
      sha256 "22cfac71217ce4fc4879ee75e56a9b19011d97f65aca5a08c613154231cf4511"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.0/scope-linux-arm64.tar.gz"
      sha256 "e01c7b2fc92756f025c3eb15698a7e9d5000b36072a55877a2a8c43dbe3b8662"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
