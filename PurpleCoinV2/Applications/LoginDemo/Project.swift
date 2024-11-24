import ProjectDescription

let project = Project(
    name: "LoginDemo",
    targets: [
        .target(
            name: "LoginDemo",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.LoginDemo",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["LoginDemo/Sources/**"],
            resources: ["LoginDemo/Resources/**"],
            dependencies: [
                .project(target: "Core", path: "Modules/Core"),
                .project(target: "Login", path: "Modules/Login")
            ]
        ),
        .target(
            name: "LoginDemoTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.LoginDemoTests",
            infoPlist: .default,
            sources: ["LoginDemo/Tests/**"],
            resources: [],
            dependencies: [.target(name: "LoginDemo")]
        ),
    ]
)
