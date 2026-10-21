class Obito < Formula
  desc "Obito interactive session client"
  homepage "https://github.com/ObitoAI/Obito"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.4/obito_v0.1.4_darwin_arm64.tar.gz"
      sha256 "7445052ba246fc3ec5340a22957edc13afbd56806ab6b3c0e7c23e4c0ff468a3"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.4/obito_v0.1.4_darwin_amd64.tar.gz"
      sha256 "1d78b77f7db33cadda8a971797d5dbd3e2652c46cc978551eefdcba924e0867b"
    end
  end

  def install
    bin.install "obito"
  end

  test do
    assert_equal "v0.1.4", shell_output("#{bin}/obito version").strip
  end
end
