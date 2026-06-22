class AiNotify < Formula
  desc "Notifications for terminal AI coding agents, with one mute switch for all"
  homepage "https://github.com/unoryota/ai-notify"
  url "https://registry.npmjs.org/ai-notify/-/ai-notify-0.10.8.tgz"
  sha256 "d54cca85a2d29b83948a8870927dbef6cd32641c2ab72fe1cc9363b14460470b"
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
