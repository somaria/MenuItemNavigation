//
//  ContentView.swift
//  MenuItemNavigation
//
//  Created by admin on 25/4/21.
//

import SwiftUI

struct ContentView: View {
    var menuButtons = ["Profile", "About Us", "Contact Us"]
    
    var body: some View {
        NavigationView { /// 1.
            VStack { /// 2.
                ForEach(menuButtons, id: \.self) { menu in
                    NavigationLink(
                        destination:
                            Group { /// 3.
                                if menu == "Profile" {
                                    Profile()
                                }
                                if menu == "About Us" {
                                    AboutUs()
                                }
                            }
                    ) {
                        Text(menu)
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
