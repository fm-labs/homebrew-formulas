class Geenii < Formula
  desc "geenii"
  homepage "https://github.com/fm-labs/geenii"
  version "0.3.2-rc.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.4/geenii-darwin-amd64.tar.gz"
      sha256 "deac07901570a81d10fd1ec671236db3feb3b0a57f0a219f43ebcda0f7280462"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"geenii"/"geenii"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.4/geenii-darwin-arm64.tar.gz"
      sha256 "a6ea399c729e49e5d25246f13d6084c0cdb78524518b5ec1fbc30d4bee3adadb"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"geenii"/"geenii"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.4/geenii-linux-amd64.tar.gz"
        sha256 "dd3760784337d15c622ed514f8e56ce3bf357f572a35830535998fcc88e6db73"

        def install
          libexec.install Dir["*"]
          bin.install_symlink libexec/"geenii"/"geenii"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.4/geenii-linux-arm64.tar.gz"
        sha256 "7df10dcf51921650d0ae4886e05954348c3184d43bc5075f077dc296a1cdccdd"

        def install
          libexec.install Dir["*"]
          bin.install_symlink libexec/"geenii"/"geenii"
        end
      end
    end
  end
end

