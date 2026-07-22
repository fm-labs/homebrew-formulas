class Geenii < Formula
  desc "geenii"
  homepage "https://github.com/fm-labs/geenii"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.4/geenii-darwin-amd64-v0.3.4.tar.gz"
      sha256 "e15ccec86ece5496a1f953880396e6eca2319fe7544f38d072cfba272adc4726"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"geenii"/"geenii"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fm-labs/geenii/releases/download/v0.3.4/geenii-darwin-arm64-v0.3.4.tar.gz"
      sha256 "6d147761b2e3cf272a2001e9616dfe33f968049c7624eb088d5cba40633edbe1"

      def install
        libexec.install Dir["*"]
        bin.install_symlink libexec/"geenii"/"geenii"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.4/geenii-linux-amd64-v0.3.4.tar.gz"
        sha256 "77ef3721f41750a7e2a3e0a218ff0a5e36ef31ba11a89abc4b63135d6000ee4e"

        def install
          libexec.install Dir["*"]
          bin.install_symlink libexec/"geenii"/"geenii"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fm-labs/geenii/releases/download/v0.3.4/geenii-linux-arm64-v0.3.4.tar.gz"
        sha256 "e94673cbc7bb1eb17fbdc8c0347a6e60f80b272290b34a19712382fe03af0ef7"

        def install
          libexec.install Dir["*"]
          bin.install_symlink libexec/"geenii"/"geenii"
        end
      end
    end
  end
end

