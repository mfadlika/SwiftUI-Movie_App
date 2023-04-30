//
//  ViewModelBase.swift
//  SwiftUI-Movie_App
//
//  Created by Fadli M on 30/04/23.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}

class ViewModelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none
}
