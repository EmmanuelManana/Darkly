```bash 

VULNERABILITY__
 => Unsecured form on select, options tags on   https:/{HOST}/index.php?page=survey

EXPLOIT__
=> inspect <form>
                <select>
                    <options>
=> change an option value and select the changed option, The Flag shows
03A944B434D5BAFF05F46C4BEDE5792551A2595574BCAFC9A6E25F67C382CCAA

ABUSE__
=> this can be used to vote unfairly.

PREVENTION__
server-side validation.

```