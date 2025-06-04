///|
pub fn get_env(name : String, loc~ : SourceLoc = _) -> String!Error {
  let buf = @buffer.new(size_hint=name.length() * 2 + 1)
  @encoding.encode_to(name, buf, encoding=UTF8)
  buf.write_byte(0x00)
  let name = buf.contents()
  let value = __get_env(name)
  if value.length() == 0 {
    fail("environment variable \{name} not exist", loc~)
  }
  @encoding.decoder(UTF8).decode(value[:])
}
