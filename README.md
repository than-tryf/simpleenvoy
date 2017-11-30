# Envoy Proxy
What is envoy proxy? .... [Envoy](https://www.envoyproxy.io/)

Some info taken from [Istio](https://istio.io/) ??

# Architecture of deployment

## Project Components
* Service in JAVA
* Service in GO


# Dockerfile descriptions


# Envoy .json configuration

# Load Balancing Techniques

## Round Robin

## Weighted Least Request

* [Envoy Load Balancing](https://www.envoyproxy.io/docs/envoy/latest/intro/arch_overview/load_balancing)
* [Load Balncer Configuration](https://www.envoyproxy.io/docs/envoy/latest/configuration/cluster_manager/cluster.html#config-cluster-manager-cluster)
* [Weighted Load Balancing](https://www.envoyproxy.io/docs/envoy/latest/configuration/http_conn_man/route_config/route.html?highlight=weight#config-http-conn-man-route-table-route-weighted-clusters)


iptables -t nat -I PREROUTING -i eth0 -p TCP -d 10.16.21.213 --dport 5240 -j DNAT --to-destination 10.198.52.118:5240 -m comment --comment "forward to the MAAS"
