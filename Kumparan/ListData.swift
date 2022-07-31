//
//  ListData.swift
//  Kumparan
//
//  Created by Irianda on 30/07/22.
//

import SwiftUI


struct ListData: View {
    @State var dataViewModel = [File]()
//    @ObservedObject var dataViewModel = DataViewModel()
   var body: some View {
      NavigationView{
        List(dataViewModel){item in
            Text(item.title)
                }
              }
      .onAppear(){
        apiCall().getUserComments{(dataViewModel)in
            self.dataViewModel = dataViewModel
        }
      }
          }
//        }
//    }
}

struct ListData_Previews: PreviewProvider {
    static var previews: some View {
        ListData()
    }
}
