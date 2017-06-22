package main

import "testing"

var (
	arrOdd = []int{1, 2, 3, 5, 8, 13, 21, 34, 55}
	arrEven = []int{1, 2, 3, 5, 8, 13, 21, 34, 55, 89}
)

func check(t *testing.T, expect, actual int, ok bool) {
	if !ok {
		t.Error(actual, "was not found.")
	}
	if expect != actual {
		t.Error("Found index is wrong. Expected is", expect, "but actual is", actual)
	}
}

func Test_Found(t *testing.T) {
	// first
	res, ok := binarySearch(arrOdd, 1)
	check(t, 0, res, ok)

	res, ok = binarySearch(arrEven, 1)
	check(t, 0, res, ok)

	// first - mid
	res, ok = binarySearch(arrOdd, 3)
	check(t, 2, res, ok)

	res, ok = binarySearch(arrEven, 3)
	check(t, 2, res, ok)

	// mid
	res, ok = binarySearch(arrOdd, 8)
	check(t, 4, res, ok)

	res, ok = binarySearch(arrEven, 8)
	check(t, 4, res, ok)

	res, ok = binarySearch(arrEven, 13)
	check(t, 5, res, ok)

	// mid - last
	res, ok = binarySearch(arrOdd, 21)
	check(t, 6, res, ok)

	res, ok = binarySearch(arrEven, 34)
	check(t, 7, res, ok)

	// last
	res, ok = binarySearch(arrOdd, 55)
	check(t, 8, res, ok)

	res, ok = binarySearch(arrEven, 89)
	check(t, 9, res, ok)
}

func Test_NotFound(t *testing.T) {
	_, ok := binarySearch(arrOdd, -1)
	if ok {
		t.Error("Found ghost item")
	}

	_, ok = binarySearch(arrOdd, 10)
	if ok {
		t.Error("Found ghost item")
	}

	_, ok = binarySearch(arrOdd, 56)
	if ok {
		t.Error("Found ghost item")
	}
}
