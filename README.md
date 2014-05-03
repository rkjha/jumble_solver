# Jumble Solver

It's a ruby gem for solving jumble word puzzles.

It will return all the possible valid combination for the given word.

## Installation

Add this line to your application's Gemfile:

    gem 'jumble_solver'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jumble_solver

## Usage

    jw = JumbleSolver::Jumble.new
    jw.solve("rat")
    => ["art", "rat", "tar"]
    jw.solve("huohuo")
    => []

### Website
http://jumblesolver.me
