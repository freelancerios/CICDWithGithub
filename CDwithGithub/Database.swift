//
//  Database.swift
//  CDwithGithub
//
//  Created by jaipee on 23/05/23.
//

import Foundation

protocol DataBaseProtocol {
    var databaseName: String {get}
    var isConnectionEstablish: Bool {get}
    func connectToDatabase()
}

class SQLDatabase: DataBaseProtocol {
    
    private(set) var databaseName: String
    private(set) var isConnectionEstablish: Bool = false
    init(databaseName: String) {
        self.databaseName = databaseName
    }
    
    func connectToDatabase() {
        print("\(databaseName): SQLDatabase is Connected")
        self.isConnectionEstablish = true
    }
}


class NOSQLDatabase: DataBaseProtocol {
    private(set) var databaseName: String
    private(set) var isConnectionEstablish: Bool = false
    init(databaseName: String) {
        self.databaseName = databaseName
    }
    
    func connectToDatabase() {
        print("\(databaseName): NOSQLDatabase is Connected")
        self.isConnectionEstablish = true
    }
}


class DatabaseManager {
    let dataBase: DataBaseProtocol
    init(dataBase: DataBaseProtocol) {
        self.dataBase = dataBase
        dataBase.connectToDatabase()
    }
    
    func isDatabaseConnected()-> Bool {
        dataBase.isConnectionEstablish
    }
    
    func getDatabaseName()-> String {
        dataBase.databaseName
    }
}
