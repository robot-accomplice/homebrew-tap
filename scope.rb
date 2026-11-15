class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.11/scope-macos-arm64.tar.gz"
      sha256 "86190ef0493c0b2c1caaccaecbcb4a55addd733cf43f4dc9501329326e22066c"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.11/scope-macos-x64.tar.gz"
      sha256 "cef49701f4f3aa8239cc1b952fc2c026a19136b444715770712483491b9c0c05"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.11/scope-linux-x64.tar.gz"
      sha256 "b50faf0c21390ef9db77e13e93fc5b8ba831f4b84f8fc7145db9b4fe5d83d860"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.11/scope-linux-arm64.tar.gz"
      sha256 "34f87233c8e7ccc573062198d10a8884d720697a50baf9faeee6358db2e59fa3"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
