class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.0/hop-darwin-arm64"
      sha256 "f3bebd4942cc60c074f8ef5d74f061a33658f824e69bc08b09158725d313dfd9"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.0/hop-darwin-amd64"
      sha256 "32d5ec514567cf8842c368cc82d0e7f7d106fa24d645b4c3dd6e8338f941263d"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.0/hop-linux-arm64"
      sha256 "d1bd4fa7fa58089931018d488493c7b1ef2ef1a479bd975d76ebe49fad91f747"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.0/hop-linux-amd64"
      sha256 "b1f9dd1170d6d3805536770c7d0c75cde3e81947b746bcc6afb106de7b06a9f6"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
