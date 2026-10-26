class Scope < Formula
  desc "Blockchain analysis CLI for venue metadata, gas analytics, and on-chain forensics"
  homepage "https://github.com/robot-accomplice/scope-blockchain-analysis"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.3/scope-macos-arm64.tar.gz"
      sha256 "c1ce8bc38d0c58c9bcaa31a03828645fbd667116e757e66c1e6328bc68859fa0"
    end
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.3/scope-macos-x64.tar.gz"
      sha256 "e1055bcfc7478f89447934e84e6060ae94f616990cc0ccd25a22ae5b1071c03b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.3/scope-linux-x64.tar.gz"
      sha256 "a926b60618533dc3452a6a81ddafab116d9233bb60217e8fe14ffe5a8e5ef8b3"
    end
    on_arm do
      url "https://github.com/robot-accomplice/scope-blockchain-analysis/releases/download/v0.8.3/scope-linux-arm64.tar.gz"
      sha256 "297a8e4a334c68fd15da5535aa856872f861a27a040b02dd8c371dde42e4e78e"
    end
  end

  def install
    bin.install "scope"
  end

  test do
    assert_match "scope", shell_output("#{bin}/scope --version")
  end
end
