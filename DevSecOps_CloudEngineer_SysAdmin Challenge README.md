------------------------------- Challenge instructions -------------------------------

Once you complete this exercise, please email the submission to jobs@theta-llc.com with your name, a hyphen, the position you're interviewing for, a colon, and 'Interview Challenge Submission' for in the subject line. (e.g. 'John Public - DevSecOps Engineer: Interview Challenge Submission') 

Please don't hesitate to contact your interviewer if you have any questions or feedback about the test. We're looking for cleverness and attention to detail, not how quickly you can get it done.

Please use whichever language you're comfortable with, but typically for a DevSecOps/CloudEngineer/SysAdmin position, we are expecting: Bash, Perl, Python, PowerShell, or even C (if you're talented enough not to make mistakes :P), but as long as we can execute it and see the results, it's fine with us.

**For this homework challenge, you have to complete both challenges (#1 and #2); #3 is extra credit and not mandatory.**



> **Challenge 1. The goal of this challenge is for you to write programs/scripts that do the following:** 
```
  - Creates a webserver (Apache, Nginx, or IIS) in AWS, Azure, or Google Cloud Engine (if that's your thing)
  - A separate script that periodically checks to make sure that your webserver is up and running.
```


> **Challenge 2. Submit a copy of your .profile, .bashrc, .bash_profile, .bash_logout; for Windows users your profile.ps1 will do:** 
```
  - This submission may come from a personal environment.
  - This submission may come from a work environment (use the best judgment).
```


> **Challenge 3. Write a program/script that does the following: *Extra Credit (we recommend doing it, but seriously not mandatory, not doing it doesn't hurt you at all)***

```
 - Write a program/script that writes a program/script that writes itself.
 - Write a simple program/script that can be executed in more than one language with no changes.
```

**Prerequisites:**

- You will need an account in your virtual cloud of choice. Create one if you don't own one already. You can use free-tier resources for this test!
- The webserver has to be publicly accessible.
- Your web server should serve up a /version.txt file, containing only static text representing the version number of your webserver build, for example: Server version: Apache/2.4.6 (CentOS).

**Mandatory Work:**

- Fork this repository
- Provide instructions on how to create the server with your script
- Provide the script that can be run periodically (and externally) to check if the server is up and serving the expected version number. Use your scripting language of choice.
- Alter the README to contain the steps required to:

```
1. Create the server.
2. Run the checker script you created.
```

- Provide us credentials to log in to the virtual cloud account. If you have other resources in it, make sure we can only access what is related to this test.
- Give our account: theta_llc access to your fork, and send us an email when you’re done using the instructions above. Feel free to ask questions as needed!

**FAQS:**

**Q:** What will you be grading me on?

**A:** Scripting skills, elegance, understanding of the technologies you use, security, documentation.

**Q:** Will I have a chance to explain my choices?

**A:** Feel free to comment your code, or put explanations in a pull request within the repo. If we proceed to a phone interview, we’ll be asking questions about why you made the choices you made.

**Q:** Why doesn't the test include XY and Z?

**A:** Dope question! PLEASE free to tell us how to make the test better. Or, you know, fork it and improve it!