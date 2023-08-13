class Bieye < Formula
  desc "Read text in bionic reading format"
  homepage "https://github.com/ismet55555/bieye"
  license "GPL-3.0-or-later"
  url "https://github.com/ismet55555/bieye/archive/refs/tags/v0.2.3.tar.gz"
  sha256 "7f6a0f0a151239a229d4597671435fc09203b8e685ec09a5517962ba6602988b"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin=bieye", "--locked"
    bin.install "target/release/bieye"
  end

  test do
    system "#{bin}/bieye", "--version"
  end
end
