class Geenii < Formula
  desc "geenii"
  homepage "https://github.com/fm-labs/geenii"
  version "0.3.2-rc.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.2/geenii-darwin-amd64.tar.gz"
      sha256 "c86ae58d601a73303b3633f6c925e456ea8d433d234e8e56ca70ffef98fd202c"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"geenii"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.2/geenii-darwin-arm64.tar.gz"
      sha256 "e42c6fc4e54517064c08db329f369c593bc2e921a7fd1796b789b495881f4dac"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"geenii"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.2/geenii-linux-amd64.tar.gz"
        sha256 "7121eedff7a730198ee4317e5f8291822ddbdf10ea3f130d36f3215f47b88aaf"

        def install
          libexec.install Dir["*"]
          bin.install_symlink libexec/"geenii"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.2-rc.2/geenii-linux-arm64.tar.gz"
        sha256 "3f3e0d11319f61978a86ffc08d4674289143f5da23a51cc09cee2db87b4b98dd"

        def install
          libexec.install Dir["*"]
          bin.install_symlink libexec/"geenii"
        end
      end
    end
  end
end

