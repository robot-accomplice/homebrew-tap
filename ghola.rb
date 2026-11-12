class Ghola < Formula
  desc "High-performance Go HTTP client for blockchain forensic analysis and browser-like URL fetching"
  homepage "https://github.com/robot-accomplice/ghola"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.7.0/ghola_0.7.0_darwin_arm64.tar.gz"
      sha256 "c6fddf10b98012a4131441c492562cc8cfb91ef70283a267686f013e4b363add"
    end
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.7.0/ghola_0.7.0_darwin_amd64.tar.gz"
      sha256 "4183c0b126a267ed8d9e0d3d3892da4676b4ebc9e26d89e7a8428f880d777514"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.7.0/ghola_0.7.0_linux_amd64.tar.gz"
      sha256 "116ac3e2d73e4c64382b38b5fe3efd302e1f971bc643d85d78de750bbc9ac5a6"
    end
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.7.0/ghola_0.7.0_linux_arm64.tar.gz"
      sha256 "ccc1221281e0aa4ec14af4020468ebe8bc1f509c20079b73b7e7c798f72b9fe1"
    end
  end

  def install
    bin.install "ghola"
  end

  test do
    assert_match "ghola", shell_output("#{bin}/ghola --version")
  end
end
