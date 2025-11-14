# ArgoCD deployments repo
This repo defines all the kubernetes resources that are deployed with ArgoCD

## Deployed Apps

- **External Secrets Operator** - Allows us to store and retrieve secrets in Vault
- **cert-manager** - Automates TLS certificate management and issuance
- **reverse-proxy** - Routes external traffic to internal services
- **dns** - Provides DNS resolution for the cluster
- **ddns** - Updates dynamic DNS records automatically
- **authentik** - SSO provider
- **actual** - Personal finance and budget management application
- **nextcloud** - Self-hosted file sync and collaboration platform
- **immich** - Photo and video backup solution
- **lubelogger** - Vehicle maintenance and service tracking application
- **qbittorrent** - BitTorrent client
- **wg-easy** - WireGuard VPN server with web-based management
- **prometheus** - Monitoring system and time-series database
- **grafana** - Visualization platform for metrics

## Network Configuration

### MetalLB IP Range
`192.168.10.90` - `192.168.10.99`

### IP Allocations
| IP Address      | Service                                    |
|-----------------|-------------------------------------------|
| 192.168.10.90   | Primary ingress (reverse-proxy)           |
| 192.168.10.91   | DNS server                                |
| 192.168.10.92   | WireGuard VPN (wg-easy)                   |