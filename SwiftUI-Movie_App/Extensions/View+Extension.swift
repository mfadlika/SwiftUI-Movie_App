//
//  View+Extension.swift
//  SwiftUI-Movie_App
//
//  Created by Fadli M on 30/04/23.
//

import Foundation
import SwiftUI

extension View {
    
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
}
