//
//  Mivue.swift
//  Sourcery-Templates
//
//  Created by Wassim Seifeddine on 5/25/17.
//  Copyright © 2017 Wassim Seifeddine. All rights reserved.
//

import Foundation
//
//	Movie.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation



struct Movie  {
    
    var banner : AnyObject?
    var cast : String?
    var director : String?
    var genre : String?
    var id : Int?
    var releaseDate : AnyObject?
    var runTime : String?
    var summary : String?
    var thumb : String?
    var title : String?
    var trailer : String?
    
}

extension Movie : AutoMappable {}
