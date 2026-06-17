import SwiftUI

enum TabItem: CaseIterable {
    case tools
    case gallery
    case discover
}

struct BottomTabBar: View {

    @Binding var selected: TabItem

    var body: some View {
        HStack {

            tab(
                icon: "sparkles",
                title: "Tools",
                tab: .tools
            )

            Spacer()

            tab(
                icon: "photo.on.rectangle",
                title: "Gallery",
                tab: .gallery
            )

            Spacer()

            tab(
                icon: "safari.fill",
                title: "Discover",
                tab: .discover
            )
        }
        .padding(.horizontal, 32)
        .padding(.vertical, 16)
        .background(.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 32)
        )
        .shadow(color: .black.opacity(0.08), radius: 20)
    }

    private func tab(
        icon: String,
        title: String,
        tab: TabItem
    ) -> some View {

        Button {
            selected = tab
        } label: {

            VStack(spacing: 6) {

                Image(systemName: icon)
                    .font(.system(size: 22))

                Text(title)
                    .font(.system(size: 14))
            }
            .foregroundColor(
                selected == tab ? .black : .gray
            )
        }
    }
}
