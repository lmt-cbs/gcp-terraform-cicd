// luis merino : Simple go http server that listes on port 8080 ona single endpoint
//               to deploy as a docker container to run it with cloud run

package main

import (
	"fmt"
	"log"
	"net/http"
)

func IndexServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Automatiza todo lo que puedas!")
}

func main() {
	handler := http.HandlerFunc(IndexServer)
	log.Fatal(http.ListenAndServe(":8080", handler))
}
