class Geenii < Formula
  desc "geenii"
  homepage "https://github.com/fm-labs/geenii"
  version "0.3.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.4.1/geenii-darwin-amd64-v0.3.4.1.tar.gz"
      sha256 "176f5d0e589065f0908c452f40d070a75246c864168b3fd028fcd68cc3b9f5d2"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"geenii"/"geenii"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.4.1/geenii-darwin-arm64-v0.3.4.1.tar.gz"
      sha256 "770bf98e8f98c4361a66eb096aecdf5ee1af15bf97b0da3c58728fc093c42b0c"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"geenii"/"geenii"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.4.1/geenii-linux-amd64-v0.3.4.1.tar.gz"
        sha256 "77447d5a85a61b8c2c1bb4343ce8222f5e15dd2c543a0d0473815c9bd2893b07"

        def install
          libexec.install Dir["*"]
          bin.install_symlink libexec/"geenii"/"geenii"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.4.1/geenii-linux-arm64-v0.3.4.1.tar.gz"
        sha256 "0f9608476b882da924def84c2881387e04afe9a416118a1fc78ac05da4dc3479"

        def install
          libexec.install Dir["*"]
          bin.install_symlink libexec/"geenii"/"geenii"
        end
      end
    end
  end
end

