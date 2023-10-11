//
//  CircleImage.swift
//  Landmarks
//
//  Created by YOUNGJOO JI on 2023/10/11.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Markdown")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
