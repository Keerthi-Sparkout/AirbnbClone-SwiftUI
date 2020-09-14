//
//  PropertyDetailsView.swift
//  AirbnbClone-SwiftUI
//
//  Created by Keerthi on 23/08/20.
//  Copyright © 2020 Hxtreme. All rights reserved.
//

import SwiftUI

struct PropertyDetailsView: View {
    @State private var posX: CGFloat = 0
    let loremIpsum = """
    Lorem ipsum dolor sit amet consectetur adipiscing elit donec, gravida commodo hac non mattis augue duis vitae inceptos, laoreet taciti at vehicula cum arcu dictum. Cras netus vivamus sociis pulvinar est erat, quisque imperdiet velit a justo maecenas, pretium gravida ut himenaeos nam. Tellus quis libero sociis class nec hendrerit, id proin facilisis praesent bibendum vehicula tristique, fringilla augue vitae primis turpis.
    Sagittis vivamus sem morbi nam mattis phasellus vehicula facilisis suscipit posuere metus, iaculis vestibulum viverra nisl ullamcorper lectus curabitur himenaeos dictumst malesuada tempor, cras maecenas enim est eu turpis hac sociosqu tellus magnis. Sociosqu varius feugiat volutpat justo fames magna malesuada, viverra neque nibh parturient eu nascetur, cursus sollicitudin placerat lobortis nunc imperdiet. Leo lectus euismod morbi placerat pretium aliquet ultricies metus, augue turpis vulputa
    te dictumst mattis egestas laoreet, cubilia habitant magnis lacinia vivamus etiam aenean.
"""
    
    var body: some View {
        GeometryReader { geo in
            ScrollView(.vertical, showsIndicators: true) {
            //    GeometryReader { g in
                    Image("property1")
                        .resizable()
                        .scaledToFill()
                        .frame(height: self.posX == 100 ? 150 : 250)
                        .clipped()
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Paris Best Kept Secrets Tour")
                            .font(.system(size: 22))
                            .fontWeight(.semibold)
                        HStack(alignment: .center, spacing: 16.0) {
                            Image("property1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                                .shadow(radius: 2)
                            (Text("Hosted by  ") .fontWeight(.medium) +
                                Text("Keerthi").foregroundColor(Color.red)
                                    .fontWeight(.semibold)).frame(height: 40)
                            
                        }
                      //  Text(self.loremIpsum)
                        Button(action: {
                             self.posX = self.posX == 100 ? 0 : 100
                        }) {
                            Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                        }
                        //  Text("Directly overlooking Fan Pier’s activity and Boston Harbor, 100 Northern Avenue @ Fan Pier pairs breathtaking views of Boston’s waterfront with a magnificent backdrop of the city skyline.")
                        
                    }
                    .padding(.horizontal)
               // }
            }
            .position(x: geo.size.width / 2, y: geo.size.height / 2)
        }
    }
}

struct PropertyDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyDetailsView()
    }
}
