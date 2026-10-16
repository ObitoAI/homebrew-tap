class Obito < Formula
  desc "Obito interactive session client"
  homepage "https://github.com/ObitoAI/Obito"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.0/obito_v0.1.0_darwin_arm64.tar.gz"
      sha256 "df0e1bb64a5b14d4898600c6cbe39999a5429714e0ba7ea0b20ca421d94468e2"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.0/obito_v0.1.0_darwin_amd64.tar.gz"
      sha256 "580ae9dc299fcff4a2b0e0602409d2406c8093720435548c91ce19cdb823c66a"
    end
  end

  def install
    bin.install "obito"
  end

  test do
    assert_equal "v0.1.0", shell_output("#{bin}/obito version").strip
  end
end
