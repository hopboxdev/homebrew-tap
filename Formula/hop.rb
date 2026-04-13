class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.5.2"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.2/hop-darwin-arm64"
      sha256 "873652c002d11abe5f588b00e260d37e425f229a79395ec307c9660bae755f1b"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.2/hop-darwin-amd64"
      sha256 "a4b463768c80549ac85117a9e1e1a63ddc66f566c2ddffcb3274ec9996ceb1de"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.2/hop-linux-arm64"
      sha256 "12a0e7d412eca94ca1d9aa9737bf9ac0fd31080b82a35d037557b303f241b125"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.2/hop-linux-amd64"
      sha256 "0176826a83513b80aebc37840537ec9746b79a8cff496101cef1f60607ddfce0"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
