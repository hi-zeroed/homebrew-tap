cask "quick-cookies" do
  version "1.4.0"
  sha256 "fcbcb8910f0d6c7127c0c6d6dec1a8c3b5057fd6ff489279b86aac4d0e26bd8a"

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
