//
//  frameworkCellView.swift
//  Frameworks-SwiftUI
//
//  Created by Gulam Ali on 02/07/24.
//

import Foundation
import SwiftUI

struct FramerworCellView: View {
    
    let framework: Framework
    
    var body: some View{
        VStack(spacing: 10){
            Image(framework.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
            Text(framework.name)
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
