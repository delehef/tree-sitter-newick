import XCTest
import SwiftTreeSitter
import TreeSitterNewick

final class TreeSitterNewickTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_newick())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Newick grammar")
    }
}
