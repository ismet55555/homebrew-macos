class Bieye < Formula
  desc "Read text in bionic reading format"
  homepage "https://github.com/ismet55555/bieye"
  license "GPL-3.0-or-later"
  url "https://github.com/ismet55555/bieye/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "a57b78213918b47d4872aa3462260247014562ce431b3a983a4e93ab2410388e"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin=bieye", "--locked"
    bin.install "target/release/bieye"
  end

  test do
    system "#{bin}/bieye", "--version"
  end
end
