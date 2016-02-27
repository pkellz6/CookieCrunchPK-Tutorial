//
//  Cookie.swift
//  CookieCrunch
//
//  Created by Pat Kelly on 2/26/16.
//  Copyright © 2016 Pat Kelly. All rights reserved.
//

import SpriteKit

enum CookieType: Int {
    case Unknown = 0, Croissant, Cupcake, Danish, Donut, Macaroon, SugarCookie
}

class Cookie {
    var column: Int
    var row: Int
    let cookieType: CookieType
    var sprite: SKSpriteNode?
    
    init(column: Int, row: Int, cookieType: CookieType) {
        self.column = column
        self.row = row
        self.cookieType = cookieType
    }
}
