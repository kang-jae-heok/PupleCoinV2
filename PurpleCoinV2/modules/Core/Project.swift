import ProjectDescription

let project = Project(
    name: "Core",
    targets: [
        .target(
            name: "Core",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Core",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Core/Sources/**"],
            resources: ["Core/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "CoreTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.CoreTests",
            infoPlist: .default,
            sources: ["Core/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Core")]
        ),
    ]
)
