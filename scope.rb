class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.10/scope-macos-arm64.tar.gz"
      sha256 "3a0b0f5991c9db623807e70bd4246d7f779358ad53db24035c1316e3a3e5bc4b"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.10/scope-macos-x64.tar.gz"
      sha256 "eb7cc674fb934eae08eef6830b5cc0e868235e392173a86aadc8ceaa81b24aec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.10/scope-linux-x64.tar.gz"
      sha256 "fbba770ba88198da09d13866793006c4dfc8a964575e6d46cf2bb44f99a07665"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.10/scope-linux-arm64.tar.gz"
      sha256 "7ec00112df5bab3d33ab377264b17854ed6ad5e8962e243fe09f90f99580d435"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
