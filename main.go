package main

import (
	"fmt"

	"github.com/timpratim/uniffi-bindgen-go-talk/greet"
)

func main() {
	fmt.Println(greet.Greet("World"))
}
