class Zero < Formula
  desc "Aexis Zero scaffolding CLI"
  homepage "https://www.npmjs.com/package/@aex.is/zero"
  url "https://registry.npmjs.org/@aex.is/zero/-/zero-0.1.5.tgz"
  sha256 "63058d0d34dd0df90a0b3cb67de03d3ac16e1ef42fd931d37b61280c1c78ff41"
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
