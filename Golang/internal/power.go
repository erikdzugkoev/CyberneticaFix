package internal

func Pow(a, n int) int {
	if n == 1 {
		return int(a)
	} else {
		return (a * Pow(a, n-1))
	}
}

// i := 1
// 	for i < n {
// 		i *= a
// 		q := int32(i)
// 		return q
