# heroku-bp-node-build

Heroku buildpack for node apps with build step.

Requires the `build` script in `package.json`.

## CLI installation

Use after nodejs buildpack:

```bash
# create the app with nodejs buildpack
heroku create my-app --buildpack heroku/nodejs

# add heroku-bp-node-build
heroku buildpacks:add --index 2 https://github.com/carloluis/heroku-bp-node-build
```

## Configure builpacks in `app.json` file:

```json
{
	"buildpacks": [
		{
			"url": "heroku/nodejs"
		},
		{
			"url": "https://github.com/carloluis/heroku-bp-node-build"
		}
	]
}
```

More info on buildpacks [here](https://devcenter.heroku.com/articles/buildpacks)
