class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.4"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.4/hop-darwin-arm64"
      sha256 "9ae476ba7e9af16587ee267688820c29e592eb356c84751be5b25885c2eec329"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.4/hop-darwin-amd64"
      sha256 "d2964f0b8fb83724e212d1246bdca6354f282f5ed0d2fffbbb5d813c5ecc4c46"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.4/hop-linux-arm64"
      sha256 "c7e13811d841791be56972c832f3be20a776064610ebd2635917150103f55b99"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.4/hop-linux-amd64"
      sha256 "875b5631e61d1f1ca6c871858595919d7fcf08b1d785e68aa1f05b6db1b0c803"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
