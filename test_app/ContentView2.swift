//
//  ContentView.swift
//  test_app
//
//  Created by Mizuno Ofuji - 大藤 瑞乃 on 2024/11/27.
//

import SwiftUI

struct ContentView2: View {
    
    @State var toContentView: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Rectangle()
                    .foregroundColor(.white)
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                    ZStack{
                        NavigationLink(
                            destination: ContentView(),
                            isActive: $toContentView,
                            //swdae q
                            label:{
                                Button(action: {self.toContentView=true}){
                                    Rectangle()
                                        .foregroundColor(.blue)
                                        .cornerRadius(10)
                                        .frame(width:200,height:70)

                                }
                                .shadow(radius: 10, x: 10, y: 10)
                            }
                        )
                        Text("押してね")
                                    .foregroundColor(.white)
                                    .bold()
                        }
                }
                Rectangle()
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
