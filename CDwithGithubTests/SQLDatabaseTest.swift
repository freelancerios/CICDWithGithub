//
//  SQLDatabaseTest.swift
//  CDwithGithubTests
//
//  Created by jaipee on 25/05/23.
//

import XCTest
@testable import CDwithGithub

final class SQLDatabaseTest: XCTestCase {
    var sut: SQLDatabase!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testNotInitializeObject() {
        XCTAssertNil(sut, "SQLDatabase object needs to be nil")
    }
    
    func test_() {
        let databaseName = "MySQLDatabase"
        sut = SQLDatabase(databaseName: databaseName)
        
        XCTAssertNotNil(sut, "SQLDatabase object is need to initilized")
        XCTAssertEqual(sut.databaseName, databaseName, "data base not matched")
        XCTAssertFalse(sut.isConnectionEstablish, "database needs to be not connected")
        sut.connectToDatabase()
        XCTAssertTrue(sut.isConnectionEstablish, "database needs to be connected")
    }
}
