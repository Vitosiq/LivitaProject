import SwiftUI

struct MainTabView: View {

    @State private var selectedTab: TabItem = .tools

    var body: some View {

        ZStack(alignment: .bottom) {

            switch selectedTab {

            case .tools:
                HomeContentView()

            case .gallery:
                GalleryView()

            case .discover:
                DiscoverView()
            }

            BottomTabBar(
                selected: $selectedTab
            )
            .padding(.horizontal, 20)
            .padding(.bottom, 12)
        }
    }
}
