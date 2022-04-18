//
//  ElectionPictureView.swift
//  IOSTraineeApp
//
//  Created by Helen Poe on 16.04.2022.
//

import SwiftUI

struct ElectionPictureView: View {
    var body: some View {
            
        NavigationView{
            VStack(alignment: .leading){
                Image(systemName: "moon.stars")
                    .resizable()
                    .frame(width: 360, height: 360, alignment: .top)
                    .foregroundColor(Color.init(#colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)))
                
                Text("Title")
                    .font(.largeTitle)
                
                Text("Long Massege")
                    .foregroundColor(.gray)
                    .lineLimit(nil)
                
                HStack{
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    
                    Text("123")
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text("day ago")
                        .foregroundColor(.gray)
                }
                
                Spacer()
                                    
                
            } .padding()
        }
        
            
    }
}

struct ElectionPictureView_Previews: PreviewProvider {
    static var previews: some View {
        ElectionPictureView()
    }
}
