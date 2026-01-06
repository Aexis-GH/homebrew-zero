class Zero < Formula
  desc "Aexis Zero scaffolding CLI"
  homepage "https://www.npmjs.com/package/@aex.is/zero"
  url "https://registry.npmjs.org/@aex.is/zero/-/zero-0.1.9.tgz"
  sha256 "60ab7263bad7a4827bac8f14f88cd78fdde3b62ed973b70cfab4570f37f1b2b5"
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
