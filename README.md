# Homebrew tap — Charon

Client SFTP/FTPS/FTP privé pour macOS.

```sh
brew install --cask lucasraffalli/charon/charon
```

L'app n'est pas notarisée Apple : la cask retire la quarantaine Gatekeeper
à l'installation (sinon macOS affiche « charon est endommagé »). Les mises à
jour suivantes s'installent automatiquement depuis l'app.

Téléchargement direct et changelog : <https://release.lucasraffalli.com/charon/>

> `Casks/charon.rb` est généré par `scripts/make-cask.sh` du dépôt
> [charon](https://github.com/LucasRaffalli/charon) à chaque release —
> ne pas l'éditer à la main.
