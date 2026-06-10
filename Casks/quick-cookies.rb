cask "quick-cookies" do
  version "1.2.4" # 改为您发布到 GitHub 的 Tag 版本号（例如：1.0.0）
  sha256 "4ef08a5aabae216842b3a84b3629410a7448b650fcc80ba3f41818b1e824000c"

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
