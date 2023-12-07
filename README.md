# clamav-axigen

Original clamav/clamav Docker image running clamav as axigen

To use this Image with Axigen mailserver:
- Mount the axigen queue folder to this image on the same location as the Axigen mailserver
- Change the address of the AV:ClamAV socketFilter in axigen.cfg to the ip of this docker

Tested with 10.5.12