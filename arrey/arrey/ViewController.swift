//
//  ViewController.swift
//  arrey
//
//  Created by admin on 07.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var idTextFiled: UITextField!
    @IBOutlet weak var nameTextFild: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var outputTextView: UITextView!
    
    
    
    var idName = [
        ["id" : "1", "name" : "Alex"],
        ["id" : "2", "name" : "Filip"],
        ["id" : "3", "name" : "Nina"],
        ["id" : "4", "name" : "Max" ],
        ["id" : "5", "name" : "Kate"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let elements = getEvenElements(false)
        print(elements)
        
        let sortedIdName = alphabet(name: "name")
        print(sortedIdName)
        
       
    }
    
    @IBAction func newDictionaryButton(_ sender: Any) {
        guard let idText = idTextFiled.text,
              let name = nameTextFild.text,
              let id = Int(idText) else {
            return
            
            
        }
     let newDictionary = ["id" : String(id), "name" : String(name)]
        idName.append(newDictionary)
        
        let formattedOutput = "id: \(id), name: \(name)"
        
        let outputText = outputTextView.text ?? ""
            let newOutputText = "\(outputText)\n\(formattedOutput)"
            outputTextView.text = newOutputText
        
      
    }
        
    
    func getEvenElements(_ isEven: Bool) -> [[String: String]] {
        var newArray: [[String: String]] = []
        for element in idName {
            if let id = element["id"] {
                if isEvenValue(id) == isEven {
                    newArray.append(element)
                }
            }
        }
        return newArray
    }
    
    func isEvenValue(_ id: String) -> Bool {
        guard let meaning = Int(id) else {
            return false
        }
        return meaning % 2 == 0
    }
    func alphabet(name : String) -> [[String : String]] {
            return idName.sorted { ($0["name"] ?? "") > ($1["name"] ?? "") }
        }
}
        //        if let conclusion = searchDict1(id: "3") {
        //            print(conclusion)
        //        } else {
        //            print("nil")
        //        }
        
        
        
        //    func searchDict(id: String) -> [String: String]? {
        //        for dictionary in idName {
        //            if let ID = dictionary["id"], ID == id {
        //                return dictionary
        //            }
        //        }
        //        return nil
        //    }
        
//                func searchDict1(id: String) ->[String: String]? {
//                    return idName.filter {
//                        $0["id"] == id }.first
        //        }
        
        
        
        
        //1словарь в масиве 5 эдементов каждый Dictionary содердит ид и имя
        //2 создать функцию которая возвратит Dictionary из масива
        //3 выбор Dictionary происходит по имени переданную в функцию
    
