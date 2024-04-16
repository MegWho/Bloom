//
//  PlusScreenView.swift
//  Bloom
//
//  Created by Meghna Vyas on 15/04/24.
//

import SwiftUI

struct PlusScreenView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var title: String = ""
    @State private var note: String = ""
    
    var body: some View {
            NavigationView {
                VStack(spacing: 16) {
                    TextField("Title", text: $title)
                        .padding()
                        .background(Color.textcol.opacity(0.2))
                        .cornerRadius(10)
                    TextEditor(text: $note)
                        .padding()
                        .background(Color.textcol.opacity(0.2))
                        .cornerRadius(10)
                    
                    Button("Save") {
                        // Handle saving note logic here (e.g., call a save function)
                        print("Note saved:")
                        print("Title: \(title)")
                        print("Note: \(note)")
                        // Consider adding functionality to persist notes (e.g., Core Data, UserDefaults)
                        presentationMode.wrappedValue.dismiss() // Dismiss view after saving
                    }
                    
                    .disabled(title.isEmpty || note.isEmpty) // Disable if title or note is empty
                    .padding()
                }
    
                .navigationTitle("Brain Storm")
                .toolbar {
                    // Optional: Add a clear button to clear the note content
                    Button(action: {
                        title = ""
                        note = ""
                    }) {
                        Image(systemName: "checkmark.circle")
                    }
                }
            }
            .navigationViewStyle(.stack) // Optional: Set navigation style (optional)
        }
        init() {
            UINavigationBar.appearance().largeTitleTextAttributes = [
                .foregroundColor: UIColor.textcol // Set desired color (e.g., red)
            ]
        }
    }
    struct NoteEditorView_Previews: PreviewProvider {
        static var previews: some View {
            PlusScreenView()
        }
    }
    

