# Homelab ArgoCD

This repository contains Kubernetes manifests for my homelab hosted services, managed by ArgoCD.

## Overview

All applications and services are deployed declaratively through ArgoCD, enabling version-controlled infrastructure and automated deployments. The stack includes core infrastructure components (networking, DNS, certificates, secrets management), self-hosted applications, monitoring, and security services.

## Network Configuration

### MetalLB IP Range
`192.168.10.90` - `192.168.10.99`

### IP Allocations
| IP Address      | Service                                    |
|-----------------|-------------------------------------------|
| 192.168.10.90   | Ingress NGINX Controller (Primary)        |
| 192.168.10.91   | DNS Server                                |
| 192.168.10.92   | WireGuard VPN (wg-easy)                   |
| 192.168.10.93   | qBittorrent                               |
| 192.168.10.94   | Traefik (WIP)                             |