class Ghola < Formula
  desc "High-performance Go HTTP client for blockchain forensic analysis and browser-like URL fetching"
  homepage "https://github.com/robot-accomplice/ghola"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.8.0/ghola_0.8.0_darwin_arm64.tar.gz"
      sha256 "a1343aac1ea5ade4141a16c73aa01c3b36b35b36c5bd3a6f18db5288b00221e1"
    end
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.8.0/ghola_0.8.0_darwin_amd64.tar.gz"
      sha256 "86076a3db29517032640a9bfc5d57d6ef294a2d2ffd025cc1c0beb0b9a223f34"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.8.0/ghola_0.8.0_linux_amd64.tar.gz"
      sha256 "bb602a847aee3297a4f9fc58aa065fa78fe67a73c4de358d48333fefbab7c3cc"
    end
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.8.0/ghola_0.8.0_linux_arm64.tar.gz"
      sha256 "5ace1a632c68d2804d3a77144e96e25730d8ca1c3b1c5136982c3a60fc489255"
    end
  end

  def install
    bin.install "ghola"
  end

  test do
    assert_match "ghola", shell_output("#{bin}/ghola --version")
  end
end
