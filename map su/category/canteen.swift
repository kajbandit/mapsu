//
//  canteen.swift
//  map su
//
//  Created by admin on 1/4/2566 BE.
//

import SwiftUI


struct canteen: View {
    private let images: [(name: String, destination: AnyView)] = [
        ("โรงอาหาร2", AnyView(canteenn())),
        ("โรงอาหาร1", AnyView(canteenn2())),
        ("โรงอาหาร3", AnyView(market())),
        ("โรงอาหาร4", AnyView(__11()))
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


struct canteen_Previews: PreviewProvider {
    static var previews: some View {
        canteen()
    }
}
