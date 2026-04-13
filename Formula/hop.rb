class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.0/hop-darwin-arm64"
      sha256 "eb6bbfad157b379e7ec744ffc69b9745dc4b9419154138b3fa156c7c0305e20a"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.0/hop-darwin-amd64"
      sha256 "4526e2d7c105a4f87c927947d2a2751feecfef87e1ca505f9bd57d713dff0ff6"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.0/hop-linux-arm64"
      sha256 "08c746bdcc872d7b0cb785342857648a08954c7b8709a356faed3e272ac30940"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.0/hop-linux-amd64"
      sha256 "834d03810fc30fe08c2f79b103b8bb05e6be4d7ae6e6729693164802e45fe594"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
