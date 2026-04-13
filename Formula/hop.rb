class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.5.3"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.3/hop-darwin-arm64"
      sha256 "4b8914dd3ae8c51228f9fabe5888e73f38273443b9e7eaa62c0cac1b3a1f0501"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.3/hop-darwin-amd64"
      sha256 "6f7324b4c2e2470945c4b28f178ba3aed0c79e5b28064002e0319e24272dd57b"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.3/hop-linux-arm64"
      sha256 "e4bb46afdfa2d3abc6cf4447e0f6c4b95f004ab46134622691fe10bb87c288d2"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.3/hop-linux-amd64"
      sha256 "8202112ee2f7eab580e925f74e69aa624641233d950034c4ec535ee0eb8cda80"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
