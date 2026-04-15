class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.6.0/hop-darwin-arm64"
      sha256 "b836a3a1d864096a4a47eb18b5b8697b7b0b4a6106b3002881b5c4f5e2be165e"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.6.0/hop-darwin-amd64"
      sha256 "6722fcd43d98e67a304028e8dcce89ad5764b3f5fed9b4a4e6e27bfa3496fbce"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.6.0/hop-linux-arm64"
      sha256 "663b7c01ae1e086bc8f4ab2550e186cc39da44655c2c5c7942cd60ed0adfd5ab"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.6.0/hop-linux-amd64"
      sha256 "a7b9cfe45b4c787283d226be5f69432a809ef4b938cbec5d3471011d1ecc44d5"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
