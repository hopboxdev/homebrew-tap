class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.5.7"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.7/hop-darwin-arm64"
      sha256 "30fa43a2dc5036c730a252d153a47c3c5b604e280989148be2c7e90f99c920b8"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.7/hop-darwin-amd64"
      sha256 "8171267eb526d96e38055d4a4fa4a1795372f5bb2abef48979bb903bf96dcc97"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.7/hop-linux-arm64"
      sha256 "56be176e9d2618e82b4bdc872bf61a6a0b2a7003d74808594bbcf301f72c0893"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.7/hop-linux-amd64"
      sha256 "10fe5e1ae3e2f8af3c2a2a19ce3ba7b9271e0ba6a3c495572b497fac365f5e65"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
