import SwiftUI

struct GradientProButton: View {

    var body: some View {

        Text("GET PRO")
            .font(.system(size: 20, weight: .bold))
            .foregroundColor(.white)
            .padding(.horizontal, 30)
            .padding(.vertical, 12)
            .background(
                LinearGradient(
                    colors: [
                        Color.orange.opacity(0.8),
                        Color.indigo
                    ],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .clipShape(Capsule())
    }
}
