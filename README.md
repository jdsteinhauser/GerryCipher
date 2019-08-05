# GerryCipher

GerryCipher, an encoder based on the [Ugly Gerry typeface](https://twitter.com/UglyGerry/status/1153661354462588929)

Upper and lower case letters are the two letter US state abbreviation (in upper and lower case, respectively)
and their two digit districts. If a letter was comprised of multiple districts, the one on the left/top corresponds to the code
for the uppercase letter and the one on the right/bottom is the code for the lowercase letter. Since 'M' and 'W' are reflections
of each other, the codes for 'W' (80YN) and 'w' (80yn) are the reverse of 'M' (NY08) and 'm' (ny08).

## Installation

Gerry Cipher can be installed by adding `gerry_cipher` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:gerry_cipher, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/gerry_cipher](https://hexdocs.pm/gerry_cipher).

