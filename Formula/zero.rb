class Zero < Formula
  desc "Aexis Zero scaffolding CLI"
  homepage "https://www.npmjs.com/package/@aex.is/zero"
  url "https://registry.npmjs.org/@aex.is/zero/-/zero-0.1.11.tgz"
  sha256 "fe7123d5a0c433bdf50c4064aa16da481879f11235c83c3a5aebe3e821087600"
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
