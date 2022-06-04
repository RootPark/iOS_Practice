import UIKit


struct Song{
    let title: String
    let artist: String
    let duration: Int
    
    var formattedDuration: String{
        let minutes = duration / 60
        let seconds = duration % 60
        return "\(minutes)m \(seconds)s"
    }
}

let song = Song(title: "Hello", artist: "Adele", duration: 245)

print(song.formattedDuration)
