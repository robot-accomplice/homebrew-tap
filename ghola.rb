class Ghola < Formula
  desc "High-performance Go HTTP client for blockchain forensic analysis and browser-like URL fetching"
  homepage "https://github.com/robot-accomplice/ghola"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.6.0/ghola_0.6.0_darwin_arm64.tar.gz"
      sha256 "61d5f8693698842a31bb9d14b82ee600c8a63fc3482100f829c7d9d0d3707641"
    end
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.6.0/ghola_0.6.0_darwin_amd64.tar.gz"
      sha256 "ada36aa2a7129c10d210a87910c7efc951f475a75cead7eb0239279add63b16d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.6.0/ghola_0.6.0_linux_amd64.tar.gz"
      sha256 "597cfe11c1a6462cfd755fbae3e5887eb71ea177e5cb8eef4af30c9bae1ab9fb"
    end
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.6.0/ghola_0.6.0_linux_arm64.tar.gz"
      sha256 "743bfffeb67b3e6225abc4a1f9251a378e270ecdd3584f628b3e687d41b29ce9"
    end
  end

  def install
    bin.install "ghola"
  end

  test do
    assert_match "ghola", shell_output("#{bin}/ghola --version")
  end
end
