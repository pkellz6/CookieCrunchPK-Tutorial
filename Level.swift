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
}
