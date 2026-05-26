targetScope = 'resourceGroup'

param location string = 'belgiumcentral'

resource staticSite 'Microsoft.Web/staticSites@2023-12-01' = {
  name: 'demaca'
  location: location
  sku: {
    name: 'Free'
    tier: 'Free'
  }
  properties: {
    repositoryUrl: 'https://github.com/fantastito/doula-site'
    branch: 'main'
    buildProperties: {
      appLocation: '/'
      outputLocation: 'output'
    }
  }
}

output staticSiteName string = staticSite.name
output defaultHostname string = staticSite.properties.defaultHostname
