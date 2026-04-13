class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.4.2"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.2/hop-darwin-arm64"
      sha256 "c44a3baa3f9d5d47af4990a76dc17e900240de482015d097d1b65fbf43be2c28"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.2/hop-darwin-amd64"
      sha256 "44be619cabab1856b232abe1b3cea09e43136a8369108384cc5a8eeec013d825"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.2/hop-linux-arm64"
      sha256 "48786364252edeb0ddc69b776f642dd413f4180d6ccd3501495c8f59444e1ca7"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.4.2/hop-linux-amd64"
      sha256 "77c3361d801739b4ab846111fe30b543be6a6db580f26a392fac3638517ad262"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
