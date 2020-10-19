```bash 
VULNERABILITY__
    => A robot.txt is poorely used to hide a file, the web admin doesnt want end user to see files
        such as  [ User-agent: *
                    Disallow: /whatever
                    Disallow: /.hidden ]. This promps the attacker to check the Disallowed "/whatever" folder
                    admin doesnt want the end user to see.

 
ABOUT_ROBOTS__

Web Robots (also known as Web Wanderers, Crawlers, or Spiders),
 are programs that traverse the Web automatically. 
 Search engines such as Google use them to index the web content, spammers 
use them to scan for email addresses, and they have many other uses.

ABOUT_ROBOTS.txt__ (https://www.robotstxt.org/robotstxt.html)

About /robots.txt
In a nutshell
Web site owners use the /robots.txt file to give instructions about their site to web robots; this is called The Robots Exclusion Protocol.

It works likes this: a robot wants to vists a Web site URL, say http://www.example.com/welcome.html. Before it does so, it firsts checks for http://www.example.com/robots.txt, and finds:

User-agent: *
Disallow: /
The "User-agent: *" means this section applies to all robots. The "Disallow: /" tells the robot that it should not visit any pages on the site.

There are two important considerations when using /robots.txt:

robots can ignore your /robots.txt. Especially malware robots that scan the web for security vulnerabilities, and email address harvesters used by spammers will pay no attention.
the /robots.txt file is a publicly available file. Anyone can see what sections of your server you don't want robots to use.
So don't try to use /robots.txt to hide information.

See also:

Can I block just bad robots?
Why did this robot ignore my /robots.txt?
What are the security implications of /robots.txt?
The details
The /robots.txt is a de-facto standard, and is not owned by any standards body. There are two historical descriptions:

the original 1994 A Standard for Robot Exclusion document.
a 1997 Internet Draft specification A Method for Web Robots Control
In addition there are external resources:

HTML 4.01 specification, Appendix B.4.1
Wikipedia - Robots Exclusion Standard
The /robots.txt standard is not actively developed. See What about further development of /robots.txt? for more discussion.

The rest of this page gives an overview of how to use /robots.txt on your server, with some simple recipes. To learn more see also the


EXPLOIT__

    =>  navigate to http://192.168.8.6/robots.txt  (see whats hidden)
    =>  then https://192.168.8.6/whatever/ 
    =>  after 192.168.8.6/whatever/htpasswd  to download the "htpasswd" file.
    => "htpasswd" contains 'root:8621ffdbc5698829397d97767ac13db3' 

    =>   8621ffdbc5698829397d97767ac13db3 -> MD5 decrypt = dragon .

    => 'root:8621ffdbc5698829397d97767ac13db3'  becomes 'root:dragon'

    finally__
        => navigate to https://192.168.8.6/admin , use 'root: dragon' to login in.
        then youve your flag. 
        The flag is : d19b4823e0d5600ceed56d5e896ef328d7a2b9e7ac7e80f4fcdb9b10bcb3e7ff 

PREVENTION__
    => DO not use robot.txt to hide files
    => usen Disallow: / , and hide whatever private info  here /.
 ```