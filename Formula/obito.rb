class Obito < Formula
  desc "Obito interactive session client"
  homepage "https://github.com/ObitoAI/Obito"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.1/obito_v0.1.1_darwin_arm64.tar.gz"
      sha256 "8a9f84d67bcd55973316d604b7def804153cfb69cd72dc28dab7c85b0be73220"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.1/obito_v0.1.1_darwin_amd64.tar.gz"
      sha256 "c2712911b6bd3efe19eabaf26220ddcc3c2090189632a7fe2f966556ad963b5f"
    end
  end

  def install
    bin.install "obito"
  end

  test do
    assert_equal "v0.1.1", shell_output("#{bin}/obito version").strip
  end
end
