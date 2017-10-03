package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"
	"os/exec"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	msg := ""

	for scanner.Scan() {
		msg += scanner.Text() + "\n"
	}

	if err := scanner.Err(); err != nil {
		fmt.Fprintln(os.Stderr, "reading standard input:", err)
		log.Fatal(err)
	}

	cmd := exec.Command("abook", "--add-email-quiet")
	stdin, err := cmd.StdinPipe()
	if err != nil {
		log.Fatal(err)
	}

	io.WriteString(stdin, msg)
	stdin.Close()

	out, err := cmd.CombinedOutput()
	if err != nil {
		log.Fatal(err)
	}

	fmt.Printf("%s\n", out)

	fmt.Print(msg)
}
