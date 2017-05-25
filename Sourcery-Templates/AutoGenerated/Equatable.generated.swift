// Generated using Sourcery 0.6.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


//MARK: Movie Mappable
extension Movie : Mappable{

  required init?(map: Map){}
	private override init(){}

    func mapping(map: Map)
      banner <- map["banner"]
      cast <- map["cast"]
      director <- map["director"]
      genre <- map["genre"]
      id <- map["id"]
      releaseDate <- map["releaseDate"]
      runTime <- map["runTime"]
      summary <- map["summary"]
      thumb <- map["thumb"]
      title <- map["title"]
      trailer <- map["trailer"]
    }
}
