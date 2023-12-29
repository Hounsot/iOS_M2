//import SwiftUI
//
//struct ProfileView: View {
//    let profileImage: Image = Image(systemName: "person.circle.fill")
//    let nickname: String = "Username"
//    let description: String = "This is a brief description about the user."
//
//    var body: some View {
//        VStack(spacing: 20) {
//            profileImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .clipShape(Circle())
//                .overlay(Circle().stroke(Color.white, lineWidth: 4))
//                .shadow(radius: 10)
//            
//            Text(nickname)
//                .font(.title)
//                .fontWeight(.bold)
//            
//            Text(description)
//                .font(.body)
//                .foregroundColor(.gray)
//
//            Spacer()        }
//        .padding()
//        .navigationBarTitle("Profile", displayMode: .inline)
//    }
//}
//
import SwiftUI
struct ProfileView: View{
    let gradient = Gradient(colors: [.blue, .purple])
    var body: some View {
        VStack {
            HStack{
                Spacer()
                VStack{
                    Image("pfp")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .clipped()
                    Text("Имя Фамилия").font(.system(size: 20)).bold().foregroundColor(.white).padding(.top, 4)
                    Text("UI/UX дизайнер").font(.system(size: 18)).bold().foregroundColor(.white).padding(.top, 4)
                }
                Spacer()
            }
            Spacer()
        }.background(Color(hex: "060606"))
        
    }
}
