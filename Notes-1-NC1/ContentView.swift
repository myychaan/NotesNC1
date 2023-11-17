//
//  ContentView.swift
//  Notes-1-NC1
//
//  Created by Mahary Esposito on 17/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            VStack {
                
                List {
                    Section(header: Text("iCloud")) {
                        
                        NavigationLink{
                            FolderView()
                        } label: {
                            
                            HStack{
                                Image(systemName: "folder")
                                    .foregroundColor(.yellow)
                                Text("All iCloud")
                                Text("6")
                                    .foregroundStyle(.gray)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                
                            }
                        }
                        NavigationLink{
                            FolderView()
                        } label: {
                            HStack{
                                Image(systemName: "folder")
                                    .foregroundColor(.yellow)
                                Text("notes")
                                Text("0")
                                    .foregroundStyle(.gray)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                
                            };
                        }
                        NavigationLink{
                            FolderView()
                        } label: {
                            HStack{
                                Image(systemName: "folder")
                                    .foregroundColor(.yellow)
                                Text("Stranger Things")
                                Text("0")
                                    .foregroundStyle(.gray)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                
                                
                                
                            };
                        }
                    }.headerProminence(.increased)
                    
                    
                    
                    
                }.toolbar{
                    
                    ToolbarItem(placement: .bottomBar) {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "folder.badge.plus")
                                .foregroundStyle(.yellow)
                        })
                    }
                    ToolbarItem(placement: .bottomBar){
                            NavigationLink(destination: NewNoteView()){
                                Image(systemName: "square.and.pencil")
                                    .foregroundStyle(.yellow)
                            }
                        
                    }
                        ToolbarItem(placement: .topBarTrailing) {
                            Button("Edit") {}
                                .foregroundStyle(.yellow)
                        }
                    }
                    
                }.navigationTitle("Folders")
            }.searchable(text: $searchText)
        }
    }

#Preview {
   ContentView()
}

