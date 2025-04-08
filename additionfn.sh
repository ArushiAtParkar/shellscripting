
#!/bin/bash
set -x
add(){
	let sum=$1+$2
 echo "sum of $1 and $2 is $sum"
}

add $1 $2
