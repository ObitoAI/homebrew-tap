class Obito < Formula
  desc "Obito interactive session client"
  homepage "https://github.com/ObitoAI/Obito"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.5/obito_v0.1.5_darwin_arm64.tar.gz"
      sha256 "a3a116cf5a5c936cbf46c4b14c42f7c0cc480c99d2d4142d3455aca897bf39d9"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.5/obito_v0.1.5_darwin_amd64.tar.gz"
      sha256 "77939a124194da7b26104660d1425946de6605948e539ac86bcec1503b52af61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.5/obito_v0.1.5_linux_arm64.tar.gz"
      sha256 "493451f739c077008f7370ac7190c02154fc30241d4a9b2736b6efa0561b1a6e"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.5/obito_v0.1.5_linux_amd64.tar.gz"
      sha256 "5e051eefc5ca448b4a45b4bbd94901db2d35b3b04827d0a0bd2c1474ce9474e5"
    end
  end

  def install
    bin.install "obito"
  end

  test do
    assert_equal "v0.1.5", shell_output("#{bin}/obito version").strip
  end
end
