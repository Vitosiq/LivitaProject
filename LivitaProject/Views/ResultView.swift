import SwiftUI

struct ResultView: View {

    var body: some View {

        ZStack {

            Color(.systemGray6)
                .ignoresSafeArea()

            VStack {

                Spacer()

                BeforeAfterSliderView(
                    beforeImage: "beforeKitchen",
                    afterImage: "afterKitchen"
                )
                .frame(height: 600)

                Spacer()

                HStack(spacing: 16) {

                    actionButton(
                        title: "Resize",
                        icon: "arrow.up.and.down.and.sparkles"
                    )

                    actionButton(
                        title: "Save",
                        icon: "square.and.arrow.down"
                    )
                }

                Button {

                } label: {

                    HStack {
                        Image(systemName: "arrow.counterclockwise")
                        Text("Regenerate")
                    }
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(.white)
                    .frame(width:350 , height: 56)
                    .background(Color.black)
                    .clipShape(Capsule())
                }
                .padding(.top, 20)

            }
            .padding(.horizontal, 20)
            .padding(.bottom, 24)
        }
        .toolbar(.hidden, for: .navigationBar)
        .background(
            SwipeBackEnabler()
        )
    }

    private func actionButton(
        title: String,
        icon: String
    ) -> some View {

        Button {

        } label: {

            HStack(spacing: 10) {

                Image(systemName: icon)

                Text(title)
            }
            .font(.system(size: 14))
            .foregroundColor(.black)
            .frame(width: 170, height: 50)
            .background(Color.white)
            .overlay {
                Capsule()
                    .stroke(Color.gray.opacity(0.3))
            }
            .clipShape(Capsule())
        }
    }
}
