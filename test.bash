#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Siromi463 kimimi.nyan@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

ng (){
	echo NG at Line $1
	res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = "15.0
120.0
85.0
0.8333333333333334
220.83333333333334" ]	|| ng ${LINENO}

out=$(seq 4 | ./plus)
[ "${out}" = "10.0
24.0
90.0
4.166666666666667
128.16666666666666" ]	|| ng ${LINENO}

out=$(echo A | ./plus)
[ "${out}" = 65 ]	|| ng ${LINENO}

out=$(echo Hello World | ./plus)
[ "${out}" = 1052 ]	|| ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
