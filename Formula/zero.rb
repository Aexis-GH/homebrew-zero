class Zero < Formula
  desc "Aexis Zero scaffolding CLI"
  homepage "https://www.npmjs.com/package/@aex.is/zero"
  url "https://registry.npmjs.org/@aex.is/zero/-/zero-0.1.10.tgz"
  sha256 "3e16ad50eb38585780c50d9ba6a5a38f24ec27a74975220d36022fd6d2b11b63"
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
