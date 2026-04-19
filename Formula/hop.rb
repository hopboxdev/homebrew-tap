class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.5"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.5/hop-darwin-arm64"
      sha256 "a7b59511f0d02cb5e716e77122ea7ebd44a34bfc05a23c3aca63c86ffeb06702"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.5/hop-darwin-amd64"
      sha256 "6887e74b57783f2f632cd86900f2c68d58309b44f078458a0846a6d274280a51"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.5/hop-linux-arm64"
      sha256 "c861c14630e06b530e57b4638524a480c08504f55f9a579aee30068ecfa19d9d"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.5/hop-linux-amd64"
      sha256 "e368da219f6e75d1ea0d37264bfebb39ff080678b01858b21d2a3d05faca5b4c"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
