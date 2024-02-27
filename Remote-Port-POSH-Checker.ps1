<#
.SYNOPSIS
    Remote-Port-POSH-Checker.ps1 - Check Remote Ports easily 
.DESCRIPTION
    This is a very simple and easy Powershell script to check if a remote port is alive !
.OUTPUTS
    Results are printed to the console.
.NOTES
    Author        Falko Banaszak, https://virtualhome.blog, Twitter: @Falko_Banaszak
    Change Log    V1.00, 21/04/2020 - Initial version: Check Remote Ports easily

.LICENSE
    MIT License
    Copyright (c) 2019 Falko Banaszak
    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:
    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
#>

# Variable for the host and the port to test
$HostToTest = Read-Host "Enter the host you want to check (DNS with FQDN or IP address)"
$PortToTest = Read-Host "Enter the TCP Port you want to check"
# Writing output on what gets tested
Write-Host "Ok, checking $HostToTest with your given port $PortToTest"
# Actually testing the host with the given port
$Test = Test-NetConnection -ComputerName $HostToTest -Port $PortToTest
# Check if the test succeeded and throw outputs
If ($Test.TcpTestSucceeded -eq $true)
    {Write-Host Test of host $HostToTest with Port $PortToTest succeeded ! -ForegroundColor Green}
Else
    {Write-Host Test of host $HostToTest with Port $PortToTest did not succeed ! -ForegroundColor Red}
