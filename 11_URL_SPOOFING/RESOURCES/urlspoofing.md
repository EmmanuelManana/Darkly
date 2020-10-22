```bash 

VULNERABILITY__

WHAT_IS_SPOOFING__ (https://www.malwarebytes.com/spoofing/)
=> Spoofing is when someone or
    something pretends to be something else in an attempt to gain our confidence, 
    get access to a system, steal data, or spread malware

=> This exploit takes advantage of /?page parameter that can be used to upload files, as EVIDENT in 10_DIRECTORY_TRAVESAL.

EXPLOIT__

    => navigate to '/', by the footer
    => click on the @BornToSec link
    => you will be redirected to: http://192.168.8.5/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c
    => inspect the bird image and scroll to the bottom of the page by the comments , you will find this comment

                    : You must cumming from : "https://www.nsa.gov/" to go to the next step
                    Let's use this browser : "ft_bornToSec". It will help you a lot.'

    => use curl like we did in (9_) to upload the payload -A 'ft_bornToSec' --referer "https://www.nsa.gov/" 
    (User-Agent and refere )
    curl -s -A 'ft_bornToSec' --referer "https://www.nsa.gov/" "http://192.168.8.6/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c"




```