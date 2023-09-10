//
//  MakeTranslate.swift
//  kittyApp
//
//  Created by Алексей Суровцев on 11.09.2023.
//

import Foundation
import SwiftTranslate

class MakeTranslate {
    
    public static func makeTranslate(sourceText: String) -> String {
        let translatedText = try SwiftTranslate.translateText(text: sourceText, sourceLanguage: "en", targetLanguage: "ru")
        return translatedText
    }
    
}
