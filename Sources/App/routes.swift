import Vapor
import Leaf
/// Register your application's routes here.
public func routes(_ router: Router) throws {
    
    router.get("users", use: UserController().list)
    router.post("users", use: UserController().create)
}
