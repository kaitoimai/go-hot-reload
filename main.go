package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello, World")
	})

	fmt.Println("open http://localhost:5000")
	http.ListenAndServe(":5000", nil)
}
