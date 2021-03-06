# TapChat Dockerfile

This image is deprecated. It no longer builds, and TapChat has
not been updated in 4+ years. [IrcCloud](https://irccloud.com/)
is a good, modern alternative (albeit not self-hosted).

----

This is a dockerised version of [TapChat](http://tapchatapp.com/).

## Usage

Create a named volume to persist data:

```bash
docker volume create --name tapchat-data
```

Pull the image for the desired version of TapChat:

```bash
docker pull csmith/tapchat:0.0.42
```

Start a container, exposing the TapChat port:

```bash
docker run -d --name tapchat \
              --restart always \
              -p 8067:8067 \
              -v tapchat-data:/.tapchat \
              csmith/tapchat:0.0.42
```

## Defaults

TapChat will be configured to listen on the default port of 8067,
and a default account with the username **admin** and password
**admin** will be created.

You can access a web interface at `https://<ip>:8067/` in order to
change the password or create a new account.

To view the generated SSL fingerprint (in order to verify that
the mobile app is connecting to the correct server), view the
container's logs: `docker logs tapchat`.
