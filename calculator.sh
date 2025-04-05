#!/bin/bash
echo "enter operation m, p, d, min"
while true; do
       read oper       
if [[ "$oper" == "m" || "$oper" == "p" || "$oper" == "d" || "$oper" == "min" ]]; then
	break
else
        echo "error, please try again"
        continue
fi
done
echo "enter first value"
read value1
echo "enter second value"
while true; do
	read value2
	if [[ "$oper" == "d" && "$value2" == "0" ]]; then
		echo "dont try devide at ZERO"
		continue
	else 
		break
	fi
done

mult () {
        echo $(($value1 * $value2))
        exit 0
}
plus () {
        echo $(($value1 + $value2))
        exit 0
}
div () {
        echo $(($value1 / $value2))
        exit 0
}
min () {
        echo $(($value1 - $value2))
        exit 0
}

solution () {
if [ "$oper" == m ]; then
        mult
elif [ "$oper" == p ]; then
        plus
elif [ "$oper" == d ]; then
        div
elif [ "$oper" == min ]; then
        min
else
        echo "error"
        exit 1
fi
}

truth () {
        if [[ "$value1" =~ ^[0-9]+$ && "$value2" =~ ^[0-9]+$ ]]; then
              solution
      else
        echo "error"
        exit 1
        fi
}

truth
