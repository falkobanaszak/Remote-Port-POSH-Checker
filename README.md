# Remote-Port-POSH-Checker
This is a very simple and easy Powershell script to check if a remote port is alive !

For testing a host (DNS or IP) simply fill in the IP address or the DNS name and the port you wish to test
![Filled out variables](https://github.com/falkobanaszak/Remote-Port-POSH-Checker/blob/master/filled_out_host.png)

After you filled out the variables the script immediately starts the "Test-NetConnection" cmdlet to verify your host.

![Testing the host](https://github.com/falkobanaszak/Remote-Port-POSH-Checker/blob/master/test_connection.png)

The script shows you if the connection with the given port was successful,

![Connection was successful](https://github.com/falkobanaszak/Remote-Port-POSH-Checker/blob/master/connectiong_successful.png)

or if it was not succesful

![Connection was not successful](https://github.com/falkobanaszak/Remote-Port-POSH-Checker/blob/master/connectiong_not_successful.png)