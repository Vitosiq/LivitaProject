import SwiftUI

struct ToolCardView: View {

    let item: ToolItem

    var body: some View {

        VStack(alignment: .leading, spacing: 14) {

            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 130)
                .frame(maxWidth: .infinity)
                .clipShape(
                    RoundedRectangle(cornerRadius: 22)
                )

            Text(item.title)
                .font(.system(size: 22, weight: .semibold))



            HStack {
                
                Text(item.subtitle)
                    .font(.system(size: 17))
                    .foregroundColor(.gray)
                    .lineSpacing(3)
                Spacer()

                Button {

                } label: {
                    Image(systemName: "arrow.right")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(width: 49, height: 32)
                        .background(Color.black)
                        .clipShape(Capsule())
                }
            }
        }
        .padding(16)
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 28)
        )
    }
}
