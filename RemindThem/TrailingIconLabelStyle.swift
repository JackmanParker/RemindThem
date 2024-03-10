//
//  TrailingIconLabelStyle.swift
//  RemindThem
//
//  Created by Parker Jackman on 3/9/24.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle{
    static var traillingIcon: Self{ Self() }
}
