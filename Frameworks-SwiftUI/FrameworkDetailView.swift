//
//  FrameworkDetailView.swift
//  Frameworks-SwiftUI
//
//  Created by Gulam Ali on 02/07/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
   
    @State private var isShowingSafariVC = false
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.black, .brown], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
    
            VStack{
                Spacer()
                FramerworCellView(framework: framework)
                Text(framework.description)
                    .foregroundColor(.white)
                    .font(.body)
                    .padding()
                Spacer()
                Button(action: {
                    print("learn more tapped")
                    isShowingSafariVC.toggle()
                }) {
                    Text("Learn more")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(width: 280, height: 55)
                        .background(Color.brown)
                        .cornerRadius(12)
                }.padding()
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariVC) {
            safariView(url: URL(string: framework.urlString)!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
