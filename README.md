# Docker-TeXlive-full

This file is part of the Docker-TeXlive-full project:
https://github.com/cyber-g/Docker-TeXlive-full

Alpine 3.24 image with the full TeX Live distribution.

Build the image:

```sh
docker build -t texlive-full .
```

Start an interactive shell in the current directory:

```sh
docker run --rm -it -v "$PWD:/work" texlive-full
```

Compile `document.tex` to PDF with `latexmk`:

```sh
docker run --rm -v "$PWD:/work" texlive-full latexmk -pdf document.tex
```

## Maintenance

In GitHub repository **Settings > Secrets and variables > Actions**, add the secrets `DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN`, plus the variable `DOCKERHUB_IMAGE` set to the Docker Hub image name to publish (for example, `your-dockerhub-user/texlive-full`).

To rotate an expiring token, create a replacement with read/write access in Docker Hub **Account Settings > Personal access tokens**, update GitHub's `DOCKERHUB_TOKEN` secret, then revoke the old token.

After changing the Dockerfile, commit and push to `main`; GitHub Actions builds and publishes the `latest` image. To publish a version, push a tag such as `v1.0.0`. Pull requests targeting `main` build the image without publishing it.
