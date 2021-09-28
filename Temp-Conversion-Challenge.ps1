function ToCelsius {
    [CmdletBinding()]
    param (
        [Parameter()]
        [double]
        $temp
    )
    $cel = ($temp - 32)/1.8
    Write-Output "$cel"
}

function CelToFar {
    [CmdletBinding()]
    param (
        [Parameter()]
        [double]
        $temp
    )
    $far = ($temp * 1.8) + 32
    Write-Output "$far"
}