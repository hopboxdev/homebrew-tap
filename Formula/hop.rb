class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.5.4"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.4/hop-darwin-arm64"
      sha256 "d3ec1badf4627b9938bdfc7d30bf2ed49bae9c8015ccfeb38a823970acfdde8a"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.4/hop-darwin-amd64"
      sha256 "824fb96118b0239058211d9eca9f4d67e971bbe4ce8d528527743545d206e214"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.4/hop-linux-arm64"
      sha256 "cc4a159ed4312fbdf9125835d10ef2ee29445da97aaf50c38643a84fdd9902f3"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.4/hop-linux-amd64"
      sha256 "55e2d25710d6bf52ca11be2b1c4baa4d5dd8033fd2e05e8bc8587224660c34b5"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
