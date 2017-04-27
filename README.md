Prints a multiplication table of prime numbers.
Tested with ruby 2.3.1

## Getting started

Run `bundle` to install gems

## Usage

`./print_primes.sh --count 10`

## Running tests

`bundle exec rake test`

## Algorithm

Primes are generated using an incremental implementation of the Sieve of Eratosthenes, described here https://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf
