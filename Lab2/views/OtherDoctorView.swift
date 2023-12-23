import SwiftUI

struct OtherDoctorView: View {
    var doctorName: String = snd_d_Name
    var doctorImage: String = "ic_second_doctor"
    var doctorSpec: String = snd_d_Spec
    var openAt: String = openTime
    var reviews: String = review
    
    var body: some View{
       
        
        VStack(alignment: .leading, spacing: 16){
            HStack {
                Image(doctorImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48, alignment: .top)
                    .background(.white)
                    .clipShape(.circle)
                    .padding(.trailing, 8)
                VStack(alignment: .leading){
                    Text(doctorName)
                        .foregroundColor(Color("NearBlackTextColor"))
                        .font(.custom("Poppins-Bold", size: 16, relativeTo: .title))
                    Text(doctorSpec)
                        .foregroundColor(Color("PurpleTextColor"))
                        .font(.custom("Poppins-Regular", size: 14, relativeTo: .body))
                }
                Spacer()
                
                Label {
                    Text(dist)
                        .font(.custom("Poppins-Regular", size: 14, relativeTo: .body))
                        .foregroundColor(Color("PurpleTextColor"))
                } icon: {
                    Image("ic_location")
                }
                
            }
            Divider().overlay(Color("DividerColor"))
            
            HStack {
                Label {
                    Text(reviews)
                        .font(.custom("Poppins-Regular", size: 12, relativeTo: .body))
                        .foregroundColor(Color("ReviewItemTintColor"))
                } icon: {
                    Image("ic_clock")
                        .renderingMode(.template)
                        .foregroundColor(Color("ReviewItemTintColor"))
                }
                Label {
                    Text(openAt)
                        .font(.custom("Poppins-Regular", size: 12, relativeTo: .body))
                        .foregroundColor(Color("TimeItemTintColor"))
                } icon: {
                    Image("ic_clock")
                        .renderingMode(.template)
                        .foregroundColor(Color("TimeItemTintColor"))
                }
                .padding(.leading, 25)
            }
        }  .padding(20)
            .background( .white)
            .cornerRadius(12)
    }
}

#Preview {
    OtherDoctorView()
}
