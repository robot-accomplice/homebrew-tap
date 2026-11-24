class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.13/scope-macos-arm64.tar.gz"
      sha256 "3bee44a2530f2a17b03757fa1ca9bbad112640cfdc693d7947005ede948a9ddf"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.13/scope-macos-x64.tar.gz"
      sha256 "70f9af84fa14a7dddad78d0f504692755e5653c6ec7719b07cf01ac1b7f053e9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.13/scope-linux-x64.tar.gz"
      sha256 "5658d25f3adeffefcf98cc845d1d989e95a4b99397d89ccea972c45816d54780"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.13/scope-linux-arm64.tar.gz"
      sha256 "b737e0ed87db17dfe98d02205fe9c30b31828eb472d2d674ea547708d4e05d67"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
