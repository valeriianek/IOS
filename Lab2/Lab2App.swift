import SwiftUI

@main
struct Lab2App: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView().tabItem {
                    Image("ic_home")
                    Text(title_H)
                }
                Text("Pusto").tabItem {
                    Image("ic_calendar")
                    Text(title_D)
                }
                Text("Tut toze Pusto").tabItem {
                    Image("ic_message")
                    Text(title_C)
                }
                Text("Vasya Loh").tabItem {
                    Image("ic_contact")
                    Text(title_P)
                }
            }
        }
    }
}



