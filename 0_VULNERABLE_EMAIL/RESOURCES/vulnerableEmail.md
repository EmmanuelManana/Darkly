 ```bash 
 VULNERABILTY__
    => found a hidden HTML tag
    => There is no Client-Site Validation for the form.
    => The email input field has a default value.
    => Email input field is not of  attribute type email, i.e) email must be of  type="email".
    


EXPLOIT_?
    => Navigate to https://"HOST"/?page=recover
    => inspect the form element, find the email input-tag, then modify the emails length with respect
        the required length, then submit.
        this should return a flag like this
         
            : "1d4855f7337c0c14b6f44946872c4eb33853f40b2d54393fbe94f49f1e19bbb0" ``
    => or set name='admin' value='true'.


SOLUTION__
    => Implement client-site, validation and server-site(optional) validation.
    =>  check if username with a particular cookie ID is an admin or not.
    
    ```
