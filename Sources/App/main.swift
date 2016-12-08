import Vapor

let drop = Droplet()

drop.get("beers", Int.self) { req, beers in
	return "You get 🍺x \(beers)"
}

drop.get("/view") { request in
	return try drop.view.make("view.html")
}

drop.run()
