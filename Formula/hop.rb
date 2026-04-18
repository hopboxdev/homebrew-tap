class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.1"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.1/hop-darwin-arm64"
      sha256 "5f82254207d8c1874cf2eeda4f65df97b75402830e9df2813a26cc7d814f04fb"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.1/hop-darwin-amd64"
      sha256 "1280b142806a9b0c5993d96d397167de7f0ad2721c790eba78efdf697aa0dc48"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.1/hop-linux-arm64"
      sha256 "67c0fe8fa234916c455a285a764ea812267be4945b4034f84f51140bc7df4277"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.1/hop-linux-amd64"
      sha256 "35158d9b02a8eb02c063def8ed0badef1bdd92bd7a32777de442277590fc3bac"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
