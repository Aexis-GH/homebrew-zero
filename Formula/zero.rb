class Zero < Formula
  desc "Aexis Zero scaffolding CLI"
  homepage "https://www.npmjs.com/package/@aex.is/zero"
  url "https://registry.npmjs.org/@aex.is/zero/-/zero-0.1.6.tgz"
  sha256 "bf056874e92a305359fecc5b3d4d89734cfbd178266fd6c6d2fca8719ba543c5"
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
