import SwiftUI

struct OptionsView: View {
    var body: some View {
        LazyHStack(spacing: 14) {
            ForEach(0..<options.count) {
                count in
                VStack{
                    Image(optionsImages[count])
                        .padding(24)
                        .background(Color("AccentBackgroundColor"))
                        .cornerRadius(100)
                        .clipShape(.circle)
                    Text(options[count])
                        .foregroundColor(Color("PurpleTextColor"))
                        .font(.custom("Poppins-Regular", size: 15, relativeTo: .body))
                        .padding(.top, 2)
                }
            }

        }
    }
}

#Preview {
    OptionsView()
}
