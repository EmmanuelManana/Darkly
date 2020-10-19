
VULNERABILITTY__
   => Vulnerable SQL request on HOST, http://192.168.8.6/


EXPLOIT___

=> navigate to http://192.168.8.6/
    => Inspect the page
    => find the and copy the cookie value.
    => use use https://www.md5online.org/md5-decrypt.html to decrypt it.
    => then use https://www.md5online.org/md5-encrypt.html to encrypt the string true = (b326b5062b2f0e69046810717534cb09).
    => overide the false cookie by the true cookie
    => refresh the page, you are now admin.

    ```bash 
        68934a3e9455fa72420237eb05902327 ->  false  , b326b5062b2f0e69046810717534cb09 -> true

        Good job! Flag : df2eb4ba34ed059a1e3e89ff4dfc13445f104a1a52295214def1c4fb1693a5c3
    ```

ABUSE__
    => Can be used to gain admin privaleges.

PREVENT__

Session cookie so you can't modify them or just settings the right via a database -> account.