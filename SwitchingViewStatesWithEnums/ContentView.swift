//
//  ContentView.swift
//  SwitchingViewStatesWithEnums
//
//  Created by admin on 1/9/24.
//

import MapKit
import SwiftUI

struct LoadingView: View {
    var body: some View {
        Map()
            .mapStyle(.hybrid(elevation: .realistic))
    }
}

struct SuccessView: View {
    var body: some View {
        Text("Success!")
    }
}

struct FailedView: View {
    var body: some View {
        Text("Failed!")
    }
}

struct ContentView: View {
    enum LoadingState {
        case loading, success, failed
    }
    
    @State private var loadingState = LoadingState.loading
    
    var body: some View {
        switch loadingState {
        case .loading:
            LoadingView()
        case .success:
            SuccessView()
        case .failed:
            FailedView()
        }
    }
}

#Preview {
    ContentView()
}
