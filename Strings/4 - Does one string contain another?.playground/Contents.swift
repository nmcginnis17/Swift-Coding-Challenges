/*
 Challenege 4 - Does one string contain another?
 Write your own version of the contains() method on String that ignores case,
 and without using the existing contains() method
*/

import Foundation

extension String {
    func myContains(_ string: String) -> Bool {
        return self.lowercased().range(of: string.lowercased()) != nil
    }
}


// Tests:
 print("Hello, world".myContains("Hello"))
 print("Hello, world".myContains("WORLD"))
 print("Hello, world".myContains("Goodbye"))
