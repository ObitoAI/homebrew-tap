class Obito < Formula
  desc "Obito interactive session client"
  homepage "https://github.com/ObitoAI/Obito"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.4/obito_v0.1.4_darwin_arm64.tar.gz"
      sha256 "6c73d645d945a7b8c33b85bbdec9792c13aa3bffb02a742616404bb5e6ff2318"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.4/obito_v0.1.4_darwin_amd64.tar.gz"
      sha256 "fe910405db99d4b5a211d4489ec4c2ed18ad5dc40e34041a099e824fe1b79719"
    end
  end

  def install
    bin.install "obito"
  end

  test do
    assert_equal "v0.1.4", shell_output("#{bin}/obito version").strip
  end
end
