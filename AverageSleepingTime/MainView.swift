//
//  MainView.swift
//  AverageSleepingTime
//
//  Created by Tom Wu on 2024-01-16.
//

import SwiftUI

struct MainView: View {
    
    let weekdays = Calendar.current.shortWeekdaySymbols
    let steps = [7,7.6,8.1,6.5,6.8,6.9,7]
    
    var body: some View {
            Chart {
                ForEach(weekdays.indices, id: \.self) { index in
                    BarMark(x: .value("Day", weekdays[index]), y: .value("Steps", steps[index]))
                        .foregroundStyle(by: .value("Day", weekdays[index]))
                        .annotation {
                            Text("\(steps[index])")
                        }
                }
            }
    }
}

#Preview {
    MainView()
}
