import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text(first_World)
                        .foregroundColor(Color("PurpleTextColor"))
                        .font(.custom("Poppins-Regular", size: 16, relativeTo: .body))
                    Text(hi_Name)
                        .foregroundColor(Color("BlackTextColor"))
                        .font(.custom("Poppins-Bold", size: 20, relativeTo: .title))
                }
                    Spacer()
                    Image("ic_user_logo")
                        .resizable()
                        .frame(width: 56, height: 56)
                }
            }
        }
    }

#Preview {
    HeaderView()
}
