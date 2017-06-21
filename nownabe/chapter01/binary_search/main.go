package main

import "fmt"

func search(arr []int, item, begin, end int) (int, bool) {
	if begin > end {
		return 0, false
	}

	mid := (begin + end) / 2
	if item == arr[mid] {
		return mid, true
	} else if item < arr[mid] {
		return search(arr, item, begin, mid - 1)
	} else {
		return search(arr, item, mid + 1, end)
	}
}

func binarySearch(arr []int, item int) (int, bool) {
	return search(arr, item, 0, len(arr) - 1)
}

func main() {
	arr := []int{0, 2, 4, 6, 8, 10, 12, 14, 16, 18}

	for i := -1; i < 20; i++ {
		idx, ok := binarySearch(arr, i)
		if ok {
			fmt.Println(i, "was found at", idx, ".")
		} else {
			fmt.Println(i, "was not found.")
		}
	}
}
