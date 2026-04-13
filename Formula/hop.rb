class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.3/hop-darwin-arm64"
      sha256 "9f44476d9f9157ae4b2846c2a824027648c3ddbc96a4a7bcabe23cf46a35d46d"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.3/hop-darwin-amd64"
      sha256 "f63544c44b72a38708677c5613edb421f502e2befe70cc2417b8c55a86369235"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.3/hop-linux-arm64"
      sha256 "e66e239689ceb54d7695b26f76e37fc679716233e21efa9efbf22c094cebbb96"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.3/hop-linux-amd64"
      sha256 "dabec3c930f090af2870b0e440dba1e4e582ab818d1fb13f62a0afce6024535e"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
