# gpg

## Useful commands
Useful gist [here](https://gist.github.com/angela-d/8b27670bac26e4bf7c431715fef5cc51).

Listing keys:
```bash
gpg --list-secret-keys --keyid-format LONG
```

Exporting keys (omit [your key] to export all keys):
```bash
gpg --export -a [your key] > gpg-pub.asc
```

Exporting secret keys (omit [your key] to export all secret keys):
```bash
gpg --export-secret-keys -a [your key] > gpg-sc.asc
```

Importing (secret) keys:
```bash
gpg --import <file>.asc
```

Editing Keys:
```bash
gpg --edit-key [your key]
```
