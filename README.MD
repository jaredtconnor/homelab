# Homelab
Becauase why would we make this any simpler?

### Commands:
1. Install all services: `task install`
2. Install specific services by group: `task install --group media`
3. Install specific services individually: `task install --group media --service aar`

#### Direcotry assumptions: 
```
.
├── Taskfile.yml
├── docker-compose.yml
├── apps
│   ├── media
│   │   └── aar
│   │       ├── docker-compose.yml
│   │       └── .env
│   ├── system
│   │   └── homarr
│   │       ├── docker-compose.yml
│   │       └── .env
│   ├── automation
│   │   └── homeassistant
│   │       ├── docker-compose.yml
│   │       └── .env
# ... other groups and services
```
