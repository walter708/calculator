echo "command: python evaluate.py '(add 1 1)'"
python calc.py "(add 1 1)" &&
# sleep 1 
echo "correct solution 2"
echo -e "\t"
# 2

echo "command: python evaluate.py '(add 0 (add 3 4))'"
python calc.py "(add 0 (add 3 4))" &&
# 7
# sleep 1 
echo  "correct solution 7"

echo -e "\n"

echo "command: python evaluate.py ''"
python calc.py ""
# sleep 1 
echo "correct Output Exception"

echo -e "\t"

echo "command: python evaluate.py '(add 3 (add (add 3 3) 3))'"
python calc.py "(add 3 (add (add 3 3) 3))" &&
# sleep 1 
echo "correct solution 12"

echo -e "\n"

echo "command: python evaluate.py '(multiply 1 1)'"
python calc.py "(multiply 1 1)"
# sleep 1 
echo "correct solution 1"

echo -e "\t"
echo "command: python evaluate.py '(multiply 2 1)'"
python calc.py "(multiply 2 1)"
# sleep 1 
echo "correct solution 2"
echo -e "\n"

echo "command: python evaluate.py '(multiply 0 (multiply 3 4))'"
python calc.py "(multiply 0 (multiply 3 4))" &&
# sleep 1 
echo "correct solution 0"
echo  -e "\t"
echo "command: python evaluate.py '(multiply 2 (multiply 3 4))'"
python calc.py "(multiply 2 (multiply 3 4))" &&
# sleep 1 
echo "correct solution 24"
echo -e "\n"
echo "command: python evaluate.py '(multiply 3 (multiply (multiply 3 3) 3))'"
python calc.py "(multiply 3 (multiply (multiply 3 3) 3))" &&
# sleep 1 
echo "correct solution 81"
echo -e "\t"
echo "command: python evaluate.py '(add 1 (multiply 2 3))'"
python calc.py "(add 1 (multiply 2 3))" &&
# sleep 1 
echo "correct solution 7"
echo -e "\n"
echo "command: python evaluate.py '(multiply 2 (add (multiply 2 3) 8))'"
python calc.py "(multiply 2 (add (multiply 2 3) 8))" 
# sleep 1 
echo "correct solution 28"
echo -e "\t"
echo "command: python evaluate.py '123' "
python calc.py "123" 
# sleep 1 
echo "correct solution 123"
echo -e "\n"

echo "command: python evaluate.py '(add 1 e)' "
python calc.py "(add 1 e)" 
# sleep 1 
echo "correct solution Exception"
echo -e "\t"

echo "command: python evaluate.py '45'"
python calc.py "45" 
# sleep 1 
echo "correct solution 45"
echo -e "\n"

echo "command: python evaluate.py '(add 1 (multiply (add 2 1) 3))'"
python calc.py "(add 1 (multiply (add 2 1) 3))" 
# sleep 1 
echo "correct solution 10"
echo -e "\t"

echo "command: python evaluate.py '(add 1 2 3 4 (multiply 2 3 5))'"
python calc.py "(add 1 2 3 4 (multiply 2 3 5))" 
# sleep 1 
echo "correct solution 40"
echo -e "\n"


echo "command: python evaluate.py '(add (add 1 (multiply 3 4) ) (add (add 1 (multiply 3 4) ) 1 ) )"
python calc.py "(add   (add 1    (multiply 3 4  )     )   (add   (add 1   (multiply 3 4)   )  1  )                 )" 
# sleep 1 
echo "correct solution 27"
echo -e "\n"


echo "command: python evaluate.py '(add (add 1 (multiply 3 4) ) (add (add 1 (multiply 3 4) ) 1 ) )"
python calc.py "(add   (add 1    (multiply 3   4  )     )   (add   (add 1   (multiply 53 4)   )  1  )                 )  " 
# sleep 1 
echo "correct solution 227"
echo -e "\n"

echo "command: python evaluate.py '                                '"
python calc.py "                     " 
# sleep 1 
echo "correct solution Exception"
echo -e "\n"


