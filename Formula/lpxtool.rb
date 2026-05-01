class Lpxtool < Formula
  include Language::Python::Virtualenv

  desc "Read-only Logic Pro project inspector — plug-ins, tracks, and metadata"
  homepage "https://github.com/rhydlewis/lpx-toolkit"
  url "https://files.pythonhosted.org/packages/b8/be/f4d89ac7c1f398bb15f2506a9740287e560a666431f48180e90adde3fa51/lpx_toolkit-0.2.0.tar.gz"
  sha256 "0bc00d1538b7330cf4a80981d3c4b0c1b96044b0fe72209db3e7e0df754874a2"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "lpx-inspect 0.2.0", shell_output("#{bin}/lpx-toolkit --version")
    assert_match "lpx-inspect 0.2.0", shell_output("#{bin}/lpxtool --version")
  end
end
