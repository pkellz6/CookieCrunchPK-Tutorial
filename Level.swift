//
//  Level.swift
//  CookieCrunch
//
//  Created by Pat Kelly on 2/27/16.
//  Copyright © 2016 Pat Kelly. All rights reserved.
//

import Foundation

let NumColumns = 9
let NumRows = 9

class Level {
    private var cookies = Array2D<Cookie>(columns: NumColumns, rows: NumRows)

func cookieAtColumn(column: Int, row: Int) -> Cookie? {
    assert(column >= 0 && column < NumColumns)
    assert(row >= 0 && row < NumRows)
    return cookies[column, row]
}

func shuffle() -> Set<Cookie> {
    return createInitialCookies()
}
    
private func createInitialCookies() -> Set<Cookie> {
    var set = Set<Cookie>()
        
    // 1
    for row in 0..<NumRows {
        for column in 0..<NumColumns {
                
            // 2
            var cookieType = CookieType.random()
                
            // 3
            let cookie = Cookie(column: column, row: row, cookieType: cookieType)
            cookies[column, row] = cookie
                
            // 4
            set.insert(cookie)
        }
    }
    return set
    }
    
}


