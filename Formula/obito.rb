class Obito < Formula
  desc "Obito interactive session client"
  homepage "https://github.com/ObitoAI/Obito"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.3/obito_v0.1.3_darwin_arm64.tar.gz"
      sha256 "b902492f1cd2b09f70febc4e0f8af4df6ade4c0e9843ab713034a67d21212115"
    else
      url "https://github.com/ObitoAI/obito-releases/releases/download/v0.1.3/obito_v0.1.3_darwin_amd64.tar.gz"
      sha256 "a0941b2df48f98b8e2a2456bea59eefc01e53a0b12ec4c4e862264ae96adcea4"
    end
  end

  def install
    bin.install "obito"
  end

  test do
    assert_equal "v0.1.3", shell_output("#{bin}/obito version").strip
  end
end
