class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.1/hop-darwin-arm64"
      sha256 "cadd64543e0166423c8b0c0d7b0522d55102cf50b474ed9e64a9bbe0a6fc57a8"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.1/hop-darwin-amd64"
      sha256 "b0d4c51570784b4e5a4f3c113964e0b57d6b0d6bb1407d71e2d86297ba84462f"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.1/hop-linux-arm64"
      sha256 "6736fa616f1c71b2a0bba830090eb33eda6ee4c3dfe21d3e78be33d4423524b5"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.1/hop-linux-amd64"
      sha256 "81837663af307a802f42fb4515b0327ed24f15167a4c5eb192f0fb38600428fb"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
