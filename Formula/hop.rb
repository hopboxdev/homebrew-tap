class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.9"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.9/hop-darwin-arm64"
      sha256 "73638cc12115c4ad7b31e7c338612afd8876375de63a443674c32ab4f859efd0"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.9/hop-darwin-amd64"
      sha256 "8fbc2e9c64d302c83e36095fc8313db6dfdbf6acdf3b58857b718986d76068a4"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.9/hop-linux-arm64"
      sha256 "5157a1abcaa4bd3ab3a462e7b8cb466776a74daeaf1901b1a4cc3a6d0cad5595"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.9/hop-linux-amd64"
      sha256 "578bdec93930cf41833c78ddba2395879f6cd30efb3e0a286512a5c383947d73"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
