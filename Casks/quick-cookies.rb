cask "quick-cookies" do
  version "1.2.3" # 改为您发布到 GitHub 的 Tag 版本号（例如：1.0.0）
  sha256 "af682f66bcc2bfea0e05c398e69e275aba322693adb0af7454d8dd64a9290c71"

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
