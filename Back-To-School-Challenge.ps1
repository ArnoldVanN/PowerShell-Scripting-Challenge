#challenge link https://ironscripter.us/powershell-back-to-school-scripting-challenge/
function Measure-Hypotenuse {
    Write-Output "Please give the 2 values of a right triangles legs."
    1..2 | % { sv $_ (read-host) }; "The hypotenuse of this right triangle is $("{0:N3}"-f[math]::sqrt($1/1*$1+$2/1*$2))"
}

function Get-CircleArea {
    Write-Output "Please give the value of the diameter."
    $diameter = read-host
    $radius = $diameter / 2
    $radiusSquared = $radius * $radius
    $pi = [Math]::PI
    $area = $pi * $radiusSquared
    Write-Output "The area of this circle is $area"
}

function Get-SphereVolume {
    Write-Output "Please give the value of the diameter."
    $diameter = read-host
    $radius = $diameter / 2
    $pi = [Math]::PI
    $radiusPow = [Math]::Pow($radius,3)
    $volume = (4/3) * ($pi * $radiusPow)
    Write-Output "The volume of this sphere is $volume"
}

function Get-CylinderVolume {
    Write-Output "Please give the value of the diameter."
    $diameter = Read-Host
    Write-Output "Please give the value of the height."
    $height = Read-Host
    $pi = [Math]::PI
    $radius = $diameter / 2
    $radiusSquared = $radius * $radius
    $volume = $pi * $radiusSquared * $height
    Write-Output " The volume of this cylinder is $volume"
}

function Get-Factorial {
    Write-Output "Please give a number"
    $int = read-host
    if ($int -eq 0) {
        return 1
    } else {
        $product = 1
        1..$int | ForEach-Object { $product *= $_ }
        return $product
    }
}