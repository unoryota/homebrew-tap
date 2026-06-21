class AiNotify < Formula
  desc "Notifications for terminal AI coding agents, with one mute switch for all"
  homepage "https://github.com/unoryota/ai-notify"
  url "https://registry.npmjs.org/ai-notify/-/ai-notify-0.10.0.tgz"
  sha256 "fe3c6277ad5d3f44fbd6eefb959a8bd8a7fad214013006bb24f6b653c791406d"
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
