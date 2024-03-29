//
//  DetailEditView.swift
//  RemindThem
//
//  Created by Parker Jackman on 3/16/24.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    @State private var newAttendeeName = ""
    
    
    var body: some View {
        Form{
            Section(header: Text("Meeting Info")){
                TextField("Title", text: $scrum.title)
                HStack{
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1){
                        Text("Length")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) Min")
                }
            }
            Section(header: Text("Attendees")){
                ForEach(scrum.attendees) {attendee in
                    Text(attendee.name)
                }
                .onDelete{ indices in
                    scrum.attendees.remove(atOffsets: indices)
                    
                }
                HStack{
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {}){
                       Image(systemName: "plus.circle.fill")
                    }
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider{
    static var previews: some View{
        DetailEditView()
    }
}
