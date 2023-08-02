class MyPythonProject < Formula
  include Language::Python::Virtualenv

  desc "Your project's description"
  homepage "https://www.yojenkins.com/"
  license "GPL-3.0-or-later"
  url "https://github.com/ismet55555/yojenkins/releases/download/v0.0.86/yojenkins-0.0.86.tar.gz"
  sha256 "9854fa7a3a1baa3ba18183afe75d1e074c1995384a087d2b95e077e933b8a526"

  depends_on "python@3.7" # or the Python version your project uses

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/yojenkins", "--version"
  end
end
