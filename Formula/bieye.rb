class Bieye < Formula
  desc "Read text in bionic reading format"
  homepage "https://github.com/ismet55555/bieye"
  license "GPL-3.0-or-later"
  url "https://github.com/ismet55555/bieye/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "ccbb4c61f35d650764404d787d667d2d4b6e4110f3b33a93f125cd78a6978f77"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin=bieye", "--locked"
    bin.install "target/release/bieye"
  end

  test do
    system "#{bin}/bieye", "--version"
  end
end
