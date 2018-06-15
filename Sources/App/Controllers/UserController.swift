import Vapor
import Leaf

final class UserController{
    func list(req: Request) throws -> Future<View>{
        return User.query(on: req).all().flatMap({ users in
            let data = ["userlist": users]
            return try req.view().render("users", data)
        })
    }
    
    func create(req: Request) throws -> Future<Response>{
        return try req.content.decode(User.self).flatMap({ user in
            return user.save(on: req).map({ (user) in
                return req.redirect(to: "users")
            })
        })
    }
}
