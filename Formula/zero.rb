class Zero < Formula
  desc "Aexis Zero scaffolding CLI"
  homepage "https://www.npmjs.com/package/@aex.is/zero"
  url "https://registry.npmjs.org/@aex.is/zero/-/zero-0.1.17.tgz"
  sha256 "c1f8e27105f33f1badf59f48c80b42693a5ef68bf0e0c5fea1844ae661c6c9de"
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
