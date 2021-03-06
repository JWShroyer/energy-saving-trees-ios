//
//  StreetTreesTransportKitTests.swift
//  StreetTreesTransportKitTests
//
//  Created by Tom Marks on 3/06/2016.
//  Copyright © 2016 Code for Orlando. All rights reserved.
//

import XCTest
import Alamofire
@testable import StreetTreesTransportKit

class StreetTreesTransportKitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let t = tes()
        XCTAssertNil(t.test(), "is nil")
    }
    
    func testDownload() {
        
        STTKDownloadManager.fetchAllTrees { (trees) in
            XCTAssertNotNil(trees, "is not nil")
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
