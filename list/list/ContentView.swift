//
//  ContentView.swift
//  list
//
//  Created by Moneerah Alajmi
//

import SwiftUI

struct ContentView: View {
    @State var groceryitems = [ "Strawberry", "Papaya","Guava", "Orange", "Dragon fruit"]
    @State var newitem = ""
    var body: some View {
       
        ZStack{
            Color.orange
                .opacity(0.55)
                .ignoresSafeArea()
            VStack{
        Text( "Your Grocery list:")
                    .font(.system(size: 25, weight: .semibold, design: .serif))
                    .padding(15)
        List(groceryitems, id:\.self){ i in
            HStack{
                Image(i)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 85, height: 85)
                Text(i)
                    .font(.system(size: 19, weight: .light, design: .serif))
                 }
                 }
                HStack {
                    
                    Button {
                        groceryitems.append(newitem)
                    } label: {
                        Image(systemName: "plus")
                            .frame(width: 85, height: 40)
                            .background(.green.opacity(0.7))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                    }
              TextField("New Items", text: $newitem)
                        .textFieldStyle(.roundedBorder)
                        .font(.system(size: 15, weight: .ultraLight, design: .serif))
                   
                    Button {
                        groceryitems.remove(at: 0)
                   
                    } label: {
                        Image(systemName: "minus")
                            .frame(width: 85, height: 40)
                            .background(.red.opacity(0.7))
                            .cornerRadius(10)
                            .foregroundColor(.black)
                    }

                } .padding()
            
            
            
            
            
            
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
