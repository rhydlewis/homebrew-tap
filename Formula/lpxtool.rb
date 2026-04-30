class Lpxtool < Formula
  include Language::Python::Virtualenv

  desc "Read-only Logic Pro project inspector — plug-ins, tracks, and metadata"
  homepage "https://github.com/rhydlewis/lpx-toolkit"
  url "https://files.pythonhosted.org/packages/af/a9/b66d3bc6d1ed38a844d292b7e66281c303817bc268c38e3bd41a43566aa8/lpx_toolkit-0.1.2.tar.gz"
  sha256 "046239b839c637e89cfd663c2710b52e8e29fed0130f5177e69045fda44d7276"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "lpx-inspect 0.1.2", shell_output("#{bin}/lpx-toolkit --version")
    assert_match "lpx-inspect 0.1.2", shell_output("#{bin}/lpxtool --version")
  end
end
