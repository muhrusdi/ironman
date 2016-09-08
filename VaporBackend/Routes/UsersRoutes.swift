import Vapor
import HTTP
import Routing

public struct UsersRoutes: RouteCollection {
    
    public typealias Wrapped = Responder
    
    let drop: Droplet
    
    public init(droplet: Droplet) {
        drop = droplet
    }
    
    public func build<Builder: RouteBuilder>(_ builder: Builder) where Builder.Value == Wrapped {
        
        let controller = UsersController(droplet: drop)
        
        builder.get("/", handler: controller.index);
        builder.get("/create", handler: controller.create)
        builder.post("/create", handler: controller.store)
    }
}
