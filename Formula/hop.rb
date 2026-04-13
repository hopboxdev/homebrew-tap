class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.4.3"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.3/hop-darwin-arm64"
      sha256 "1e0c8fc91e9ee3fe50ac30d77acb1bbadd44134ea736032e29f2f68ae48c15ad"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.3/hop-darwin-amd64"
      sha256 "3dd39534fec0cb0b734fde0dc961fc8d672174675b8e706cbe9a56c11a2163b4"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.3/hop-linux-arm64"
      sha256 "d31ea17721b07feb247df7e95bc2cef271d810b36a8b2414728537b4134641f0"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.3/hop-linux-amd64"
      sha256 "5aa96153b7e8c8d0d54cf7a2d98d51c4dddcd12fb4a9102bf7028e89383cde75"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
