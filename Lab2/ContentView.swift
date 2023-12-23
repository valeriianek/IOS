import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .leading) {
                HeaderView()
                DoctorView().padding(.top, 16)
                SearchView().padding(.top, 14)
                OptionsView().padding(.top, 18)
                Text(title)
                    .foregroundColor(Color("NearBlackTextColor"))
                    .font(.custom("Poppins-SemiBold", size: 16, relativeTo: .title3))
                    .padding(.top, 24)
                OtherDoctorView() 
                    .shadow(color: Color("ShadowColor").opacity(0.04), radius: 10, x: 2, y: 12)
                    .padding(.top, 6)
                    
                OtherDoctorView(doctorName: fst_d_Name, doctorImage: "ic_first_doctor", doctorSpec: fst_d_Spec)
                    .padding(.top, 6)

            }
        }  
            .padding([.leading, .trailing], 24)
            .padding(.top, 20)
    }
}

#Preview {
    ContentView()
}
