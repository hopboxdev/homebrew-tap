class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.7"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.7/hop-darwin-arm64"
      sha256 "5c9ba7029b70df6ead858b6fc36221d511df2addbde0b524ca92285dd7500eb1"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.7/hop-darwin-amd64"
      sha256 "b0ecbdb7daf0e4e724ae8d46bad161bfcfafc0fd88b63dfb55ff88b4d03f8b9b"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.7/hop-linux-arm64"
      sha256 "ac51654815b248dc35ecdc1abdc13caaec2f90a63214bbfb22d173799ce28b0d"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.7/hop-linux-amd64"
      sha256 "0eb01fd07f8f5b35486811325fd4868cb5809fce74fd29e2f0a4621fe6d5e62d"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
