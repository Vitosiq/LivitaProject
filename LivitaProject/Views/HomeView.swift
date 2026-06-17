import SwiftUI

struct HomeContentView: View {

    let tools = ToolItem.mock

    var body: some View {
        NavigationStack {

            ZStack(alignment: .bottom) {

                Color(.systemGray6)
                    .ignoresSafeArea()

                ScrollView(showsIndicators: false) {

                    VStack(spacing: 20) {

                        header

                        ForEach(tools) { item in

                            NavigationLink {
                                ResultView()
                            } label: {
                                ToolCardView(item: item)
                            }
                            .buttonStyle(.plain)
                        }

                        Spacer()
                            .frame(height: 120)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 12)
                }
            }
            .toolbar(.hidden, for: .navigationBar)
        }
    }

    private var header: some View {
        HStack {

            GradientProButton()

            Spacer()

            Button {

            } label: {
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 32))
                    .foregroundColor(.gray)
            }
        }
        .padding(.top, 10)
    }
}
