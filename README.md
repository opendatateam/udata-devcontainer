# Udata .devcontainer

You need VSCode [Remote Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension (not available for vscodium).

## Getting Started

You need to clone [udata-front](https://github.com/datagouv/udata-front) and [udata](https://github.com/opendatateam/udata) inside this repository:
```
git clone git@github.com:opendatateam/udata.git
git clone git@github.com:datagouv/udata-front.git
```

Then you can reopen this directory as a dev container.

Once you are inside the dev container, you can use `bash initialize.sh` to install assets for the first time.

## Settings

Don't forget to set `udata.cfg` accordingly.

You should add the following settings in  your `udata.cfg`:
```
MONGODB_HOST = 'mongodb://db:27017/udata'
ELASTICSEARCH_URL = 'search:9200'
```

## Develop

You can open the directory as a dev container, start a terminal in VSCode, go to `/workspace/udata` and do `inv serve`.
If you need to develop on frontend assets you can go to udata or udata-front and do `inv assets-watch` in another terminal.

You can go at `localhost:7000/` `dev.local:7000/`.

## Content / users

Data are expected to be located at `udata/data`.

### Create fixtures

```
docker exec -it udata-docker-dev-env_udata_1 generate-fixtures
```

### Create an admin

```
docker exec -it udata-docker-dev-env_udata_1 udata user create
docker exec -it udata-docker-dev-env_udata_1 udata user set-admin <email>
```

### Populate the homepage

- log as admin
- go to http://localhost:7000/fr/admin/editorial/
- pick datasets and reusess

## Indexing (search engines and list)

```
docker exec -it udata-docker-dev-env_udata_1 udata search index
# it is possible to filter by model
docker exec -it udata-docker-dev-env_udata_1 udata search index Dataset
```

## Troubleshooting

*All pages return 404*: Pay attention that you use the correct port number (7000) and the correct `SERVER_NAME` (set in `udata.cfg`).
*Permission issues*: WIP - you may need to manually change permissions on linux.
