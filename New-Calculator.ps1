# User "configuration"
[CmdletBinding()]
param (
    $outputfile = "./SuperUseful-Calculator.ps1",
    [int]$digits = 20
)

$header = "param (
    [int]`$inputNumberOne`,
    [int]`$inputNumberTwo`,
    [string]`$symbol
)"

[int]$i = 1
[int]$j = 1

$header | Out-File -Path $outputfile 

while ($i -le $digits) {
    while ($j -le $digits) {
        Add-Content "if (`$inputNumberOne -eq $i -and `$inputNumberTwo -eq $j -and `$symbol -eq `"+`") { Write-Output $($i + $j) }" -Path $outputfile 
        Add-Content "if (`$inputNumberOne -eq $i -and `$inputNumberTwo -eq $j -and `$symbol -eq `"*`") { Write-Output $($i * $j) }" -Path $outputfile 
        Add-Content "if (`$inputNumberOne -eq $i -and `$inputNumberTwo -eq $j -and `$symbol -eq `"-`") { Write-Output $($i - $j) }" -Path $outputfile 
        $j++
    }
    $i++
    $j = 1
}
