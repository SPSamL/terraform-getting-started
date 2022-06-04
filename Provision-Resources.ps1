[CmdletBinding()]
param (
    [Parameter(Mandatory=$true)]
    [Int]
    $ExerciseNumber,

    [Parameter(Mandatory=$false)]
    [switch]
    $Destroy
)

if($ExerciseNumber -eq 1) {
    Set-Location -Path .\1-resources
}
elseif($ExerciseNumber -eq 2) {
    Set-Location -Path .\2-data-sources
}
elseif($ExerciseNumber -eq 3) {
    Set-Location -Path .\3-variables-and-locals
}
elseif($ExerciseNumber -eq 4) {
    Set-Location -Path .\4-state-in-storage
}


az cloud set --name AzureCloud

if ($null -eq $(az account show)) {
    az login
}

terraform init

if(!$Destroy) {
    terraform apply
}
else {
    terraform destroy
}

Set-Location -Path "C:\Git\terraform-getting-started"