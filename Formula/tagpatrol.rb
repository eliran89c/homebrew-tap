# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tagpatrol < Formula
  desc "Validate cloud resource tags against a defined policy."
  homepage "https://github.com/eliran89c/tag-patrol"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eliran89c/tag-patrol/releases/download/v0.1.0/tag-patrol_Darwin_x86_64.tar.gz"
      sha256 "f4090e3174d330259d272da06c4970a48bd1c6b5002fad085b51e86b991e4ad1"

      def install
        bin.install "tagpatrol"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/eliran89c/tag-patrol/releases/download/v0.1.0/tag-patrol_Darwin_arm64.tar.gz"
      sha256 "87222bc1141470ef47e9bf7c58d5e2a17f7b437a07f92c9a45726d7c771ef8c3"

      def install
        bin.install "tagpatrol"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/eliran89c/tag-patrol/releases/download/v0.1.0/tag-patrol_Linux_x86_64.tar.gz"
        sha256 "538e865f7358c8f78342c8e8a270efc162087060ec760ba923cf242f87b75842"

        def install
          bin.install "tagpatrol"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/eliran89c/tag-patrol/releases/download/v0.1.0/tag-patrol_Linux_arm64.tar.gz"
        sha256 "9641fd4338a52df2b91d7df4c13f6f861524df2400cc74f88b4af7b5973c7db4"

        def install
          bin.install "tagpatrol"
        end
      end
    end
  end

  test do
    system "#{bin}/tagpatrol version"
  end
end
