// Generated using Sourcery 0.6.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


//MARK: Movie Initialization
extension Movie{

convenience init(banner:AnyObject?,cast:String?,director:String?,genre:String?,id:Int?,releaseDate:AnyObject?,runTime:String?,summary:String?,thumb:String?,title:String?,trailer:String?,){
  self.init()
  self.banner = banner
  self.cast = cast
  self.director = director
  self.genre = genre
  self.id = id
  self.releaseDate = releaseDate
  self.runTime = runTime
  self.summary = summary
  self.thumb = thumb
  self.title = title
  self.trailer = trailer
}
}


