class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.9/scope-macos-arm64.tar.gz"
      sha256 "a906ee80838b43d61101cdf52deafd0f73e05f7d131126ba9b9a9aecb3ccf938"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.9/scope-macos-x64.tar.gz"
      sha256 "c80fd672fbe082ac4ed9cd1535b7de7d87f62ac16bb5b0394b5eb617fc8b8d64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.9/scope-linux-x64.tar.gz"
      sha256 "1d6e117efd8efbf00d60fb9db8f0b7207ffb95d9f7008cf8e0f18e8c771b5f0a"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.9/scope-linux-arm64.tar.gz"
      sha256 "f977b125b408674eda303efd0b994ecd0c3e7f339153f79f4916c9cbb3c71e2f"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
