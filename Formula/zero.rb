class Zero < Formula
  desc "Aexis Zero scaffolding CLI"
  homepage "https://www.npmjs.com/package/@aex.is/zero"
  url "https://registry.npmjs.org/@aex.is/zero/-/zero-0.1.14.tgz"
  sha256 "71d56076b7299f28c057706bfbe78cbc9b60349d6bf53a7d20b1b35657a574ce"
  license "UNLICENSED"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/zero"
  end

  def caveats
    <<~EOS
      Choose any package manager at runtime: npm, pnpm, yarn, or bun.
      npm ships with Node. For Bun:
        brew install oven-sh/bun/bun
    EOS
  end

  test do
    assert_predicate bin/"zero", :exist?
  end
end
