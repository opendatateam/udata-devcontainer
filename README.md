# Udata .devcontainer

You need VSCode [Remote Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension (not available for vscodium).

## Getting started
You need to clone [udata-gouvfr]() and [udata]() inside this repository:
```
git clone git@github.com:opendatateam/udata.git
git clone git@github.com:etalab/udata-gouvfr.git
```

Then you can reopen this directory as a dev container.

Once you are inside the dev container, you can use `initialize.sh` to install assets for the first time.

## Settings

Don't forget to set `udata.cfg` accordingly.
You should also modify the path to data.

## Data and assets

Data are expected to be located at `udata/data`.

*TODO*

## Develop

You can open the directory as a dev container, start a terminal in VSCode, go to `/workspace/udata` and do `inv serve`.
If you need to develop on frontend assets you can go to udata or udata-gouvfr and do `inv assets-watch` in another terminal.

You can go at `localhost:7000/` `dev.local:7000/`.

## Troubleshooting

*All pages return 404*: Pay attention that you use the correct port number (7000).
*Permission issues*: WIP - you may need to manually change permissions on linux.
