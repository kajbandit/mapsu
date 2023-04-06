//
//  classroom.swift
//  map su
//
//  Created by admin on 1/4/2566 BE.
//

import SwiftUI


struct classroom: View {
    private let images: [(name: String, destination: AnyView)] = [
        ("อาคาร1", AnyView(manage())),
        ("อาคาร2", AnyView(technology())),
        ("อาคาร3", AnyView(science())),
        ("อาคาร4", AnyView(manage()))
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






struct classroom_Previews: PreviewProvider {
    static var previews: some View {
        classroom()
    }
}
