//
//  SwiftUIView.swift
//  Notes-1-NC1
//
//  Created by Mahary Esposito on 17/11/23.
//

import SwiftUI

struct FolderView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section(header: Text("Today")) {
                        HStack{
                            VStack(alignment:.leading){
                                Text("Music").bold()
                                Text("10:09  Bring me the Horizon").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder").accessibilityLabel(Text("Folder"))
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("Riflessioni Libro").bold()
                                Text("11:38  Riflettere sull'impaginazione,..").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder").accessibilityLabel(Text("Folder"))
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("Lista Valigia").bold()
                                Text("14:40  Cuffia").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder").accessibilityLabel(Text("Folder"))
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                    }.headerProminence(.increased)
                    Section(header: Text("Previous 7 Days")) {
                        HStack{
                            
                            VStack(alignment:.leading){
                                Text("Differenza Modale/Navigation stack").bold()
                                Text("saturday No Additional Text").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder").accessibilityLabel(Text("Folder"))
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("Idea Video").bold()
                                Text("Friday  Portraits").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder").accessibilityLabel(Text("Folder"))
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("Comprare Sketchbook").bold()
                                Text("Friday  Matite 6B").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder").accessibilityLabel(Text("Folder"))
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                        
                        
                    }.headerProminence(.increased)

                    Section(header: Text("Previous 30 Days")) {
                        HStack{
                            VStack(alignment:.leading){
                                Text("Design Tips").bold()
                                Text("8/10/23  How to do animation..").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder").accessibilityLabel(Text("Folder"))
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("Lista Spesa").bold()
                                Text("19/10/23  Yogurt, latte,..").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder").accessibilityLabel(Text("Folder"))
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                            
                        }
                    }.navigationTitle("All Icloud")
                        .headerProminence(.increased)
                }
                .searchable(text: $searchText)
            }.toolbar{
                ToolbarItem(placement: .bottomBar) {
                    Button(action: {}, label: {
                    })
                }
                ToolbarItem(placement: .bottomBar){
                        NavigationLink(destination: NewNoteView()){
                            Image(systemName: "square.and.pencil")
                                .foregroundStyle(.yellow)
                        }
                    
                }
                ToolbarItem(placement: .status) {
                    Text("8 Notes")
                        .font(.system(size: 10))
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}, label: {
                        Image(systemName: "ellipsis.circle")
                            .foregroundStyle(.yellow)
                    }
                    )}
            }
            }
        }
    }


#Preview {
    FolderView()
}
