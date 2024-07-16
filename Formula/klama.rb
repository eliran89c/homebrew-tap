# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Klama < Formula
  desc "AI-powered CLI assistant for troubleshooting DevOps-related issues."
  homepage "https://github.com/eliran89c/klama"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/eliran89c/klama/releases/download/v0.1.0/klama_Darwin_x86_64.tar.gz"
      sha256 "19e02f5b2059e6c69923ea114d6d4e080f1b01f04064add2d551415899c685e2"

      def install
        bin.install "klama"
      end
    end
    on_arm do
      url "https://github.com/eliran89c/klama/releases/download/v0.1.0/klama_Darwin_arm64.tar.gz"
      sha256 "ce7529857449f9cce5e8c54bd7f999840ed4fde555fa9a50464f5b5b1a74fa68"

      def install
        bin.install "klama"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/eliran89c/klama/releases/download/v0.1.0/klama_Linux_x86_64.tar.gz"
        sha256 "3c1e2fabc5a0361155ea2bf2c2bcc9bce08c73280b30997b1e92d73b5c70fedb"

        def install
          bin.install "klama"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/eliran89c/klama/releases/download/v0.1.0/klama_Linux_arm64.tar.gz"
        sha256 "51588307e882f3a1fdc5f83c825bc2d5e51aa1024e5976daacc3bf19b0eeb5c3"

        def install
          bin.install "klama"
        end
      end
    end
  end

  test do
    system "#{bin}/klama version"
  end
end
