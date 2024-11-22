import gleam/int
import gleam/string

type Lexer {
  Lexer(input: String, position: Int, read_position: Int, ch: String)
}

fn read_char(lexer: Lexer) -> Lexer {
  case lexer.read_position >= string.length(lexer.input) {
    True ->
      Lexer(
        ch: int.to_string(0),
        input: lexer.input,
        position: lexer.position,
        read_position: lexer.read_position,
      )
    False ->
      Lexer(
        ch: string.slice(lexer.input, lexer.read_position, 1),
        input: lexer.input,
        position: lexer.read_position,
        read_position: lexer.read_position + 1,
      )
  }
}

fn new(input: String) -> Lexer {
  let l = Lexer(input, 0, 0, "0")
  let l = read_char(l)

  l
}
