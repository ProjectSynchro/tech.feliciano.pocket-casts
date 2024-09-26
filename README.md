## Flatpak for Pocket Casts

#### Check out the upstream project here: https://github.com/FelicianoTech/pocket-casts-desktop-app

### Build the Flatpak locally
1. Clone this repo
2. Install the flatpak-builder package for your distro
3. Install FreeDesktop SDK and Runtime, as well as the Electron BaseApp
   * `flatpak install org.freedesktop.Platform//24.08 org.freedesktop.Sdk//24.08 org.freedesktop.Sdk.Extension.node20//24.08 org.electronjs.Electron2.BaseApp//24.08`
4. Build the Flatpak locally with: `./local-build.sh`
5. Install the test build with: `flatpak install ./tech.feliciano.pocket-casts.flatpak`

### Getting NPM generated sources manually
1. Install pipx for your distro
2. Clone this repo
3. Initialize the flatpak-builder-tools submodule:
   * `git submodule update --init`
3. Install flatpak-node-generator with:
   * `pipx install flatpak-builder-tools/node`
4. Download the latest package-lock.json from the upstream repository
5. Run `flatpak-node-generator npm package-lock.json`
6. Commit updated `generated-sources.json`
