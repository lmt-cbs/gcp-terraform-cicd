// luis merino : Basic unit testing for m main.go

package main

import (
	"net/http"
	"net/http/httptest"
	"testing"
)

func TestGETIndex(t *testing.T) {
	t.Run("returns index", func(t *testing.T) {
		request, _ := http.NewRequest(http.MethodGet, "/", nil)
		response := httptest.NewRecorder()

		IndexServer(response, request)

		got := response.Body.String()
		want := "Automatiza todo lo que puedas!"

		if got != want {
			t.Errorf("got '%s', want '%s'", got, want)
		}
	})
}
