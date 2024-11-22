import ProjectDescription

let project = Project(
    name: "Login",
    targets: [
        .target(
            name: "Login",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Login",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Login/Sources/**"],
            resources: ["Login/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "LoginTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.LoginTests",
            infoPlist: .default,
            sources: ["Login/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Login")]
        ),
    ]
)
