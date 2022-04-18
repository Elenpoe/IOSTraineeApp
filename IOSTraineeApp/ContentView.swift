//
//  ContentView.swift
//  IOSTraineeApp
//
//  Created by Helen Poe on 16.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(dataV){ dataV in
                VStack{
                    NavigationLink(destination: ElectionPictureView()){
                        VStack(alignment: .leading){
                            
                            Text("\(dataV.titleV)")
                                .font(.headline)
                            Text("\(dataV.messageV)")
                                .foregroundColor(.gray)
                                .lineLimit(2)
                            
                            HStack{
                                
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.red)
                                Text("\(dataV.likesV)")
                                    .foregroundColor(.gray)
                                
                                Spacer()
                                
                                Text("\(dataV.updateV)")
                                    .foregroundColor(.gray)
                            }
                            
                            Text("Login")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 265.0, height: 45.0)
                                .background(Color.pink)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                            
                        } .padding()
                            .navigationBarTitle("Some List Title")
                        //                        .navigationBarTitleDisplayMode(.inline)
                            .navigationBarItems(trailing:
                                                    Button("list"){
                                print("list tapped")
                            })
                            
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DataListS: Identifiable {
    var id = UUID()
    
    var titleV: String
    var messageV: String
    var likesV: Int
    var updateV: String
}
    
var dataV = [
    DataListS(titleV: "The Ingenious Prank Music Legend Mozart Played On Someone He Couldn’t Stand", messageV: "He was also a bit of a jokester and liked to have fun at the expense of others.", likesV: 19738, updateV: "1 day ago"),
    DataListS(titleV: "The Ingenious Prank Music Legend Mozart Played On Someone He Couldn’t Stand", messageV: "He was also a bit of a jokester and liked to have fun at the expense of others.", likesV: 19738, updateV: "1 day ago"),
    DataListS(titleV: "The Ingenious Prank Music Legend Mozart Played On Someone He Couldn’t Stand", messageV: "He was also a bit of a jokester and liked to have fun at the expense of others.", likesV: 19738, updateV: "1 day ago"),
    DataListS(titleV: "The Ingenious Prank Music Legend Mozart Played On Someone He Couldn’t Stand", messageV: "He was also a bit of a jokester and liked to have fun at the expense of others.", likesV: 19738, updateV: "1 day ago"),
    DataListS(titleV: "The Ingenious Prank Music Legend Mozart Played On Someone He Couldn’t Stand", messageV: "He was also a bit of a jokester and liked to have fun at the expense of others.", likesV: 19738, updateV: "1 day ago"),
    DataListS(titleV: "The Ingenious Prank Music Legend Mozart Played On Someone He Couldn’t Stand", messageV: "He was also a bit of a jokester and liked to have fun at the expense of others.", likesV: 19738, updateV: "1 day ago")
]
