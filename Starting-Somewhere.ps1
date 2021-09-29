$files = Get-ChildItem -Path C:\Users\arnov\Repos -Recurse -File
$files | Measure-Object -Property length -Sum -Average | Select-Object @{n = 'ComputerName'; e = {$env:COMPUTERNAME}}, Count, Sum, Average, @{n = 'Date'; e = {Get-Date}} # This code is from one of the comments on the challenge.

# When writing this i misunderstood the challenge and thought we had to log all the files as well.
# This is what i originally came up with.
# $fileCount = ($files | measure).Count
# $totalSize = ( $files | measure -Sum Length).Sum
# $averageSize = $totalSize / $fileCount
# Write-Output $files
# Write-Output "Average file size: $averageSize bytes"
# Write-Output "Total file size: $totalSize"
# hostname
# Get-Date -Format "MM/dd/yyyy HH:mm"
