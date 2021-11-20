//
//  ContentView.swift
//  TaslaApp
//
//  Created by Shahriar Nasim Nafi on 20/11/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedStatus: Tesla = .lock
    var body: some View {
       TeslaView()
            .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
