package main

//#cgo LDFLAGS: -L${SRCDIR}/../target/x86_64-apple-darwin/debug -lrust_greet
//#include <stdlib.h>
// char* greet(const char* name);
// void free_string(char* s);
import (
	"fmt"

	"github.com/timpratim/uniffi-bindgen-go-talk/greet"
)

func main() {
	fmt.Println(greet.Greet("World"))
}
