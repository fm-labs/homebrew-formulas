class Geenii < Formula
  desc "geenii"
  homepage "https://github.com/fm-labs/geenii"
  version "0.3.2-rc.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.3/geenii-darwin-amd64.tar.gz"
      sha256 "e9744f3e7c4e2854b5d3f8f2e88abe6e743e4cae912643d374b0a85555f53b49"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"geenii"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.3/geenii-darwin-arm64.tar.gz"
      sha256 "6130aadfc50125fb96f2c6e6e8a2a397eb5cfda2e04895265b76c58ec02409cd"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"geenii"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.3/geenii-linux-amd64.tar.gz"
        sha256 "9eb1aa2ede5be65c490d420e97d545f1150e6de24da9ccf6bba815d72103104a"

        def install
          libexec.install Dir["*"]
          bin.install_symlink libexec/"geenii"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.3/geenii-linux-arm64.tar.gz"
        sha256 "ddf2067d15e2fe7dc35f1bced3c14f1a2971932425a29c1bdbb6a23df157909d"

        def install
          libexec.install Dir["*"]
          bin.install_symlink libexec/"geenii/geenii"
        end
      end
    end
  end
end

