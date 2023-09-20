//
//  TimeFormatting.swift
//  CompIRL
//
//  Created by João Lucas G. on 18/09/23.
//

import Foundation


func calcTimeSince (date:Date) -> String {
    let minutes = Int(-date.timeIntervalSinceNow)/60
    let hours = minutes/60
    let days = hours/24
    
    if minutes < 120 {
        return "\(minutes) minutos atrás"
    } else if hours <= 48 {
        return "\(hours) horas atrás"
    } else {
        return "\(days) dias atrás"
    }
}
