//
//  ViewController.swift
//  kittyApp
//
//  Created by Алексей Суровцев on 11.09.2023.
//

import UIKit
import Alamofire
class ViewController: UIViewController {

    @IBOutlet weak var translatedFact: UILabel!
    private var responseResult = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    private func makeRequest() {
        AF.request("https://catfact.ninja/fact").response { response in
            guard let data = response.data else {
                return
            }
            let catFact = try? JSONDecoder().decode(CatFact.self, from: data)
            let translate = MakeTranslate.makeTranslate(sourceText: catFact!.fact)
            self.responseResult = translate
        }
    }


    @IBAction func didTapGetFfact(_ sender: Any) {
        makeRequest()
        translatedFact.text = self.responseResult
    }
}

