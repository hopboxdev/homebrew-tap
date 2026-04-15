class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.6.1/hop-darwin-arm64"
      sha256 "9a76834018dd932db492fc7b419824431cea966e812cbf0324d5769db05d2e76"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.6.1/hop-darwin-amd64"
      sha256 "1cf9e004023668d961f489f0ab59e411ecb5e8e27db12a91d97eae474dbfcef3"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.6.1/hop-linux-arm64"
      sha256 "fe784155c94141819724f8f68ef36e007e71adf9012a872813e655149ecc689b"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.6.1/hop-linux-amd64"
      sha256 "7f62c47f475059ca9f6f5cec4a584119f67bd8026be0b23c520187301ec370a3"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
