#!/usr/bin/expect

spawn ./interactive.sh
expect "Wprowadź liczbę:"
send "1\n"
expect "Wprowadź nazwę:"
send "Witaj\n"
expect eof