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
                        Image(systemName: "square.and.pencil") .foregroundStyle(.yellow)
                    })
                }
            }.navigationBarTitleDisplayMode(.inline)
        }
    }
}
#Preview {
    NewNoteView()
}
