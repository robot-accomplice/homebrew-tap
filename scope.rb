class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.1/scope-macos-arm64.tar.gz"
      sha256 "0d4c434602c23fa10f717fe65f076aeef4dbba5116071a76f926d19ba945d30d"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.1/scope-macos-x64.tar.gz"
      sha256 "9c4a3e6204f5c7e3782a2fbc1bd26e8d115fd7142d29f0b91153287a48ec1c03"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.1/scope-linux-x64.tar.gz"
      sha256 "1ee993fdfd032a7243b23dcb84aa5d43f9eb9409fbd6b03a85d51b4108c843d7"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.1/scope-linux-arm64.tar.gz"
      sha256 "237e22c144d5649539e8520f6c5fd79bba7a0d77fe1771a1dc4a4a9155d1fb36"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
