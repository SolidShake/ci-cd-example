package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		_, _ = w.Write([]byte("Hello World"))
	})

	fmt.Println("server started at port 80")
	if err := http.ListenAndServe(":80", nil); err != nil {
		panic(err)
	}
}
