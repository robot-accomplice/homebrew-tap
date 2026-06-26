class Ghola < Formula
  desc "High-performance Go HTTP client for blockchain forensic analysis and browser-like URL fetching"
  homepage "https://github.com/robot-accomplice/ghola"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.5.0/ghola_0.5.0_darwin_arm64.tar.gz"
      sha256 "24fa2c06981ccd1f4fa1b509555d6440395674a43fbe01b1ff7f9db45fb87b45"
    end
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.5.0/ghola_0.5.0_darwin_amd64.tar.gz"
      sha256 "ac31dcc72fd11aa2fdfa4fc12e9cef5441d22a19373d7028b62ad1c9e319a983"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.5.0/ghola_0.5.0_linux_amd64.tar.gz"
      sha256 "cb180074ee9a2e0dd5f20dd3cd875298c74b9b2a6f87915e412bcd1d3d75ff88"
    end
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.5.0/ghola_0.5.0_linux_arm64.tar.gz"
      sha256 "219b131c252afacaf854dfcdbddbd0e17a6802a8092206484f7062bc700b7e1f"
    end
  end

  def install
    bin.install "ghola"
  end

  test do
    assert_match "ghola", shell_output("#{bin}/ghola --version")
  end
end
