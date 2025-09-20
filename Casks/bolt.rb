cask "bolt" do
    version :latest
    sha256 :no_check
    
    url "https://github.com/navtoj/Bolt/releases/latest/download/Bolt.zip",
        verified: "github.com/navtoj/Bolt"
    name "Bolt"
    desc "A better macOS experience - with powerful tweaks and seamless enhancements."
    homepage "https://github.com/navtoj/Bolt"
    
    app "Bolt.app"
    
    postflight do
        system_command "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "#{appdir}/Bolt.app"], sudo: false
    end
    
    zap trash: [
        "~/Library/Preferences/com.navtoj.Bolt.plist",
        "~/Library/Application Support/Bolt",
    ]
end
