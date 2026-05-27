targetScope = 'resourceGroup'

param location string = 'belgiumcentral'
param staticSiteName string = 'demaca'

resource staticSite 'Microsoft.Web/staticSites@2023-12-01' = {
  name: staticSiteName
  location: location

  sku: {
    name: 'Free'
    tier: 'Free'
  }

  properties: {}
}

output staticSiteName string = staticSite.name
output defaultHostname string = staticSite.properties.defaultHostname
