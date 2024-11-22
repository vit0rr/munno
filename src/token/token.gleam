pub type TokenType =
  String

pub type Token {
  Token(type_: TokenType, literal: String)
}

pub const illegal = "ILLEGAL"

pub const eof = "EOF"

// Identifers + literals
pub const ident = "IDENT"

pub const int = "INT"

pub const string = "STRING"

// Operators
pub const assign = "="

pub const plus = "+"

pub const minus = "-"

pub const bang = "!"

pub const asterisk = "*"

pub const slash = "/"

pub const lt = "<"

pub const gt = ">"

pub const eq = "=="

pub const noteq = "!="

pub const or = "||"

// Delimiters
pub const comma = ","

pub const semicolon = ";"

pub const colon = ":"

pub const lparen = "("

pub const rparen = ")"

pub const lbrace = "{"

pub const rbrace = "}"

pub const lbracket = "["

pub const rbracket = "]"

// Keywords
pub const function = "FUNCTION"

pub const let_ = "LET"

pub const true = "TRUE"

pub const else_ = "ELSE"

pub const false = "FALSE"

pub const if_ = "IF"

pub const return = "RETURN"

pub fn lookup_keywords(word: String) -> Result(TokenType, Nil) {
  case word {
    "fn" -> Ok(function)
    "let" -> Ok(let_)
    "true" -> Ok(true)
    "false" -> Ok(false)
    "if" -> Ok(if_)
    "else" -> Ok(else_)
    "return" -> Ok(return)
    _ -> Error(Nil)
  }
}
