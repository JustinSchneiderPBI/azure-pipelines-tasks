[CmdletBinding()]
param()

# Arrange.
. $PSScriptRoot\..\..\..\..\Tests\lib\Initialize-Test.ps1
. $PSScriptRoot\..\..\ArgsParser.ps1

[System.Environment]::SetEnvironmentVariable('VAR1', '1 2')

$inputLine = '$env:VAR1'
$expected = @('1 2')

# Act.
$actual, $telemetry = Parse-FileArguments -InputArgs $inputLine

Assert-AreEqual -Expected $expected -Actual $actual
