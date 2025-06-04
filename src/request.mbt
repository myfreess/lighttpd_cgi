///|
struct HttpRequest[T] {
  method_ : HttpMethod
  headers : Array[HttpHeader]
  body : T
  scheme: HttpScheme
  host : String
  port : Int?
  path : String
  query : String?
}

///|
enum HttpMethod {
  Get
  Post
  Put
  Delete
  Head
  Options
  Patch
  Connect
  Trace
  Other(String)
}

///|
enum HttpScheme {
  Http
  Https
}

///| A HTTP header is a key-value pair. 
/// Header keys must be all lowercase characters
type HttpHeader (String, String)
