//
//  WelcomeScreenView.swift
//  Bloom
//
//  Created by Meghna Vyas on 13/04/24.
//
import SwiftUI
struct WelcomeScreenView: View {
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
                        destination: SignInScreenView().navigationBarHidden(true),
                        label: {
                            Text("Login")
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
                    
                    NavigationLink(
                        destination: SignUpScreenView().navigationBarHidden(true),
                        label: {
                            Text("Sign Up")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("Textcol"))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color("AccentColor"))
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                        })
                        .navigationBarHidden(true)
                }
                .padding()
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}

