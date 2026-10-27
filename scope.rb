class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.5/scope-macos-arm64.tar.gz"
      sha256 "ccf01d7313591bcfa59cbdfb0c239ca0fdd6c7347fda744d6b1cf7d1a1a0f194"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.5/scope-macos-x64.tar.gz"
      sha256 "48e0c5dcf0b2f910080dbff5741cae74f3f0cb0264bc42dae9660811d59f0ae3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.5/scope-linux-x64.tar.gz"
      sha256 "8d3ba142ca75991aee4e2fb04227a32f47b888d7c3cc448c7a46ee9967429d2b"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.5/scope-linux-arm64.tar.gz"
      sha256 "f732a79868d0c94ae302fb9a3df85d5c451a72047195db5c15a715549b40eff3"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
