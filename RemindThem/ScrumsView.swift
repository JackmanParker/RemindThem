//
//  ScrumsView.swift
//  RemindThem
//
//  Created by Parker Jackman on 3/9/24.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View{
        NavigationStack{
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)){
                CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar{
                Button(action: {}){
                    Image(systemName: "plus")
                }
                .accessibilityLabel("Add Scrum")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider{
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
