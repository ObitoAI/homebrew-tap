class Obito < Formula
  desc "Obito interactive session client"
  homepage "https://github.com/ObitoAI/Obito"
  version "0.0.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.0.1/obito_v0.0.1_darwin_arm64.tar.gz"
      sha256 "ARM64_CHECKSUM"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.0.1/obito_v0.0.1_darwin_amd64.tar.gz"
      sha256 "AMD64_CHECKSUM"
    end
  end

  def install
    bin.install "obito"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/obito version")
  end
end
