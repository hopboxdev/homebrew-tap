class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.5.6"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.6/hop-darwin-arm64"
      sha256 "d36ed42d25ad2359f7989a3f572cdce2450d953543944e7b1bf0e2c58491c7cf"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.6/hop-darwin-amd64"
      sha256 "4607e465045c5526622b2ae479903c25507b5c56111309c08001e4f2f96e5a47"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.6/hop-linux-arm64"
      sha256 "42e8bd98b3b05b43359a4f6402b411333df1c2852903c8ee4628fe0e58adf5b1"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.6/hop-linux-amd64"
      sha256 "027a937fde9c9dc67cad44e12e2b7c20a736fd8917b07ead338c00904d32e429"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
