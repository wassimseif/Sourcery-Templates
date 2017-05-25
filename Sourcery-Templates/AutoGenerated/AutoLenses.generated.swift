// Generated using Sourcery 0.6.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

infix operator *~: MultiplicationPrecedence
infix operator |>: AdditionPrecedence

struct Lens<Whole, Part> {
    let get: (Whole) -> Part
    let set: (Part, Whole) -> Whole
}

func * <A, B, C> (lhs: Lens<A, B>, rhs: Lens<B, C>) -> Lens<A, C> {
    return Lens<A, C>(
        get: { a in rhs.get(lhs.get(a)) },
        set: { (c, a) in lhs.set(rhs.set(c, lhs.get(a)), a) }
    )
}

func *~ <A, B> (lhs: Lens<A, B>, rhs: B) -> (A) -> A {
    return { a in lhs.set(rhs, a) }
}

func |> <A, B> (x: A, f: (A) -> B) -> B {
    return f(x)
}

func |> <A, B, C> (f: @escaping (A) -> B, g: @escaping (B) -> C) -> (A) -> C {
    return { g(f($0)) }
}

extension Movie {
  static let bannerLens = Lens<Movie, AnyObject?>(
    get: { $0.banner },
    set: { banner, movie in
       Movie(banner: banner, cast: movie.cast, director: movie.director, genre: movie.genre, id: movie.id, releaseDate: movie.releaseDate, runTime: movie.runTime, summary: movie.summary, thumb: movie.thumb, title: movie.title, trailer: movie.trailer)
    }
  )
  static let castLens = Lens<Movie, String?>(
    get: { $0.cast },
    set: { cast, movie in
       Movie(banner: movie.banner, cast: cast, director: movie.director, genre: movie.genre, id: movie.id, releaseDate: movie.releaseDate, runTime: movie.runTime, summary: movie.summary, thumb: movie.thumb, title: movie.title, trailer: movie.trailer)
    }
  )
  static let directorLens = Lens<Movie, String?>(
    get: { $0.director },
    set: { director, movie in
       Movie(banner: movie.banner, cast: movie.cast, director: director, genre: movie.genre, id: movie.id, releaseDate: movie.releaseDate, runTime: movie.runTime, summary: movie.summary, thumb: movie.thumb, title: movie.title, trailer: movie.trailer)
    }
  )
  static let genreLens = Lens<Movie, String?>(
    get: { $0.genre },
    set: { genre, movie in
       Movie(banner: movie.banner, cast: movie.cast, director: movie.director, genre: genre, id: movie.id, releaseDate: movie.releaseDate, runTime: movie.runTime, summary: movie.summary, thumb: movie.thumb, title: movie.title, trailer: movie.trailer)
    }
  )
  static let idLens = Lens<Movie, Int?>(
    get: { $0.id },
    set: { id, movie in
       Movie(banner: movie.banner, cast: movie.cast, director: movie.director, genre: movie.genre, id: id, releaseDate: movie.releaseDate, runTime: movie.runTime, summary: movie.summary, thumb: movie.thumb, title: movie.title, trailer: movie.trailer)
    }
  )
  static let releaseDateLens = Lens<Movie, AnyObject?>(
    get: { $0.releaseDate },
    set: { releaseDate, movie in
       Movie(banner: movie.banner, cast: movie.cast, director: movie.director, genre: movie.genre, id: movie.id, releaseDate: releaseDate, runTime: movie.runTime, summary: movie.summary, thumb: movie.thumb, title: movie.title, trailer: movie.trailer)
    }
  )
  static let runTimeLens = Lens<Movie, String?>(
    get: { $0.runTime },
    set: { runTime, movie in
       Movie(banner: movie.banner, cast: movie.cast, director: movie.director, genre: movie.genre, id: movie.id, releaseDate: movie.releaseDate, runTime: runTime, summary: movie.summary, thumb: movie.thumb, title: movie.title, trailer: movie.trailer)
    }
  )
  static let summaryLens = Lens<Movie, String?>(
    get: { $0.summary },
    set: { summary, movie in
       Movie(banner: movie.banner, cast: movie.cast, director: movie.director, genre: movie.genre, id: movie.id, releaseDate: movie.releaseDate, runTime: movie.runTime, summary: summary, thumb: movie.thumb, title: movie.title, trailer: movie.trailer)
    }
  )
  static let thumbLens = Lens<Movie, String?>(
    get: { $0.thumb },
    set: { thumb, movie in
       Movie(banner: movie.banner, cast: movie.cast, director: movie.director, genre: movie.genre, id: movie.id, releaseDate: movie.releaseDate, runTime: movie.runTime, summary: movie.summary, thumb: thumb, title: movie.title, trailer: movie.trailer)
    }
  )
  static let titleLens = Lens<Movie, String?>(
    get: { $0.title },
    set: { title, movie in
       Movie(banner: movie.banner, cast: movie.cast, director: movie.director, genre: movie.genre, id: movie.id, releaseDate: movie.releaseDate, runTime: movie.runTime, summary: movie.summary, thumb: movie.thumb, title: title, trailer: movie.trailer)
    }
  )
  static let trailerLens = Lens<Movie, String?>(
    get: { $0.trailer },
    set: { trailer, movie in
       Movie(banner: movie.banner, cast: movie.cast, director: movie.director, genre: movie.genre, id: movie.id, releaseDate: movie.releaseDate, runTime: movie.runTime, summary: movie.summary, thumb: movie.thumb, title: movie.title, trailer: trailer)
    }
  )
}
