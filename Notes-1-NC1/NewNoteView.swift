//
//  NewNoteView.swift
//  Notes-1-NC1
//
//  Created by Mahary Esposito on 17/11/23.
//

import SwiftUI

struct NewNoteView: View {
    @State private var noteText: String = ""
    var body: some View {
        NavigationStack{
            VStack{
                TextEditor(text: $noteText)
                    .accessibility(label: Text("Note text Field is editing, insertion point at start"))
                    .accessibility(hint: Text("swipe double down to select a custom action, then double tap to activate."))
                    .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0, maxHeight: .infinity)
                    .padding()
            }.toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "square.and.arrow.up") .foregroundStyle(.gray)
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "ellipsis.circle") .foregroundStyle(.yellow)
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}, label: {
                        Text("Done") .foregroundStyle(.yellow)
                    })
                }
                   
                    }.navigationBarTitleDisplayMode(.inline)
                }
            }
}
#Preview {
    NewNoteView()
}
