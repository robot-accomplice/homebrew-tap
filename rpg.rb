class Rpg < Formula
  desc "Rust Password Generator - A fast and customizable password generator"
  homepage "https://github.com/robot-accomplice/rpg"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/rpg/releases/download/v2.0.0/rpg-v2.0.0-macos-arm64"
      sha256 "3e72b31c7940627794da66e95a9650d113bf8e14712053fe832307061e8ad964"
    end
    on_intel do
      url "https://github.com/robot-accomplice/rpg/releases/download/v2.0.0/rpg-v2.0.0-macos-x86_64"
      sha256 "10d937505ab003c70bac41425cda2d43b24735df07ab960a01de912296200be5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/robot-accomplice/rpg/releases/download/v2.0.0/rpg-v2.0.0-linux-x86_64"
      sha256 "eac829147e6278f378320a3efdb94a54a27d85bbf5372e2e75b014b74ebb512b"
    end
  end

  def install
    bin.install Dir["rpg*"].first => "rpg"
  end

  test do
    assert_match "RPG", shell_output("#{bin}/rpg --help")
  end
end
