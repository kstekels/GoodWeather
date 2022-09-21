//
//  String+Extension.swift
//  GoodWeather
//
//  Created by karlis.stekels on 20/09/2022.
//

import Foundation

extension String {
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
