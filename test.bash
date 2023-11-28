#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Fujioka Kimiyasu kimimi.nyan@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

ng (){
	echo NG at Line $1
	res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = "標準入力の合計値：15.0
標準入力の乗算値：120.0
標準入力の合計値を１００から引いた値：85.0
標準入力で１００を割っていった最終値：0.8333333333333334
上四つの合計値：220.83333333333334" ] || ng ${LINENO}

out=$(seq 4 | ./plus)
[ "${out}" = "標準入力の合計値：10.0
標準入力の乗算値：24.0
標準入力の合計値を１００から引いた値：90.0
標準入力で１００を割っていった最終値：4.166666666666667
上四つの合計値：128.16666666666666" ] || ng ${LINENO}

out=$(echo A | ./plus)
[ "${out}" = "入力された文字列の各Unicodeの合計:65" ] || ng ${LINENO}

out=$(echo Hello World | ./plus)
[ "${out}" = "入力された文字列の各Unicodeの合計:1052" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
