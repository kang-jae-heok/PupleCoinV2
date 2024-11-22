import ProjectDescription

let project = Project(
    name: "PurpleCoinV2",
    targets: [
        .target(
            name: "PurpleCoinV2",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.PurpleCoinV2",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["PurpleCoinV2/Sources/**"],
            resources: ["PurpleCoinV2/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "PurpleCoinV2Tests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.PurpleCoinV2Tests",
            infoPlist: .default,
            sources: ["PurpleCoinV2/Tests/**"],
            resources: [],
            dependencies: [.target(name: "PurpleCoinV2")]
        ),
    ]
)
