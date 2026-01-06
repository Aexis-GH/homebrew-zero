class Zero < Formula
  desc "Aexis Zero scaffolding CLI"
  homepage "https://www.npmjs.com/package/@aex.is/zero"
  url "https://registry.npmjs.org/@aex.is/zero/-/zero-0.1.7.tgz"
  sha256 "723c46a1422b84db4cd63ee468e604665e128657bdeb79c70462aacc3d5aca25"
  license "UNLICENSED"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/zero"
  end

  def caveats
    <<~EOS
      Bun is required at runtime.
      Install it with:
        brew install oven-sh/bun/bun
      or see https://bun.sh
    EOS
  end

  test do
    assert_predicate bin/"zero", :exist?
  end
end
