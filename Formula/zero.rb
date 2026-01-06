class Zero < Formula
  desc "Aexis Zero scaffolding CLI"
  homepage "https://www.npmjs.com/package/@aex.is/zero"
  url "https://registry.npmjs.org/@aex.is/zero/-/zero-0.1.2.tgz"
  sha256 "d8a566a720b5763ac05faf0cc5dcea359ec2014eae44b8619baae4ea5eb5f3ae"
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
