------------------------------- Challenge instructions -------------------------------

Once you complete this exercise, please email the script that you wrote as well as the test input files you used to hr@theta-llc.com with your name, a hyphen, the position you're interviewing for, a colon, and 'Interview Challenge Submission' for in  the subject line (e.g. 'John Public - Data Analyst: Interview Challenge Submission'). Example files are included below for illustrative purposes, but your input files should contain more data. 

Please don't hesitate contact your interviewer if you have any questions or feedback about the test.  We're looking for accuracy and attention to detail, not how quickly you can get it done.

Please use whichever language you're comfortable with, but for a DBA, Data Scientist, or Data Analyst position, we are expecting: R, Java, SQL, Scala, Python, or even Perl and Bash if you can work it out. As long as you can provide instructions and we can execute it and see the results, whatever you choose is fine with us.

    1. Write a script which takes two delimited files as input.
        - The first file should be comma separated and the second file should be tab delimited. 
        - Both files should have a column that represents identifier for a row.
        - Both files should have the same basename.
        - Use the row's ID value as a key to align the rows.
        
    2. The output file should:
        - Be in a directory called output.
        - Use the same basename as the two input files.
        - Be tab separated and contain the "merge" of the valid files (one output file per pair).

    3. Your script should handle these error conditions at a minimum:
        - A rowID in file A does not appear in file B.
        - A rowID in file B does not appear in file A.

    4. Input files that have errors in them should be handled as follows:
        - Move the file to an error directory.
        - Create an error file using the basename of the input files
        - Write a message to the error file indicating:
            a. which rowID failed
            b. which file contained the failed rowID 
            c. the error condition for which it failed.

Example of inputs in a file:

File A (comma separated):

1234, Jan 13 2014 13:55:42 GMT

1235, Jan 13 2014 18:55:42 GMT

File B (tab separated):

1234    "This is the first content line"

1235    "This is another content line"