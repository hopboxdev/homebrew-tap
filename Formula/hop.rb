class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.10"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.10/hop-darwin-arm64"
      sha256 "293e70dc25bf3df9056e2798769e7fd40cfaae2cd9218c2d97575e09bb1cc8d2"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.10/hop-darwin-amd64"
      sha256 "806fe4f879411c6ef80f86358fbfcb0d6001f8e319616062e1aace449be5df38"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.10/hop-linux-arm64"
      sha256 "3c9c6f65545dcac172bb04140fb6dd69e28bd5c0286f31d7130ae99b2787a043"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.10/hop-linux-amd64"
      sha256 "80b8c441f4c37bbba42db290fca6411823b7c1a9b2c7e97261c9493577151330"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
