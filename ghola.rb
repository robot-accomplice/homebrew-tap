class Ghola < Formula
  desc "High-performance Go HTTP client for blockchain forensic analysis and browser-like URL fetching"
  homepage "https://github.com/robot-accomplice/ghola"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.6.2/ghola_0.6.2_darwin_arm64.tar.gz"
      sha256 "19c085e0e853d9a327ab730a734ccefbea0f345448b1acb1772d35ecdd799ef0"
    end
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.6.2/ghola_0.6.2_darwin_amd64.tar.gz"
      sha256 "7b0af1e46983d20db175ddd520ac1320ab3b8accd7e534e1b40b7e662ccb26e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.6.2/ghola_0.6.2_linux_amd64.tar.gz"
      sha256 "286eecee5681d07645f8c72939213cfea470031af8f7d6c67acc5aa2d43765d8"
    end
    on_arm do
      url "https://github.com/robot-accomplice/ghola/releases/download/v0.6.2/ghola_0.6.2_linux_arm64.tar.gz"
      sha256 "81da8c104211f9c47883747eeeed4baee224277f0b6246782d12bbaa19fdb3f0"
    end
  end

  def install
    bin.install "ghola"
  end

  test do
    assert_match "ghola", shell_output("#{bin}/ghola --version")
  end
end
