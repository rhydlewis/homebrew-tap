class Lpxtool < Formula
  include Language::Python::Virtualenv

  desc "Read-only Logic Pro project inspector — plug-ins, tracks, and metadata"
  homepage "https://github.com/rhydlewis/lpx-toolkit"
  url "https://files.pythonhosted.org/packages/31/53/7a0793c92f755e6783a6d2392135bd3e81ef599fce0aba34f1210cde9f80/lpx_toolkit-0.2.1.tar.gz"
  sha256 "3aafb9426e5b34981a13c20b51b1b144bf5131f9a481d015a96eded142df338b"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "lpx-inspect 0.2.1", shell_output("#{bin}/lpx-toolkit --version")
    assert_match "lpx-inspect 0.2.1", shell_output("#{bin}/lpxtool --version")
  end
end
