class Ghola < Formula
  desc "High-performance Go HTTP client for blockchain forensic analysis and browser-like URL fetching"
  homepage "https://github.com/robot-accomplice/ghola"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.6.1/ghola_0.6.1_darwin_arm64.tar.gz"
      sha256 "9b4e27e6b438300be5c30a440634e4eac73ea3febd8f937bf220134cb0a5ac3b"
    end
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.6.1/ghola_0.6.1_darwin_amd64.tar.gz"
      sha256 "a218a1a27f269a17d9762cc1790201e1f92d03dc8f0fa870fb0a3d3c60662bac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.6.1/ghola_0.6.1_linux_amd64.tar.gz"
      sha256 "55094b288e566712832ffd538c5e25010358e85d4a5d505046366436b4d695d9"
    end
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.6.1/ghola_0.6.1_linux_arm64.tar.gz"
      sha256 "11e4a2d674897c312fa017e0f9cd7671b152149b8de37743f1d5be1a9c5ed541"
    end
  end

  def install
    bin.install "ghola"
  end

  test do
    assert_match "ghola", shell_output("#{bin}/ghola --version")
  end
end
