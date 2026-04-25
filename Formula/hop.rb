class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "Elastic-2.0"
  version "0.7.12"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.12/hop-darwin-arm64"
      sha256 "b36e13c32479ff682cb8e521ff948b2b0b3a61ad1bb7656f30242cb8c21f2d49"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.12/hop-darwin-amd64"
      sha256 "aebdd2234e72aa596eb4075f27334407fc7fa57c7c5a9437b7ccaf32f98c8f85"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.12/hop-linux-arm64"
      sha256 "88b58ef01eb699fd6e1d49a5a16148bdef002d5ebeb792f119939eff534fcac4"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.7.12/hop-linux-amd64"
      sha256 "201193ba000cc088302d9a9e5ade6ce92f67a4bfdda0b1dd6e3181c567261d26"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
