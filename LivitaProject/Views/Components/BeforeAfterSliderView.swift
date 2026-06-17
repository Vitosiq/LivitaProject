import SwiftUI

struct BeforeAfterSliderView: View {

    let beforeImage: String
    let afterImage: String

    @State private var sliderPosition: CGFloat = 0.5

    private let imageWidth: CGFloat = 343
    private let imageHeight: CGFloat = 436

    var body: some View {

        GeometryReader { geo in

            let imageStartX = (geo.size.width - imageWidth) / 2

            ZStack {

                Image(afterImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageWidth, height: imageHeight)
                    .clipped()

                Image(beforeImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageWidth, height: imageHeight)
                    .clipped()
                    .mask(alignment: .leading) {
                        Rectangle()
                            .frame(width: imageWidth * sliderPosition)
                    }

                VStack {
                    HStack {

                        Text("Before")
                            .font(.system(size: 16, weight: .semibold))
                            .padding(.horizontal, 16)
                            .padding(.vertical, 10)
                            .background(.white)
                            .clipShape(Capsule())

                        Spacer()

                        Text("After")
                            .font(.system(size: 16, weight: .semibold))
                            .padding(.horizontal, 16)
                            .padding(.vertical, 10)
                            .background(.white)
                            .clipShape(Capsule())
                    }

                    Spacer()
                }
                .padding(20)

                Rectangle()
                    .fill(.white)
                    .frame(width: 3, height: imageHeight)
                    .offset(
                        x: (sliderPosition * imageWidth) - (imageWidth / 2)
                    )

                Circle()
                    .fill(.white)
                    .frame(width: 64, height: 64)
                    .shadow(color: .black.opacity(0.15), radius: 12)
                    .overlay {
                        Image(systemName: "arrow.left.and.right")
                            .font(.title2)
                            .foregroundColor(.black)
                    }
                    .offset(
                        x: (sliderPosition * imageWidth) - (imageWidth / 2)
                    )
            }
            .frame(width: imageWidth, height: imageHeight)
            .clipShape(
                RoundedRectangle(cornerRadius: 32)
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .contentShape(Rectangle())
            .gesture(
                DragGesture()
                    .onChanged { value in

                        let localX = value.location.x - imageStartX

                        sliderPosition = min(
                            max(localX / imageWidth, 0),
                            1
                        )
                    }
            )
        }
    }
}
