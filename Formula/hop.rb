class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.1/hop-darwin-arm64"
      sha256 "54a388ca41a1d8c48972be62907cfdbef792ab33cbe77fe54c1e2647b429cb39"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.1/hop-darwin-amd64"
      sha256 "efe648445d8e6ec7ecf98fb50ed80a30bd058879e7aa6665d42cd6c6a98922a3"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.1/hop-linux-arm64"
      sha256 "8d755bca93474eefb0018dd4091f1c6140dad4c5624b0a814566d81d72511b2c"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.1/hop-linux-amd64"
      sha256 "65db6c55c26afe387f9730f3713173a33f11e19b9bb88cb7adac4127470ae591"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
