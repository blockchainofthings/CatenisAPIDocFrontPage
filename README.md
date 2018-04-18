# Catenis API Documentation Front Page

This provides the front page for the Catenis API documentation Web site.

This project is to be used in tandem with the Catenis-API-Docs project, which provides the Web site with the reference
documentation for different versions of the Catenis API.

# Preparing to deploy

Follow the instructions on the Readme file of the Catenis-API-Docs project and build the static site for the different
target API versions.

- Note: there is no need to generate the bundle (tar) file in the Catenis-API-Docs project.

Make sure to create a symbolic link, from the project root, to each built target API version on the Catenis-API-Docs
project. See example below (on macOS) assuming that both this and the Catenis-API-Docs projects are under the same
common directory.

```shell
ln -s -F ../Catenis-API-Docs/deploy/0.5 0.5
ln -s -F ../Catenis-API-Docs/deploy/0.6 0.6
```

Then execute the shell script `predeploy.sh` to generate the bundle file  — a compressed tar file named CatenisAPIDoc.tar.gz
written to the `deploy` directory — used to deploy the API documentation.
