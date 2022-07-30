//
//  ContentView.swift
//  FileManagerBootcamp
//
//  Created by Дмитрий Спичаков on 30.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FileManagerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let image = viewModel.image {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .clipped()
                        .cornerRadius(10)
                }
                
                HStack {
                    Button {
                        viewModel.saveImage()
                    } label: {
                        Text("Save to File Manager")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                            .padding(.horizontal)
                            .background(.blue)
                            .cornerRadius(10)
                    }
                    
                    Button {
                        viewModel.deleteImage()
                    } label: {
                        Text("Delete from File Manager")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                            .padding(.horizontal)
                            .background(.red)
                            .cornerRadius(10)
                    }
                }
                
                Text(viewModel.infoMessage)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.purple)
                
                Spacer()
            }
            .navigationTitle("File Manager")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
