# Oak

An alternative to the [ray app](https://myray.app/), written in [Crystal](https://crystal-lang.org/), that you use in your browser.

## Installation

```
git clone https://github.com/jonathandey/oak
export KEMAL_ENV=production
crystal build -o ./oak --release src/oak.cr
```

## Usage

Run the oak server:
```
./oak
```

Then navigate to http://127.0.0.1:23517/console.html

Finally, start sending ray data using the PHP `ray()` function

## Development

```
git clone https://github.com/jonathandey/oak
crystal run src/oak.cr
```

## Contributing

1. Fork it (<https://github.com/jonathandey/oak>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Jonathan Dey](https://github.com/jonathandey) - creator and maintainer
