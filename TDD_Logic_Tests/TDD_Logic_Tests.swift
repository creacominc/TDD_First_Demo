//
//  TDD_Logic_Tests.swift
//  TDD_First_DemoTests
//
//  Created by Harold Tomlinson on 2024-02-26.
//

import XCTest
@testable import TDD_First_Demo

final class TDD_Logic_Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func test_numberOfVowels_whenGivenDominik_shouldReturn3()
    {
        let tdd_DataStore = TDD_DataStore()
        let result = tdd_DataStore.numberOfVowels(in: "Dominik")

        XCTAssertEqual(result, 3,
                       "Expected 3 vowels in 'Dominik' but got \(result)")
    }

    func test_dictsAreQual() 
    {
        let dict1 = ["id": "2", "name": "foo"]
        let dict2 = ["id": "2", "names": "fo"]
        //XCTAssertEqual(dict1, dict2)
        // Log output:
        // XCTAssertEqual failed: ("["name": "foo", "id": "2"]")...
        // ...is not equal to ("["name": "fo", "id": "2"]")
        DDHAssertEqual(dict1, dict2)
    }

    func DDHAssertEqual<A: Equatable, B: Equatable> (
        _ first: [A:B],
        _ second: [A:B],
        file: StaticString = #filePath,
        line: UInt = #line
    )
    {
        let firstKeys = first.keys
        let secondKeys = second.keys
        if firstKeys == secondKeys
        {
            return
        }
        for fkey in firstKeys
        {
            if( !secondKeys.contains( fkey ) )
            {
                let message = "\(fkey) is not in the second dictionary"
                XCTFail(message, file: file, line: line )
                return
            }
        }
        for skey in secondKeys
        {
            if( !firstKeys.contains( skey ) )
            {
                let message = "\(skey) is not in the first dictionary"
                XCTFail(message, file: file, line: line )
                return
            }
        }
        for key in firstKeys
        {
            if first[key] != second[key] 
            {
                let value1 = String(describing: first[key]!)
                let value2 = String(describing: second[key]!)
                let keyValue1 = "\"\(key)\": \(value1)"
                let keyValue2 = "\"\(key)\": \(value2)"
                let message = "\(keyValue1) is not equal to \(keyValue2)"
                XCTFail(message, file: file, line: line )
                return
            }
        }
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
