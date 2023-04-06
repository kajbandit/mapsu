//
//  recreation.swift
//  map su
//
//  Created by admin on 1/4/2566 BE.
//

import SwiftUI




struct NanBuilding: View {
    private let images: [(name: String, destination: AnyView)] = [
        ("นันทนาการ6", AnyView(nnnnnnn())),
        ("นันทนาการ1", AnyView(gym())),
        ("นันทนาการ3", AnyView(activity())),
        ("นันทนาการ2", AnyView(garden())),
        ("นันทนาการ4", AnyView(ganesha())),
        ("นันทนาการ5", AnyView(depression()))
    ]
    @State private var selectedImage2: String? = nil

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                    ForEach(images, id: \.name) { image in
                        NavigationLink(
                            destination: image.destination
//                            tag: image.name,
//                            selection: $selectedImage2
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
            .navigationTitle("นันทนาการ")
        }
    }
}


struct NanBuilding_Previews: PreviewProvider {
    static var previews: some View {
        NanBuilding()
    }
}
