# github-action-pack-starbound-mod

GitHub Action for repositories with Starbound mods. It will create .PAK file (packed contents of the mod), which is loaded significantly faster by the game.

See https://starbounder.org/Modding:Basics for details.

## Sample usage

In the GitHub repository of your mod:

```yaml
jobs:
  pack-assets:
    if: startsWith(github.ref, 'refs/tags/')
    runs-on: ubuntu-20.04
    steps:
      - uses: actions/checkout@v2
      - name: Remove directories that are not needed inside PAK file (e.g. ".git" or "tests")
        run: rm -rf .git
      - uses: edwardspec/github-action-pack-starbound-mod@v1
        with:
          outputFilename: NameOfMyMod.pak
      - name: Add .pak file to release
        uses: softprops/action-gh-release@v1
        with:
          files: NameOfMyMod.pak
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
