import SwiftUI

struct ToolItem: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let image: String
}

extension ToolItem {
    static let mock: [ToolItem] = [
        .init(
            title: "Redesign",
            subtitle: "Refresh your space with a new \ninterior look",
            image: "room1"
        ),
        .init(
            title: "Sketch to Render",
            subtitle: "Refresh your space with a new \ninterior look",
            image: "room2"
        ),
        .init(
            title: "Living Room",
            subtitle: "Refresh your space with a new \ninterior look",
            image: "room3"
        )
    ]
}
