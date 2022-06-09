//
//  ContentView.swift
//  AzizbekCardSwiftUI
//
//  Created by Azizbek Salimov on 08.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.init(red: 0.09, green: 0.63, blue: 0.52, alpha: 1.0))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Azizbek")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 3)
                             
                    )
                    
                Text("Azizbek Salimov")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "+998-(90)-815-75-64", imageName: "phone.fill")
                InfoView(text: "azizbek.salimov.1995@gmail.com", imageName: "envelope.fill")
                
                
                

            }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}


