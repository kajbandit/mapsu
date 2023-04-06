//
//  dormitory.swift
//  map su
//
//  Created by admin on 1/4/2566 BE.
//

import SwiftUI


struct dormitory: View {
    private let images: [(name: String, destination: AnyView)] = [
        ("หอพัก2", AnyView(towerM())),
        ("หอพัก1", AnyView(towerG()))
    ]
    @State private var selectedImage: String? = nil

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                    ForEach(images, id: \.name) { image in
                        NavigationLink(
                            destination: image.destination
//                            tag: image.name,
//                            selection: $selectedImage
                        ) {
                            Image(image.name)
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
                                .frame(width: 500, height: 130)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("อาคารเรียน")
        }
    }
}

struct dormitory_Previews: PreviewProvider {
    static var previews: some View {
        dormitory()
    }
}
