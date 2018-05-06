: '
#========================================================================================#
references:

https://stackoverflow.com/questions/43158140/way-to-create-multiline-comments-in
-bash?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

#========================================================================================#
'
#!/bin/bash
dir="/$USER/Desktop/";
cd "$dir";

obj="sedcsv.csv";
cat "$obj";

: '
#========================================================================================#

prints:

id,name,description,participants
1,"description test 1","Frank,Tom,Dennis"
2,"description test 2","Julia,Frank,Tim"
3,"description test 3","Dennis,Jamie,Jim"
4,"description test 4","Tom,Tim,Frank,Julia"
5,"description test 5","Mike,Tom,Jamie"
6,"description test 6","John,Mike,Frank"
7,"description test 7","Julia,Ann,Dennis,Tom"
8,"description test 8","Frank,Jamie"
9,"description test 9","Ann,Tim"

#========================================================================================#
'


#						*note* 
#	in the eyes of sed, the array of lines from cat $obj
# 	is not zero based, this command is removing the 
#   second, third, and fourth 
#   lines from iostream
cat "$obj" | sed -r '2,4d';
: '
#========================================================================================#

prints:

id,name,description,participants
4,"description test 4","Tom,Tim,Frank,Julia"
5,"description test 5","Mike,Tom,Jamie"
6,"description test 6","John,Mike,Frank"
7,"description test 7","Julia,Ann,Dennis,Tom"
8,"description test 8","Frank,Jamie"
9,"description test 9","Ann,Tim"

#========================================================================================#
'












#						*note* 
#	in the eyes of sed, the array of lines from cat $obj
# 	is not zero based, this command is telling sed to only
#   print the second, third, and fourth lines in the iostream

cat "$obj" | sed -n -r '2,4p';
: '
#========================================================================================#

prints:

1,"description test 1","Frank,Tom,Dennis"
2,"description test 2","Julia,Frank,Tim"
3,"description test 3","Dennis,Jamie,Jim"


#========================================================================================#
'












#						*note* 
#	in the eyes of sed, the array of lines from cat $obj
# 	is not zero based, this command is telling sed to only 
#   remove all lines that contain Frank from the iostream.

cat "$obj" | sed -r '/Frank/d';
: '
#========================================================================================#

prints:

id,name,description,participants
3,"description test 3","Dennis,Jamie,Jim"
5,"description test 5","Mike,Tom,Jamie"
7,"description test 7","Julia,Ann,Dennis,Tom"
9,"description test 9","Ann,Tim"

#========================================================================================#
'
