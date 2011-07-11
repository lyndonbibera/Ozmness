class UrlMappings {

	static mappings = {
		"/admin/$controller/$action?/$id?"{
			constraints {

			}
		}

        "/admin/"(controller:'admin')
        "/login/$action?"(controller:'login')
        "/logout/$action?"(controller:'logout')
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
