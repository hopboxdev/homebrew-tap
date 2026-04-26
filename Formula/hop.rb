class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.14"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.14/hop-darwin-arm64"
      sha256 "b58867ecab58561d2ba5e0f9e891e539a9840ab79e44da01e16737f687e3986a"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.14/hop-darwin-amd64"
      sha256 "2f67dd4b9ed6d17fc820e051732eb85eb9b51405ef54eece9643bb8567018261"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.14/hop-linux-arm64"
      sha256 "b326c48f2dfc9d7dcf913ba7b926c50cf73c9bed3bac919e0c54953f5c260c1a"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.14/hop-linux-amd64"
      sha256 "3900de4f260bf5067c45b9878aba5a2194cd42313007b17dacb958b953d90e54"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
