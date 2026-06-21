class AiNotify < Formula
  desc "Notifications for terminal AI coding agents, with one mute switch for all"
  homepage "https://github.com/unoryota/ai-notify"
  url "https://registry.npmjs.org/ai-notify/-/ai-notify-0.4.2.tgz"
  sha256 "bbf7b149ce7d0a60dd50204c9f2eab0513f3b578e4691ffca0ec55201f1322df"
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
