param rgName string = 'Test-AKS1'
param rgLocation string = 'northeurope'

resource rgResourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: rgLocation
}
