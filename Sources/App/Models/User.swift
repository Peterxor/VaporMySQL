import Vapor
import FluentMySQL

final class User: MySQLModel{
    var id: Int?
    var username: String
    init(id: Int?, username: String) {
        self.id = id
        self.username = username
    }
}
extension User: Migration{}

extension User: Content{}
