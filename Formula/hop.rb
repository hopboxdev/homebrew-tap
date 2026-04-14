class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.5.8"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.8/hop-darwin-arm64"
      sha256 "4cfe19ff2e8e592ae3439f554e42e09c5c68cbf576b4783c3e8b13635321015b"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.8/hop-darwin-amd64"
      sha256 "00b9948c5817d3a7d1112be00d44a122caec3eabde09bf09ebdd1cb9846b4e54"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.8/hop-linux-arm64"
      sha256 "084c8d7365fd6f0085e55575cee18d61a53f74dcacbf78ff17c50b831260a0b3"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.8/hop-linux-amd64"
      sha256 "089290c6723566585f214899c9edc56f3f361181c876a78310b5c77fc9b38fbe"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
