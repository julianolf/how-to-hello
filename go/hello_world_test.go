package main

import (
	"bytes"
	"io"
	"os"
	"testing"
)

func TestHelloWorld(t *testing.T) {
	r, w, err := os.Pipe()
	if err != nil {
		t.Fatal(err)
	}

	stdout := os.Stdout
	os.Stdout = w
	defer func() {
		os.Stdout = stdout
	}()

	main()

	w.Close()
	var buf bytes.Buffer
	io.Copy(&buf, r)

	expected := "Hello, World!\n"
	got := buf.String()
	if expected != got {
		t.Errorf("Expected: %q > Got: %q", expected, got)
	}
}
