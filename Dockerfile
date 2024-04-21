#update:21-04-2024

FROM clamav/clamav

#Add axigen group with GID 220
RUN addgroup -g 220 axigen

#Add axigen user with GID 220
RUN adduser -g "Axigen" -u 220 -h /var/lib/clamav -s /bin/false -G axigen -D axigen

#Change clamav to run as axigen
RUN sed -i "s/User clamav/User axigen/g" /etc/clamav/clamd.conf
