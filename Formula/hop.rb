class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.3"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.3/hop-darwin-arm64"
      sha256 "e20fdef19b6395f321efab74b2b207c20bb4464322a92d5e90dbfbdb8327a9d6"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.3/hop-darwin-amd64"
      sha256 "f11de9a96a0fca74c75b184d9fc8196e1c22a1c69baa9b79404a3fd7bc8666dd"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.3/hop-linux-arm64"
      sha256 "01c9d70118daa7340270b8e77894999d1bc3724b55e4309679f20b45ca158e5a"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.3/hop-linux-amd64"
      sha256 "b66cdf09215b9d3e42ebb52808d5af251d847b8d0619c65c66b96f3b6517712b"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
