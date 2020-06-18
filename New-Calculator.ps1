# inputs
# Methods: if, switch, ifelse, ither...
# Obfuscate, Make things more complicated, hex maybe?
# Invoke-websession which ask.com's "what is x plus y" then scrapes
# Something to foreach the operators

$outputfile = "./createdfile.ps1"

$ifheader = "param (
    [int]`$inputNumberOne`,
    [int]`$inputNumberTwo`,
    [string]`$symbol
)"

[int]$digits = 20
[int]$i = 1
[int]$j = 1

$ifheader | Out-File -path $outputfile 

while ($i -le $digits) {
    while ($j -le $digits) {
        add-content "if (`$inputNumberOne -eq $i -and `$inputNumberTwo -eq $j -and `$symbol -eq `"+`") { Write-Output $($i + $j) }" -path $outputfile 
        add-content "if (`$inputNumberOne -eq $i -and `$inputNumberTwo -eq $j -and `$symbol -eq `"*`") { Write-Output $($i * $j) }" -path $outputfile 
        add-content "if (`$inputNumberOne -eq $i -and `$inputNumberTwo -eq $j -and `$symbol -eq `"-`") { Write-Output $($i - $j) }" -path $outputfile 
        $j++
    }
    $i++
    $j = 1
}

