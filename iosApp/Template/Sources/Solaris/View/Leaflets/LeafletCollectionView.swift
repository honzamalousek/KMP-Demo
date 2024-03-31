//
//  LeafletCollectionView.swift
//
//
//  Created by Jan Maloušek on 28.03.2024.
//

import SwiftUI
import Shared
import SwiftUICore

struct LeafletCollectionView: View {
    @StateValue
    private var viewState: LeafletCollectionViewState
    
    private var router: LeafletCollectionRouter = inject()
    private let viewModel: LeafletCollectionComponentViewModel
    
    public init(component: LeafletCollectionComponent) {
        self._viewState = StateValue(component.viewState)
        self.viewModel = component.viewModel
    }
    
    var body: some View {
        VStack {
            Text("LeafletCollection")
                .font(.title)
            
            switch onEnum(of: viewState) {
            case .loading:
                loading
            case let .error(error):
                Text("error: \(error.description())")
            case let .success(data):
                layoutLeaflets(leaflets: data.leaflets as! [LeafletModel])
            }
            
            Spacer()
            
            Button(
                action: {
                    viewModel.closeIn3Seconds()
                },
                label: {
                    Text("close in 3 seconds")
                }
            )
        }
        .onAppear {
            viewModel.setup(token: "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTE5MDIwOTMsImlhdCI6MTcxMTkwMTc5MywiaXNzIjoiQXBwZWxpc0lkZW50aXR5UHJvdmlkZXIiLCJjbGFpbXMiOnsiYXBwZWxpcy5kZXZpY2VJZCI6IjE2OTg2IiwiYXBwZWxpcy5tb2JpbGVVc2VySWQiOiIxODU5MTcxOSIsImFwcGVsaXMucHJvamVjdElkIjoiMSJ9fQ.9RtVp_JZCnIa3CdUugNkMqGzesSQgv9G46Vqe63T9t1EvMMmoqwGRN5owChZP8I3oTcsNI_fnuT91lCC-w3bCw")
        }
    }
    
    private var loading: some View {
        VStack{
            Spacer()
            
            ProgressView()
            
            Spacer()
        }
    }
    
    private func layoutLeaflets(leaflets: [LeafletModel]) -> some View {
        VStack{
            Text("leaflte collection: ")
                .font(.caption)
            
            ForEach(leaflets, id: \.title) { leaflet in
                Text(leaflet.title)
            }
        }
    }
}
