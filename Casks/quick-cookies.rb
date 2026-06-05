cask "quick-cookies" do
  version "1.0.0" # 改为您发布到 GitHub 的 Tag 版本号（例如：1.0.0）
  sha256 "e0e7c90a40e2da2a8b473c74f7dd68b29c3f532beb8fe11c8c83e08473024958"

  # 引用您的 hi-zeroed/quick-cookies 仓库 Releases 下载地址
  url "https://github.com/hi-zeroed/quick-cookies/releases/download/v#{version}/QuickCookies-macOS.dmg"
  name "Quick Cookies"
  desc "Instant code and document preview tool for macOS Finder"
  homepage "https://github.com/hi-zeroed/quick-cookies"

  # 指明 DMG 挂载后需要安装的 App 路径
  app "QuickCookies.app"

  # 卸载时物理清理的本地沙盒与缓存目录
  zap trash: [
    "~/Library/Application Support/com.quickcookies.app",
    "~/Library/Preferences/com.quickcookies.app.plist",
  ]
end
