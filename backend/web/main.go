package main

import "net/http"

func main() {
	http.Handle("/", http.StripPrefix("/", http.FileServer(http.Dir(""))))

	http.ListenAndServe(":9120", nil)
}
