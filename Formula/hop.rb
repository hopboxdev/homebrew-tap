class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.2"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.2/hop-darwin-arm64"
      sha256 "7e72200a2d6aa883d442407fffc3a32d46fd31add937a5859d2267b28a962c11"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.2/hop-darwin-amd64"
      sha256 "c42be164a06c7cae868825c7f2e640f5da05f925926bfc499b77d310223b3351"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.2/hop-linux-arm64"
      sha256 "29d65e8841bc25899a0cce2141889d80198de8a3e7ea191ffec60379a75d7eb4"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.2/hop-linux-amd64"
      sha256 "c28db6d1a28abced7644630a2fb0981653296205737db5578a5f24628509ec77"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
