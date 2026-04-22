class Ghola < Formula
  desc "High-performance Go HTTP client for blockchain forensic analysis and browser-like URL fetching"
  homepage "https://github.com/robot-accomplice/ghola"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.4.0/ghola_0.4.0_darwin_arm64.tar.gz"
      sha256 "1749e86c6257f16f1edcbd114a72be56178eb38ab35e2c484148b3f4a4fad22f"
    end
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.4.0/ghola_0.4.0_darwin_amd64.tar.gz"
      sha256 "a40d240f0a57181a2ca8d2bb7da1d9a48aa863dd64054f28446001f03e7cb39c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.4.0/ghola_0.4.0_linux_amd64.tar.gz"
      sha256 "60d83e1135562cbba3a2a6d1c8207c30165305786029ec089b173f0d4cfd28ab"
    end
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.4.0/ghola_0.4.0_linux_arm64.tar.gz"
      sha256 "80174ee073dc3136b9b17a2ace82153b590aa05447dc9dcb14d61fbf209cbc97"
    end
  end

  def install
    bin.install "ghola"
  end

  test do
    assert_match "ghola", shell_output("#{bin}/ghola --version")
  end
end
