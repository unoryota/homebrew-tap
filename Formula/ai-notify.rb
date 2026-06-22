class AiNotify < Formula
  desc "Notifications for terminal AI coding agents, with one mute switch for all"
  homepage "https://github.com/unoryota/ai-notify"
  url "https://registry.npmjs.org/ai-notify/-/ai-notify-0.14.0.tgz"
  sha256 "d5519a05bd3d862334e6c1b6fdbca5f6acf79c5246a2c73789baf2092d65b5bc"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ai-notify --version")
  end
end
