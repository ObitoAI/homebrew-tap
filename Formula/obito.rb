class Obito < Formula
  desc "Obito interactive session client"
  homepage "https://github.com/ObitoAI/Obito"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.6/obito_v0.1.6_darwin_arm64.tar.gz"
      sha256 "6d13b50373ab24ee9cc0305733a89f30c15038cd8c2457bd7c70f695a5dc582e"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.6/obito_v0.1.6_darwin_amd64.tar.gz"
      sha256 "3c8cf21233b4957b09e679a04a951fae0cb07ffb213966163cc52db8fefe8282"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.6/obito_v0.1.6_linux_arm64.tar.gz"
      sha256 "5715ee808ffd1592b2d04ed5ae4502f55b07622469e44d3e9293f7c57dbc82f5"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.6/obito_v0.1.6_linux_amd64.tar.gz"
      sha256 "e5ec851b8c120bd597b4d480c6b9c05efc503e8e7bd399bc5aeacd07af221b41"
    end
  end

  def install
    bin.install "obito"
  end

  test do
    assert_equal "v0.1.6", shell_output("#{bin}/obito version").strip
  end
end
