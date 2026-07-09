class Geenii < Formula
  desc "geenii"
  homepage "https://github.com/fm-labs/geenii"
  version "0.3.2-rc.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.1/geenii-darwin-amd64.tar.gz"
      sha256 "ce909f9a0523e34ad58fbf12bdf70baed7132ccb224553da0da8a21d25e56841"

      def install
        bin.install "geenii"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.1/geenii-darwin-arm64.tar.gz"
      sha256 "cb12846c1b51b601dbf8d176e605f37d3b3796ac3e265c35566fce6601d065a2"

      def install
        bin.install "geenii"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.1/geenii-linux-amd64.tar.gz"
        sha256 "f6c77aa3fee8a17ec03179d27a61cc75c5bb23e6a9667ecfbb814d5fddcc4f14"

        def install
          bin.install "geenii"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.1/geenii-linux-arm64.tar.gz"
        sha256 "063e7033077f1bd162598b3175f1e03b15bb92d186a0f5bfb129986303f41a82"

        def install
          bin.install "geenii"
        end
      end
    end
  end
end
