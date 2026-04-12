class Hop < Formula
  desc "CLI client for Hopbox — SSH into your dev containers"
  homepage "https://github.com/hopboxdev/hopbox"
  license "MIT"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.1/hop-darwin-arm64"
      sha256 "f66596573c47975a8bbf7b2bc7b682b50eb96ca9213d98b5b9162735a127c829"

      def install
        bin.install "hop-darwin-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.1/hop-darwin-amd64"
      sha256 "3bc14e32249a16597ad87a32882fdd980d6c49ee50a5b5c4c5358aa97140ca81"

      def install
        bin.install "hop-darwin-amd64" => "hop"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.1/hop-linux-arm64"
      sha256 "2177f758f647aa2df1786ba519e13b87636238991c0ed90eaf3f3674c613cb7e"

      def install
        bin.install "hop-linux-arm64" => "hop"
      end
    end

    on_intel do
      url "https://github.com/hopboxdev/hopbox/releases/download/v0.3.1/hop-linux-amd64"
      sha256 "be88542ad010b4dbb7d3dd12bd5c29d54a16e983359f2786d24e728ebb2148dd"

      def install
        bin.install "hop-linux-amd64" => "hop"
      end
    end
  end

  test do
    assert_match "hop", shell_output("#{bin}/hop --help")
  end
end
