Usage: ${0##*/} [-d OUTPUT_DIR] [-e ERROR_DIR] FILE1 FILE2
Script takes two delimited files as input. 
The first file should be comma separated and the second file should be tab delimited. 

Both files should have a column that represents identifier for a row.
Both files should have the same basename
Use the rows ID value as a key to align the rows.

The output should:
Be in a directory called output and 
the filename should use the same basename as the two input files, 
The output file should be tab separated, and contain the "merge" of the valid files (one output file per pair)
Script should handle these error conditions at a minimum:
A rowID in file A does not appear in file B
A rowID in file B does not appear in file A
Input files that have errors in them should be: moved to an error directory and an error file should be created using the basename of the input files.
A message should be written to the error file indicating: which rowID failed for which file and why.

    -h          display this help and exit
    -d OUTPUT_DIR write the result to OUTPUT_DIR instead of current_directory/output.
    -e ERROR_DIR write the result to ERROR_DIR instead of current_directory/error.
EOF