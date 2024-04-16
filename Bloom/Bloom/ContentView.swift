import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("white").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image(uiImage: #imageLiteral(resourceName: "Image"))
                        .resizable()
                        .frame(width: 250.0, height: 310.0)
                    Spacer()
                    HStack {
                        Text(" let the thoughts flow ")
                            .foregroundColor(Color("Textcol"))
                            .italic()
                    }
                    
                    NavigationLink(
                        destination: WelcomeScreenView().navigationBarHidden(true),
                        label: {
                            Text("Continue")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("Textcol"))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color("AccentColor"))
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        })
                    .navigationBarHidden(true)
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
