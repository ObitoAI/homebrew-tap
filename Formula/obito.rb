class Obito < Formula
  desc "Obito interactive session client"
  homepage "https://github.com/ObitoAI/Obito"
  version "0.0.1"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.0.1/obito_v0.0.1_darwin_arm64.tar.gz"
      sha256 "e6b580ba121c38bdb3a1e0b976c1e91ed99c7ca3725141c088651884f3e8921e"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.0.1/obito_v0.0.1_darwin_amd64.tar.gz"
      sha256 "0c4a3e3dc2bb358b6e456388f4585a776ae1ebe6fdc9130c245a8595a603c411"
    end
  end

  def install
    bin.install "obito"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/obito version")
  end
end
