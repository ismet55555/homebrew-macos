class Bieye < Formula
  desc "Read text in bionic reading format"
  homepage "https://github.com/ismet55555/bieye"
  license "GPL-3.0-or-later"
  url "https://github.com/ismet55555/bieye/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "69403333dc1c35f2ca08d74de416079393545062b7e34fee0c1695a2e3800790"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin=bieye", "--locked"
    bin.install "target/release/bieye"
  end

  test do
    system "#{bin}/bieye", "--version"
  end
end
