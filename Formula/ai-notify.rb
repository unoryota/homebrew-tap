class AiNotify < Formula
  desc "Notifications for terminal AI coding agents, with one mute switch for all"
  homepage "https://github.com/unoryota/ai-notify"
  url "https://registry.npmjs.org/ai-notify/-/ai-notify-0.4.4.tgz"
  sha256 "c0e1116a54a02ecd3a400ee9cb1e2db52a2df97ecfab81e9f665a62468ab9fab"
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
