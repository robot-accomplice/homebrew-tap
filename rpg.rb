class Rpg < Formula
  desc "Rust Password Generator - A fast and customizable password generator"
  homepage "https://github.com/robot-accomplice/rpg"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/robot-accomplice/rpg/releases/download/1.1.0/rpg-v1.1.0-macos-arm64"
      sha256 "96be1f8987af7fdd06af929430a5e166aad4ce92875a686101e6e9c7a586e81d"
    end
    on_intel do
      url "https://github.com/robot-accomplice/rpg/releases/download/1.1.0/rpg-v1.1.0-macos-x86_64"
      sha256 "53b85dfacf96aabe784b806f2ef7cf8a4d4d58c4455dcb205cd8457ec6a48831"
    end
  end

  def install
    bin.install Dir["rpg*"].first => "rpg"
  end

  test do
    assert_match "RPG", shell_output("#{bin}/rpg --help")
  end
end
