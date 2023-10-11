//
//  LandmarkList.swift
//  Landmarks
//
//  Created by YOUNGJOO JI on 2023/10/11.
//

import SwiftUI

struct LandmarkList: View {
    @State var modelData: ModelData = .init()
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
        
    var body: some View {
        NavigationSplitView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks){landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label:{
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
