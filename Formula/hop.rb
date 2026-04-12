class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.0/hop-darwin-arm64"
      sha256 "de25d187c76d0c2889bab51d49e2baacefbc32e14e120fa75081791260b65038"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.0/hop-darwin-amd64"
      sha256 "a799cf5d5f55d49768fd451a891f5ab33fb5ece03e398f7e04cf22485670d8c6"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.0/hop-linux-arm64"
      sha256 "78ef5dcb9bd942e88b28fa8b321bbdccedbb659cacab7b87b63130c036e65e96"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.0/hop-linux-amd64"
      sha256 "c4a7a3c095aa79479c467d353371a5f5589a4d0fd6db968fab8661440bcae7fa"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
