class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.0/hop-darwin-arm64"
      sha256 "43702e42999dd810784e188973123150ff14b2a55754b9da9a89cf7bbd0c0c48"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.0/hop-darwin-amd64"
      sha256 "183bfa657cecc4d3c4e698d2617016ef1cee4779f52cfa5c378549ee2778a596"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.0/hop-linux-arm64"
      sha256 "d817b0fa6d0beaf0d8869474d0c9627118b3cde6dd156d0321bca466a2a0e58d"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.0/hop-linux-amd64"
      sha256 "5ea3e4559fad4d71098db8aa69f11954c0aec3bdf4a75474a98977a309120a4c"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
