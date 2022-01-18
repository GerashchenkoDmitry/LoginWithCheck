//
//  Person.swift
//  TSDProject4
//
//  Created by Дмитрий Геращенко on 09.01.2022.
//

import Foundation

struct User {
    let email: String
    let password: String
    
    var tableInfo: TableInfo?
}

struct TableInfo {
    var userFullName: String?
    var numberOfGuests: Int?
    var numberOfTable: Int?
    
    var reservedTable: Bool?
    var prepayment: Bool?
    var vipRoom: Bool?
}
