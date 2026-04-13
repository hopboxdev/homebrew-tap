class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.4/hop-darwin-arm64"
      sha256 "7d57bffa1d3605bd896d1043a8fd2fc0785e26f20aaab06fcab15503c84978de"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.4/hop-darwin-amd64"
      sha256 "f2a0f8ecfd893567920edc10fe7de6872de4481b19353d331e3ddfd37d37b463"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.4/hop-linux-arm64"
      sha256 "46c556666e0dc7174a96eae3ea3a31ba4a6b05ed4a62613431dce3ffa58367d5"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.4/hop-linux-amd64"
      sha256 "bfa75be094cfe1403393d00f3a3d2042af574828b7fe1308b02e162b571f201c"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
