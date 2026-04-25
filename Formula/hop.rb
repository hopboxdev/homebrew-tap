class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.13"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.13/hop-darwin-arm64"
      sha256 "7e4d3f90c61d83efab882416b51b821e7284e017f851cf1e4294bc788304853f"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.13/hop-darwin-amd64"
      sha256 "2c5cc1e5bf64d1bc157c8af82fd6f28cfc2830eade661798c21c010c024507ed"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.13/hop-linux-arm64"
      sha256 "e5ff12762cfe8914e0f3911982246788eea5d1e172f2c9d67a897f8fcf879739"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.13/hop-linux-amd64"
      sha256 "95bf9d6c32a8cb90e38681491828fb405f66d80ce18cec771b5e0e3c3271a99c"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
