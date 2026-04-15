class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.6.0/hop-darwin-arm64"
      sha256 "635bb8d5f9c5b1e2a6ad8b53f9cf86d11460b647d284b7019089c38970f0fed1"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.6.0/hop-darwin-amd64"
      sha256 "1ff3b6e90a4b2157ef1b0241035d2ba65b71f6fcfc4d50732f5a392b9b1c707d"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.6.0/hop-linux-arm64"
      sha256 "4ca1f34a2f469ae1fa1cd15b19a17bf7f6e47b15767c1cbe8ac71d5d0c10c6df"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.6.0/hop-linux-amd64"
      sha256 "d6831366e5034c0b048f093da4e1f9c46d72ff8388fdbf1565bee263c7c4b5d7"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
