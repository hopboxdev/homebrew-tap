class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.5.5"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.5/hop-darwin-arm64"
      sha256 "568b6ff9ceedeade307cd0ee62e3a6f05f73388f8dd5ca666c9cb9c851257e7a"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.5/hop-darwin-amd64"
      sha256 "370f6f2d9df1d980b8eb1c703e42ac5eeac5a39fc509fa015ec9fc6dd54afad1"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.5/hop-linux-arm64"
      sha256 "b0a5d7e0f823b0e4df6445ff78d9c81221a0d578d9f1ab2d6e9d09f2bf60e818"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.5.5/hop-linux-amd64"
      sha256 "35d8025e26b528d68b935890aafb526534ced92c711a4e36f40ba250ae7c00e2"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
