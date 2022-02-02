# Https-localhost

This project helps you quickly get set up with local development on `https://localhost` with
a certificate your browser trusts.

It should work with any service exposed on your local machine on port 3000.

## How it works
A root certificate and certificates for addresses on localhost and the host address inside a
docker container is created. A docker image using [envoy](https://www.envoyproxy.io/) get spun
up and this is configured to terminate SSL on port 443 and forward the request to the docker
host service running on port 3000. The root certificate must be trusted on the client for the
certificate to be accepted.

## Get started
### Prerequisites
* docker
* docker-compose

### Run the service
```bash
./generate_certs.sh
docker-compose up --build
```

### Trust the certificate
#### Firefox
Open [privacy preferences](about:preferences#privacy) and go to certificates -> Show certificates
-> Import and find the `RootCA.pem` file which was created when `generate_certs.sh` was run.

#### Other browsers
Contributions wanted

## Hit localhost
At this point your service should be working on [localhost](https://localhost)

## Caveats
Only tested on Mac/Firefox

Contributions wanted


## TODO
- [ ] Make destination port on host configurable by environment variable
- [ ] Add .devcontainer settings to make windows development easier
