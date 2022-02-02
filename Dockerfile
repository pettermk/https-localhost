FROM envoyproxy/envoy:v1.21-latest

ADD ./envoy-conf.yaml /etc/envoy/envoy.yaml
ADD ./localhost.crt /etc/envoy/localhost.crt
ADD ./localhost.key /etc/envoy/localhost.key

EXPOSE 443
EXPOSE 9001