import SwiftUI

struct NavigationView: View {

        
        
    var images = ["ic_home", "ic_calendar", "ic_message", "ic_contact"]
    var titles = ["Home", "Date", "Chat", "Profile"]
    
    
    @State var selectedTab = 0
    var body: some View {
        
        ZStack {
            HStack {

                ForEach(0..<images.count) {
                    TabItem(image: images[$0] , title: titles[$0], isTabbed: false)
                }
        }
    }
        
        .background(.white)
        .padding([.leading, .trailing], 24)
    }
}


extension NavigationView {
    func TabItem(image: String, title: String, isTabbed: Bool) -> some View {
        HStack {
            Spacer()
            Image(image)
                .renderingMode(.template)
                .foregroundColor(isTabbed ? Color("TabAccentColor") : Color("TabNotActiveAccentColor"))
            if isTabbed {
                Text(title)
                    .font(.custom("Nunito-Bold", size: 14, relativeTo: .title3))
                    .foregroundColor(isTabbed ? Color("TabAccentColor") : .gray)
            }
            Spacer()
        }
        .background(isTabbed ? Color("TabViewActiveBarBackgroundColor") : .clear)
        .cornerRadius(12)
        .frame(maxWidth: .infinity)
        .frame(width: isTabbed ? 95 : 65)
        .frame(height: 48)
      
    }
}

#Preview {
    NavigationView()
}
