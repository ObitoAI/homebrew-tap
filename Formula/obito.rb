class Obito < Formula
  desc "Obito interactive session client"
  homepage "https://github.com/ObitoAI/Obito"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.5/obito_v0.1.5_darwin_arm64.tar.gz"
      sha256 "93785e0b79e0c9de91d1cb65d41fad828de704bb028b82db9f5e98a0a803836d"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.5/obito_v0.1.5_darwin_amd64.tar.gz"
      sha256 "a9d97f91e0bb62d045e715b47807f61a2bf7efd4689a450c81e109d9e3cbdeff"
    end
  end

  def install
    bin.install "obito"
  end

  test do
    assert_equal "v0.1.5", shell_output("#{bin}/obito version").strip
  end
end
