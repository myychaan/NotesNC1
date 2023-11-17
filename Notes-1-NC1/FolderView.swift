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
                                    Image(systemName: "folder")
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("Riflessioni Libro").bold()
                                Text("11:38  Riflettere sull'impaginazione,..").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder")
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("Lista Valigia").bold()
                                Text("14:40  Cuffia").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder")
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                    }.headerProminence(.increased)
                    Section(header: Text("Previous 7 Days")) {
                        HStack{
                            
                            VStack(alignment:.leading){
                                Text("Diff").bold()
                                Text("sat").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder")
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("Music").bold()
                                Text("10:09  Bring me the Horizon").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder")
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("Riflessioni Libro").bold()
                                Text("11:38  Riflettere sull'impaginazione,..").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder")
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                        
                        
                    }
                    Section(header: Text("Previous 30 Days")) {
                        HStack{
                            VStack(alignment:.leading){
                                Text("Music").bold()
                                Text("10:09  Bring me the Horizon").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder")
                                    Text("Notes")}.foregroundColor(.gray)
                            }
                        }
                        HStack{
                            VStack(alignment:.leading){
                                Text("Riflessioni Libro").bold()
                                Text("11:38  Riflettere sull'impaginazione,..").foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "folder")
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
                    Text("62 Notes")
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
