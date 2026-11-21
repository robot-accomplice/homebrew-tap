class Ghola < Formula
  desc "High-performance Go HTTP client for blockchain forensic analysis and browser-like URL fetching"
  homepage "https://github.com/robot-accomplice/ghola"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v1.0.0/ghola_1.0.0_darwin_arm64.tar.gz"
      sha256 "17f7fb026b163cdbda1d403c364c3674974077823b68cf922d5c5160ccdd1b7a"
    end
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v1.0.0/ghola_1.0.0_darwin_amd64.tar.gz"
      sha256 "e65760e7ce26bbf90a3356fd94f6ee9caec1d9ddfabe3087ecb218460802420f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v1.0.0/ghola_1.0.0_linux_amd64.tar.gz"
      sha256 "0fd2f666625c66fa7f98103b65b52f1053d7b81610ad09dd3d48ff66a6743f9e"
    end
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v1.0.0/ghola_1.0.0_linux_arm64.tar.gz"
      sha256 "780ff1dc170f728262bfb7e8d12d5eab099663dd1ec4ccb1014f54459baa4371"
    end
  end

  def install
    bin.install "ghola"
  end

  test do
    assert_match "ghola", shell_output("#{bin}/ghola --version")
  end
end
