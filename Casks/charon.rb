cask "charon" do
  version "1.1.0"
  sha256 "0af5e57425a72326f2902955c561586e2b5bd389810354179b2c894541e1a87a"

  url "https://release.lucasraffalli.com/charon/charon_#{version}_aarch64.dmg"
  name "Charon"
  desc "Client SFTP/FTPS/FTP privé pour macOS"
  homepage "https://release.lucasraffalli.com/charon/"

  # L'app embarque son propre updater — brew upgrade n'a rien à faire.
  auto_updates true
  depends_on arch: :arm64

  app "charon.app"

  # App non notarisée : sans ça, Gatekeeper affiche « charon est endommagé ».
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/charon.app"]
  end

  uninstall quit: "com.aegis.charon"

  zap trash: [
    "~/Library/Application Support/com.aegis.charon",
    "~/Library/Caches/com.aegis.charon",
    "~/Library/Preferences/com.aegis.charon.plist",
    "~/Library/Saved Application State/com.aegis.charon.savedState",
    "~/Library/WebKit/com.aegis.charon",
  ]
end
