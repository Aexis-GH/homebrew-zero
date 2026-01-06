class Zero < Formula
  desc "Aexis Zero scaffolding CLI"
  homepage "https://www.npmjs.com/package/@aex.is/zero"
  url "https://registry.npmjs.org/@aex.is/zero/-/zero-0.1.8.tgz"
  sha256 "b9aad836f117e5f281d9f5324e5e49d85ae9d164527fe70d8a5bd441d9aaa99d"
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
