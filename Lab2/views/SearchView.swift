import SwiftUI

struct SearchView: View {
    var body: some View {
        HStack {
            Label {
                Text(search_text)
                    .font(.custom("Poppins-Regular", size: 15, relativeTo: .body))
                    .foregroundColor(Color("PurpleTextColor"))
                    .padding(.leading, 6)
            } icon: {
                Image("ic_magnifier")
            }
            Spacer()
        }
        .padding(16)
        .background(Color("AccentBackgroundColor"))
        .cornerRadius(12)
    }
}

#Preview {
    SearchView()
}
