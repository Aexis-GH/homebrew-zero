class Zero < Formula
  desc "Aexis Zero scaffolding CLI"
  homepage "https://www.npmjs.com/package/@aex.is/zero"
  url "https://registry.npmjs.org/@aex.is/zero/-/zero-0.1.3.tgz"
  sha256 "e8f8885ac7afd1de30955cea376d6c42f179207eebded10d7027f72b36d49254"
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
