class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.8"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.8/hop-darwin-arm64"
      sha256 "0da5025fc6dad03e21ad979059fa09036071870a4a483e78a5e0b169c0b5a300"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.8/hop-darwin-amd64"
      sha256 "a98f76653d1b1190bbe4e005428d376594ce83c50d34cb5d4fe8a83a05c14102"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.8/hop-linux-arm64"
      sha256 "95f648dbfd1bc327c0345292221d9cdc81be70ee9933ba2081a6ffa4a05e8431"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.8/hop-linux-amd64"
      sha256 "557d8e8663f05bad2af7844bbc294d6ff79c2f17e32ae614a22e59fa73b9839b"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
