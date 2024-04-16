//
//  NotesView.swift
//  Bloom
//
//  Created by Meghna Vyas on 13/04/24.
//

import SwiftUI

struct NotesView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    
                    ForEach(notes) { note in
                        NoteCardView(note: note)
                    }
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    Text("NOTES")
                    .font(.title)
                    .foregroundColor(Color("rang"))
                    .bold(),
                trailing:
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
            )
        }
    }
}

struct NoteCardView: View {
    let note: Note
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            // image
            Image(note.image)
                .resizable()
                .frame(height: 230, alignment: .topLeading)
            
            
            // details
            HStack(alignment: .center) {
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(note.title)
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        Image(note.people[0].image)
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .center)
                            .clipShape(Circle())
                        Text(note.people[0].name)
                            .font(.body)
                            .fontWeight(.semibold)
                    }
                }
                
                Spacer()
                
                NavigationLink(
                    destination: PlusScreenView().navigationBarHidden(true),
                    label: {
                        Text("Add new")
                            .font(.caption)
                            .bold()
                            .padding()
                            .background(
                                Color.rang.opacity(0.9)
                            )
                            .cornerRadius(10)
                    })
                    .navigationBarHidden(true)
                
            }
            .padding()
            .frame(height: 100, alignment: .topLeading)
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(note.color.opacity(0.6))
            
        }
        .clipped()
        .frame(height: 330, alignment: .center)
        .frame(maxWidth: .infinity)
        .cornerRadius(20)
        .padding()
        
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
