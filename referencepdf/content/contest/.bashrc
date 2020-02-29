run() {
	g++ -std=c++11 $1.cpp -o $1 &&
		echo "Compiled!" &&
		if [ $# -eq 2 ]
		then
			./$1 < $1$2.in
		else
			./$1
		fi
}
