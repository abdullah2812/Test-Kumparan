//
//  DataViewModel.swift
//  Kumparan
//
//  Created by Irianda on 30/07/22.
//

import Foundation

class apiCall {
    func getUserComments(completion:@escaping ([File]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let comments = try! JSONDecoder().decode([File].self, from: data!)
            print(comments)
            
            DispatchQueue.main.async {
                completion(comments)
            }
        }
        .resume()
    }
}


//var item = ""
//class DataViewModel:ObservableObject{
//    @Published var data = [File]()
//
//    init() {
//        let url = "https://jsonplaceholder.typicode.com/posts"
//
//        let session = URLSession(configuration: .default)
//
//        session.dataTask(with: URL(string: url)!){(data, _,err)in
//            if err != nil{
//                print((err?.localizedDescription)!)
//                return
//            }
//
//            let json = try!JSON(data:data!)
//            let items = json [""].array!
//
//            for dataPost in items{
//                let title = dataPost["title"].stringValue
////                let body = dataPost["posts"].stringValue
////                let name = dataPost["posts"].stringValue
////                let companyName = dataPost["posts"].stringValue
////                let comment = dataPost["posts"].stringValue
////                let image = dataPost["url"].stringValue
//
//
//                DispatchQueue.main.async {
//                    self.data.append(File(id: UUID(), title: title))
//                }
//            }
//        }.resume()
//
//    }
//}
