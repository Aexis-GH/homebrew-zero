class Zero < Formula
  desc "Aexis Zero scaffolding CLI"
  homepage "https://www.npmjs.com/package/@aex.is/zero"
  url "https://registry.npmjs.org/@aex.is/zero/-/zero-0.1.1.tgz"
  sha256 "d46de20acef8b70de38265195d3eecb0f92c1263d4a352e7b252f4d4bc227624"
  license "UNLICENSED"

  depends_on "node"
  depends_on "bun"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/zero"
  end

  test do
    assert_predicate bin/"zero", :exist?
  end
end
