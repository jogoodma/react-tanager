
module ReactTanager
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("reacttanager.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "react_tanager",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "react_tanager.min.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "react_tanager.min.js.map",
    external_url = nothing,
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
