//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by YOUNGJOO JI on 2023/10/11.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName:"star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: ModelData().landmarks[0])
                .previewDisplayName("Turtle Rock")
            LandmarkRow(landmark: ModelData().landmarks[1])
                .previewDisplayName("Salmon")
        }
    }
}

