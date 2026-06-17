import SwiftUI

struct GalleryView: View {
    var body: some View {
        ZStack {
            Color(.systemGray6).ignoresSafeArea()

            Text("Gallery View")
                .font(.largeTitle.bold())
        }
    }
}

struct DiscoverView: View {
    var body: some View {
        ZStack {
            Color(.systemGray6).ignoresSafeArea()

            Text("Discover View")
                .font(.largeTitle.bold())
        }
    }
}
