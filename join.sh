#/bin/bash
# @(#) File: join.sh
# ---------------------------------------------------------------------------
# Modication History:
# Date       Name                       Description
# 06/14/2015  Emmanuel Iroanya          Script takes two delimited files as input. The first file should be comma separated and the second file should be tab delimited. concats in a folder
# ---------------------------------------------------------------------------

# Usage info
show_help() {
cat << EOF
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
}

check_basenames() {
	#get the files basenames
	name1=${1##*/}
	name1=${name1%.*}

	name2=${2##*/}
	name2=${name2%.*}

	basename=$3

	#if they are not equal - raise the error and exit
	if [ $name1 = $name2 ]; then
		basename=$name1
	else
		echo "Files should have the similar basename!" >&2 
		exit 1
	fi
}

check_errors() {
	file1=$1
	file2=$2
	output_file=$3
	error_file=$4
	error_dir=$5

	has_errors=0
	#get lines which exist in first file, and not exist in second file
	error=`comm -3 $output_file <(join -a 1 <(tr ',' '\t' <$file1 | sort) <(sort $file2)) | sed -e 's/^[ \t]*//' -e '/^$/d'`
	if [ -n "$error" ]; then
		echo "[ERROR] $file1 has the following strings, which not exist in $file2:" | tee -a $error_file
		echo $error | tee -a $error_file
		has_errors=1
	fi

	#get lines which exist in second file, and not exist in first file
	error=`comm -3 $output_file <(join -a 2 <(tr ',' '\t' <$file1 | sort) <(sort $file2)) | sed -e 's/^[ \t]*//' -e '/^$/d'`
	if [ -n "$error" ]; then
		echo "[ERROR] $file2 has the following strings, which not exist in $file1:" | tee -a $error_file
		echo $error | tee -a $error_file
		has_errors=1
	fi

	#if we have the error - copy files to the error directory and remove inconsistent output file, else - report about success
	if [ $has_errors -eq 1 ]; then
		cp $file1 $file2 $error_dir
		rm $output_file
	else
		echo 'Success! Finished without errors!'
		rm $error_file
	fi

}

# Initialize our own variables:
output_dir="./output"
error_dir="./error"

OPTIND=1 # Reset is necessary if getopts was used previously in the script.  It is a good idea to make this local in a function.
while getopts "hd:e:" opt; do
    case "$opt" in
        h)
            show_help
            exit 0
            ;;
        d)  output_dir=$OPTARG
            ;;
        e)  error_dir=$OPTARG
            ;;
        '?')
            show_help >&2
            exit 1
            ;;
    esac
done
shift "$((OPTIND-1))" # Shift off the options and optional --.

#show help if script launched without arguments
if [ -z $1 ]; then
	show_help >&2
	exit 1
fi

file1=$1
file2=$2

check_basenames $file1 $file2 $basename

#create output dir
mkdir -p $output_dir
output_file=$output_dir/$basename

#create error dir and error file
mkdir -p $error_dir
error_file=$error_dir/$basename
echo "" > $error_file

#merge the files
join <(tr ',' '\t' <$file1 | sort) <(sort $file2) | sed -e 's/^[ \t]*//' -e '/^$/d' > $output_file

#check file for errors
check_errors $file1 $file2 $output_file $error_file $error_dir
