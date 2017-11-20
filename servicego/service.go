package main

import (
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

func main() {
	router := mux.NewRouter()
	router.HandleFunc("/service", SimpleService).Methods("GET")
	log.Fatal(http.ListenAndServe(":8001", router))
}

func SimpleService(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Hello world from Go!"))
}
