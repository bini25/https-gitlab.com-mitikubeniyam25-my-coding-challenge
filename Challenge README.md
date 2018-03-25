------------------------------- Challenge instructions -------------------------------

Once you complete this exercise please email the script that you wrote as well as the input files you used, example files are included below for illustrative purposes but your input files should contain more data, to test to hr@theta-llc.com with your name, a hyphen, the position you're interviewing for, a colon, and 'Coding Challenge Submission' for in  the subject line. (e.g. 'Emmanuel Iroanya - DevOps Engineer: Coding Challenge Submission') 

Please don't hesitate contact your interviewer if you have any questions or feedback about the test.  We're looking for accuracy and attention to detail, not how quickly you can get it done.

    1. Write a script which takes two delimited files as input.
        - The first file should be comma separated and the second file should be tab delimited. 
        - Both files should have a column that represents identifier for a row.
        - Both files should have the same basename
        - Use the row's ID value as a key to align the rows
        
    2. The output should:
        - Be in a directory called output and 
        - the filename should use the same basename as the two input files, 
        - The output file should be tab separated, and contain the "merge" of the valid files (one output file per pair)

    3. Your script should handle these error conditions at a minimum:
        - A rowID n file A does not appear in file B
        - A rowID in file B does not appear in file A

    4. Input files that have errors in them should be:
        - moved to an error directory and 
        - an error file should be created using the basename of the input files
        - A message should be written to the error file indicating:
            a. which rowID failed for 
            b. which file and 
            c. why.

Example input files:

File A (comma separated):

1234, Jan 13 2014 13:55:42 GMT

1235, Jan 13 2014 18:55:42 GMT

File B (tab separated):

1234	   "This is the first content line"

1235	   "This is another content line"