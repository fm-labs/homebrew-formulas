class Geenii < Formula
  desc "geenii"
  homepage "https://github.com/fm-labs/geenii"
  version "0.3.2-rc.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.5/geenii-darwin-amd64-v0.3.2-rc.5.tar.gz"
      sha256 "655d5f035ca5fa89fe18ea0d8ea0a890e258d82b1cc5d50a43bb5c63d49057c4"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"geenii"/"geenii"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.5/geenii-darwin-arm64-v0.3.2-rc.5.tar.gz"
      sha256 "d32741eb7f4eba87fa3b14065a6d4091cf8f68a322463473b8fc8fb4ae61b542"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"geenii"/"geenii"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.5/geenii-linux-amd64-v0.3.2-rc.5.tar.gz"
        sha256 "47b6757473b3d1539a8613dc082343e989b74c874434c5fe988fab464206a5fd"

        def install
          libexec.install Dir["*"]
          bin.install_symlink libexec/"geenii"/"geenii"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.5/geenii-linux-arm64-v0.3.2-rc.5.tar.gz"
        sha256 "9ec01501779229c5980bbc3136c375f0f4d671b175546dc21f4f327d5702e41a"

        def install
          libexec.install Dir["*"]
          bin.install_symlink libexec/"geenii"/"geenii"
        end
      end
    end
  end
end

