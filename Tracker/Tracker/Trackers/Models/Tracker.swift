import UIKit

struct Tracker: Equatable, Hashable {
    let id: UUID
    let name: String
    let color: UIColor
    let emoji: String
    let days: [Weekday]
    let type: TrackerType
    
    init(id: UUID, name: String, color: UIColor, emoji: String, days: [Weekday], type: TrackerType) {
        self.id = id
        self.name = name
        self.color = color
        self.emoji = emoji
        self.days = days
        self.type = type
    }
}

enum TrackerType {
    case habbit
    case event
}
