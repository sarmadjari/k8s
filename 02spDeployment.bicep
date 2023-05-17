param spDisplayName string = 'AKS-ServicePrincipal' 

resource spMain 'Microsoft.ManagedIdentity/userAssignedIdentities@2021-04-01' = {
  name: '${spDisplayName}-sp'
  location: resourceGroup().location
}

resource spCredentials 'Microsoft.ManagedIdentity/userAssignedIdentities/providers/credentials@2021-04-01' = {
  parent: spMain
  properties: {
    description: 'Auto-generated client secret'
  }
}

output spClientId string = spMain.properties.clientId
output spClientSecret string = spCredentials.properties.value
