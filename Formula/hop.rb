class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.11"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.11/hop-darwin-arm64"
      sha256 "0b1a7818a3a7c580e26b2e65f99f856d4fa90b57dd63667710746cf8519d4025"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.11/hop-darwin-amd64"
      sha256 "8b9ed05d813a415c223990a95fbfd0082cb95101d5ce26bd396ca2c01166f5ba"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.11/hop-linux-arm64"
      sha256 "5c79d4cd7d467aa880d20f5f6384de9ba123b4e04e2b8229287eff03ab5163c3"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.11/hop-linux-amd64"
      sha256 "8b3ef375401f62c495454c6607199164e2ebc37a47b601420e8a7118cf4335e5"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
