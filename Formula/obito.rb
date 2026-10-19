class Obito < Formula
  desc "Obito interactive session client"
  homepage "https://github.com/ObitoAI/Obito"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.2/obito_v0.1.2_darwin_arm64.tar.gz"
      sha256 "a3f51b25cc0249d31fd51dbdb13777f3cd482380b458983d4b5eacc83d6b2eb4"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.2/obito_v0.1.2_darwin_amd64.tar.gz"
      sha256 "1e53882ef4aa6956de068fc5a40f7403d7054b1cc76d5f559af1d1f87fd34932"
    end
  end

  def install
    bin.install "obito"
  end

  test do
    assert_equal "v0.1.2", shell_output("#{bin}/obito version").strip
  end
end
