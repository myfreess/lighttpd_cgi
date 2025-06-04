fn main {
  try {
    println(@cgi.get_env("PATH"))
  } catch {
    _ => println("getenv failed")
  }
}