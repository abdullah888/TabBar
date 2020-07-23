//
//  ContentView.swift
//  SwiftUI2
//
//  Created by abdullah on 01/12/1441 AH.
//  Copyright © 1441 abdullah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabView : View {
    @State var index = 0
    @Environment(\.colorScheme) var scheme
    var body: some View {
        VStack(spacing : 0) {
            
            ZStack {
                Home()
                    .opacity(self.index == 0 ? 1 : 0)
                Search()
                    .opacity(self.index == 1 ? 1 : 0)
                Profile()
                    .opacity(self.index == 2 ? 1 : 0)
                Activity()
                    .opacity(self.index == 3 ? 1 : 0)
                Photo()
                    .opacity(self.index == 4 ? 1 : 0)
            }
            
            HStack{
                
                Button(action: {
                    self.index = 0
                }) {
                    HStack( spacing: 6) {
                        Image("Home")
                            // dark Mood
                            .foregroundColor(self.index == 0 ? .white : .primary)
                        if self.index == 0 {
                            Text("Home")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(self.index == 0 ? Color("tob") : Color.clear)
                    .clipShape(Capsule())
                }
                
                Spacer(minLength: 0)
                
                Button(action: {
                    self.index = 1
                }) {
                    HStack( spacing: 6) {
                        Image("Search")
                            // dark Mood
                            .foregroundColor(self.index == 1 ? .white : .primary)
                        if self.index == 1 {
                            Text("Search")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(self.index == 1 ? Color("tob") : Color.clear)
                    .clipShape(Capsule())
                }
                Spacer(minLength: 0)
                Button(action: {
                    self.index = 2
                }) {
                    HStack( spacing: 6) {
                        Image("Profile")
                            // dark Mood
                            .foregroundColor(self.index == 2 ? .white : .primary)
                        if self.index == 2 {
                            Text("Profile")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(self.index == 2 ? Color("tob") : Color.clear)
                    .clipShape(Capsule())
                }
                Spacer(minLength: 0)
                Button(action: {
                    self.index = 3
                }) {
                    HStack( spacing: 6) {
                        Image("Activity")
                            // dark Mood
                            .foregroundColor(self.index == 3 ? .white : .primary)
                        if self.index == 3 {
                            Text("Activity")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(self.index == 3 ? Color("tob") : Color.clear)
                    .clipShape(Capsule())
                }
                Spacer(minLength: 0)
                Button(action: {
                    self.index = 4
                }) {
                    HStack( spacing: 6) {
                        Image("Photo")
                            // dark Mood
                            .foregroundColor(self.index == 4 ? .white : .primary)
                        if self.index == 4 {
                            Text("Photo")
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(self.index == 4 ? Color("tob") : Color.clear)
                    .clipShape(Capsule())
                }
            }
            .padding(.horizontal,25)
            .padding(.top)
                // tobbar padding
                .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 10 : UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                // for Shadow
                .background(self.scheme == .dark ? Color.black : Color.white)
                .shadow(color: Color.primary.opacity(0.08), radius: 5, x: 5, y: -5)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    
}

struct Search : View {
    var body: some View {
        VStack {
            Text("Search")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
struct Profile : View {
    var body: some View {
        VStack {
            Text("Profile")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
struct Activity : View {
    var body: some View {
        VStack {
            Text("Activity")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
struct Photo : View {
    var body: some View {
        VStack {
            Text("Photo")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct Home : View {
    @Environment(\.colorScheme) var scheme
    @State var search = ""
    var body: some View {
        VStack {
            ZStack {
                HStack (spacing : 15){
                    Button(action: {
                        
                    }) {
                        // for dark mode adoption
                        Image("PostICon 1x")
                            .foregroundColor(.primary)
                           .padding(.horizontal,+15)
                    }
                    Spacer()
                    Button(action: {
                        
                    }) {
                        // for dark mode adoption
                        Image("Activity_Selected")
                         
                        .frame(width : 40  , height: 40)
                        .cornerRadius(20)
                    }
                    Button(action: {
                        //changing user interface style ..
                        UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = self.scheme == .dark ? .light : .dark
                        
                    }) {
                        // for dark mode adoption
                        Image(systemName: self.scheme == .dark ? "sun.max.fill" : "moon.fill")
                            .font(.system(size:22))
                            .foregroundColor(.primary)
                           .padding(.horizontal,+15)
                    }
                }
                Text("abdullah")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding()
            
            ScrollView(.vertical,showsIndicators: false){
                VStack {
                    HStack(spacing: 15) {
                        TextField("Search", text: self.$search)
                        if self.search != "" {
                            Button(action: {
                                
                            }){
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(Color.primary.opacity(0.06))
                    .cornerRadius(12)
                    
                    
                    HStack{
                        Text("الحياة جميلة")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding(.horizontal,+15)
                        
                        Spacer()
                    }
                    .padding(.top,22)
                    
                    VStack {
                        Image("1")
                            .resizable()
                            .frame(width : 350 , height: 350)
                            .cornerRadius(8)
                        
                        Text("HotCH")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding(.top,-5)
                        Text("$ 9")
                            .foregroundColor(.gray)
                            .padding(.top,8)
                            .padding(.bottom)
                    }
                    .background(Color.primary.opacity(0.06)
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .cornerRadius(25)
                    .padding(.top,95)
                        
                    )
                        .padding(.top,25)
                    HStack{
                        Text("العروض")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding(.horizontal,+15)
                        
                        Spacer()
                    }
                    .padding(.top,30)
                    .padding(.bottom,20)
                    
                    ForEach(MyData,id: \.self){MyData in
                        
                        HStack(spacing : 15) {
                            ForEach(MyData){i in
                                VStack {
                                    Image(i.Images)
                                        .resizable()
                                        .frame(width : 178, height: 178)
                                    Text(i.Title)
                                        .fontWeight(.bold)
                                    Text(i.Price)
                                        .padding(.top,6)
                                }
                                    
                                .padding()
                                .background(Color.primary.opacity(0.06))
                                .cornerRadius(10)
                                
                                
                            }
                        }
                        
                    }
                }
                .padding()
                
            }
            
            Spacer()
        }
        
    }
}

// sample Data

struct Data : Identifiable,Hashable {
    var id : Int
    var Images : String
    var Title : String
    var Price : String
}

var MyData = [[Data(id: 0, Images: "2", Title: "Swift Book", Price: "$10") ,
               Data(id: 1, Images: "3", Title: "Ice Coffee", Price: "$12")]
    ,[Data(id: 2, Images: "4", Title: "TC", Price: "$80"),
      Data(id: 3, Images: "5", Title: "Soop", Price: "$14")]]
