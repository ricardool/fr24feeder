# Flightradar24 Docker

This image only includes the fr24feeder, you will need to connect it to a `dump-1090` server.

Please set the following environment variables:

- **FR24KEY**: your flightradar 24 feeder key
- **RECEIVER_ADDRESS**: address for your receiver, *eg: 192.168.1.1:30005*