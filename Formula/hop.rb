class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.6"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.6/hop-darwin-arm64"
      sha256 "f7a933c565780df52544b1ad784b977f0214853b6fd0011bb7792c485b4c1a21"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.6/hop-darwin-amd64"
      sha256 "b918f708ad500092fc4b9011e50d61f7e34a766f3bf17399aaee96c73905ae17"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.6/hop-linux-arm64"
      sha256 "5a079d2d186230c9968c177849ea168fb17734e65da17e7b9780f682ef6ef92e"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.6/hop-linux-amd64"
      sha256 "1019ffe41e1014493d592e08755f98ee3a5ed8554291e12490f30af3a9e981cb"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
