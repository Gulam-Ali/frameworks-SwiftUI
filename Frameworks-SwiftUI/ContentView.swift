//
//  ContentView.swift
//  Frameworks-SwiftUI
//
//  Created by Gulam Ali on 01/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = frameworkGridViewModel()
    let coloumns: [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.black, .brown], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView{
                    LazyVGrid(columns: coloumns){
                        ForEach(MockData.frameworks, id: \.id){ framework in
                            NavigationLink(value: framework) {
                                FramerworCellView(framework: framework)
                            }
                        }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .navigationDestination(for: Framework.self) { framework in
                    FrameworkDetailView(framework: framework)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


