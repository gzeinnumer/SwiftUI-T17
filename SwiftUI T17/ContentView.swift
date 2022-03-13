//
//  ContentView.swift
//  SwiftUI T17
//
//  Created by M Fadli Zein on 13/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        VStack {
            Text("View More")
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: show ? 320 : 300, height: show ? 600 : 44)
        .background(Color.pink)
        .cornerRadius(30)
        .shadow(color: Color.pink.opacity(0.5), radius: 20)
        .onTapGesture {
            withAnimation(.easeIn){
                show.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
