import SwiftData
import SwiftUI

var greeting = "Hello, playground"

@Model
class Todo{
    var title: String
    var descrirption: String
    @Attribute(.unique) var date: Date
    
    init(title: String, descrirption: String, date : .now) {
        self.title = title
        self.descrirption = descrirption
        self.date = date;
    }
}
