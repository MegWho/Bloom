import SwiftUI

struct SpacerView1: View {
  let height: CGFloat
  var body: some View {
    Color.clear.frame(height: height) // Transparent view with specified height
  }
}

struct SignInScreenView: View {

  @State private var name: String = ""
  @State private var password: String = ""
  @State private var showingAlert = false
  @State private var alertMessage: String? = nil

  var body: some View {
    GeometryReader { geometry in
      ZStack {
        Image("8") // Replace "yourImageName" with your actual image name
          .resizable()
          .scaledToFill()
          .ignoresSafeArea(.all)
        VStack(alignment: .center) { // Center content horizontally
          Text("let the thoughts flow")
            .foregroundStyle(Color("rang"))
            .bold()
            .italic()
          SpacerView(height: 30)

          TextField("Username", text: $name)
            .font(.title3)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(50.0)
            .shadow(color: Color.black.opacity(0.08), radius: 50, x: 0.0, y: 16)
            .padding(.vertical)
          SecureField("Password", text: $password)
            .font(.title3)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(50.0)
            .shadow(color: Color.black.opacity(0.08), radius: 50, x: 0.0, y: 16)
            .padding(.vertical)

          SpacerView(height: 50)

          NavigationLink(
            destination: NotesView().navigationBarHidden(true),
            label: {
              Text("Sign In")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("Textcol"))
                .padding()
                .frame(maxHeight: 70.0)
                .frame(maxWidth: 170.0)
                .background(Color("AccentColor"))
                .cornerRadius(50.0)
                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
            })
          .navigationBarHidden(true)


          Button(".") {
            // Handle sign-in logic here (e.g., validate credentials, call a sign-in function)
            attemptSignIn()
          }
          .disabled(name.isEmpty || password.isEmpty) // Disable button if fields are empty
          .alert(isPresented: $showingAlert) {
            Alert(title: Text("Alert"), message: Text(alertMessage!), dismissButton: .default(Text("OK")))
          }
        }
        .padding() // Apply padding within the centered VStack
      }
    }
  }

  private func attemptSignIn() {
    // Replace with your actual sign-in logic (e.g., API call, validation)
    if name == "test" && password == "password123" { // Dummy validation
      print("Sign In successful!")
    } else {
      alertMessage = "Invalid username or password."
      showingAlert = true
    }
  }
}

struct SignInView_Previews: PreviewProvider {
  static var previews: some View {
    SignInScreenView()
  }
}

#Preview {
  SignInScreenView()
}
