import PackageDescription

let package = Package(
    name: "VaporApp",
    dependencies: [
        .Package(url: "https://github.com/qutheory/vapor.git", majorVersion: 0),
        .Package(url: "https://github.com/qutheory/vapor-stencil.git", majorVersion: 0),
        .Package(url: "https://github.com/qutheory/vapor-console.git", majorVersion: 0),
        .Package(url: "git@git.egocloud.net:shnhrrsn/vapor-assets.git", majorVersion: 0),
    ],
    exclude: [
        "Deploy",
        "Public",
        "Resources",
        "bower_components",
        "Tests"
    ]
)
