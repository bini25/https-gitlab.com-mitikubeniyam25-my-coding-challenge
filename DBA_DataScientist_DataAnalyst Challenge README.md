------------------------------- Challenge instructions -------------------------------

Once you complete this exercise, please email the script that you wrote as well as the test input files you used to jobs@theta-llc.com with your name, a hyphen, the position you're interviewing for, a colon, and 'Interview Challenge Submission' for in the subject line (e.g. 'John Public - Data Analyst: Interview Challenge Submission'). Example files are included below for illustrative purposes, but your input files should contain more data. 

Please don't hesitate to contact your interviewer if you have any questions or feedback about the test. We're looking for accuracy and attention to detail, not how quickly you can get it done.

Please use whichever language you're comfortable with, but for a DBA, Data Scientist, ETL Developer, or Data Analyst position, we are expecting: R, Java, SQL, Scala, Python, or even Perl and Bash (awk/sed) if you can work it out. As long as you can provide instructions and we can execute it and see the results, whatever you choose is fine with us.

> **The Challenge!** 

**1. Write a script/program which takes two delimited files as input.**
```
- The first file should be comma-separated, and the second file should be tab-delimited. 
- Both files should have a column that represents the identifier for a row.
- Both files should have the same basename.
- Use the row's ID value as a key to align the rows.
```

**2. The output file should:**
```
- Be in a directory called output.
- Use the same basename as the two input files.
- Be tab-separated and contain the "merge" of the valid files (one output file per pair).
```

**3. Your script/program should handle these error conditions at a minimum:**
```
- A rowID in file A does not appear in file B.
- A rowID in file B does not appear in file A.
```

**4. Input files that have errors in them should be handled as follows:**
```
- Move the file to an error directory.
- Create an error file using the basename of the input files
- Write a message to the error file indicating:
      a. which rowID failed
      b. which file contained the failed rowID 
      c. the error condition for which it failed.
```

Example of inputs in a file:

*File A (comma separated):*
```
1234, Jan 13 2014 13:55:42 GMT
1235, Jan 13 2014 18:55:42 GMT
```

*File B (tab separated):*

```
1234 "This is the first content line."
1235 "This is another content line."
```

**Mandatory Work:**

- Fork this repository
- Provide instructions on how to execute your solution
- Provide the script/program that solves your solution. Use your scripting language of choice.
- Alter the README to contain the steps required to:

```
1. Run the script/program you created.
```

- Give our account: theta_llc access to your fork, and send us an email when you’re done using the instructions above. Feel free to ask questions as needed!

**FAQS:**

**Q:** What will you be grading me on?

**A:** Scripting/Coding skills, elegance, understanding of the technologies you use, security, documentation.


**Q:** Will I have a chance to explain my choices?

**A:** Feel free to comment your code, or put explanations in a pull request within the repo. If we proceed to a phone interview, we’ll be asking questions about why you made the choices you made.

**Q:** Why doesn't the test include XY and Z?

**A:** Dope question! PLEASE free to tell us how to make the test better. Or, you know, fork it and improve it! 