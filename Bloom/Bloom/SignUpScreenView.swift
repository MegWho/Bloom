import SwiftUI
struct SpacerView: View {
  let height: CGFloat
  var body: some View {
    Color.clear.frame(height: height) // Transparent view with specified height
  }
}

struct SignUpScreenView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var contactNo: String = ""
    @State private var password: String = ""
        
        var body: some View {
            VStack(spacing: 16) {
                Text("Bloom today!")
                    .font(.title)
                    .foregroundStyle(Color.rang)
                    .bold()
                
                TextField("Name", text: $name)
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress) // Set keyboard type for email address
                TextField("Contact No.", text: $contactNo)
                    .keyboardType(.phonePad) // Set keyboard type for phone number
                SecureField("Password", text: $password)
                
                SpacerView(height: 50)
                
                NavigationLink(
                    destination:NotesView().navigationBarHidden(true),
                    label: {
                        Text("Sign Up")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Textcol"))
                            .padding()
                            .frame(maxHeight: 80.0)
                            .frame(maxWidth: 170.0)
                            .background(Color("AccentColor"))
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                    })
                    .navigationBarHidden(true)
                
                Button(".") {
                    // Handle sign-up logic here (e.g., call a sign-up function without validation)
                    submitSignUpData()
                }
                .disabled(name.isEmpty || email.isEmpty || contactNo.isEmpty || password.isEmpty) // Disable if fields are empty
            }
            .padding()
        }
        private func submitSignUpData() {
            // Call your sign-up function here, potentially with a warning about missing validation
            print("Sign Up data submitted:")
            print("Name: \(name)")
            print("Email: \(email)")
            print("Contact No.: \(contactNo)")
            print("Password: \(password)")
            // Consider adding an alert to warn the user about the lack of validation
        }
    }
    
    struct SignUpView_Previews: PreviewProvider {
        static var previews: some View {
            SignUpScreenView()
        }
    }
#Preview{
    SignInScreenView()
}
