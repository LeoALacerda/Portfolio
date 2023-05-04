//
//  ApplicationsViewModel.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 28/04/23.
//

import Foundation

class ApplicationsViewModel{
    
    var listApp: [Category] =
    [
        Category(categoryName: "Developer Tools", categoryList:
                    [
                        Application(appTitle: "GitHub", appImage: "GitHub"),
                        Application(appTitle: "Figma", appImage: "Figma"),
                        Application(appTitle: "Trello", appImage: "Trello"),
                        Application(appTitle: "Apple Developer", appImage: "Apple Developer"),
                        Application(appTitle: "LinkedIn", appImage: "LinkedIn"),
                        Application(appTitle: "Discord", appImage: "Discord"),
                        Application(appTitle: "Teams", appImage: "Teams"),
                        Application(appTitle: "Udemy", appImage: "Udemy")
                    ]
                ),
        Category(categoryName: "Music Streamings", categoryList:
                    [
                        Application(appTitle: "Tidal", appImage: "Tidal"),
                        Application(appTitle: "Apple Music", appImage: "Apple Music"),
                        Application(appTitle: "Spotify", appImage: "Spotify"),
                        Application(appTitle: "SoundCloud", appImage: "SoundCloud"),
                        Application(appTitle: "Youtube Music", appImage: "Youtube Music"),
                    ]
                ),
        Category(categoryName: "Games", categoryList:
                    [
                        Application(appTitle: "Mario Kart Tour", appImage: "Mario Kart Tour"),
                        Application(appTitle: "Crossy Road", appImage: "Crossy Road"),
                        Application(appTitle: "Cut The Rope", appImage: "Cut The Rope"),
                        Application(appTitle: "Angry Birds", appImage: "Angry Birds"),
                        Application(appTitle: "Fruit Ninja", appImage: "Fruit Ninja"),
                        Application(appTitle: "Labyrinth 2", appImage: "Labyrinth 2"),
                        Application(appTitle: "Temple Run 2", appImage: "Temple Run 2")
                    ]
                ),
        Category(categoryName: "Social Networking", categoryList:
                    [
                        Application(appTitle: "Instagram", appImage: "Instagram"),
                        Application(appTitle: "Facebook", appImage: "Facebook"),
                        Application(appTitle: "Twitter", appImage: "Twitter"),
                        Application(appTitle: "Whatsapp", appImage: "Whatsapp"),
                        Application(appTitle: "TikTok", appImage: "TikTok"),
                        Application(appTitle: "Messenger", appImage: "Messenger"),
                        Application(appTitle: "Telegram", appImage: "Telegram")
                    ]
                ),
        Category(categoryName: "Streamings", categoryList:
                    [
                        Application(appTitle: "HBO Max", appImage: "HBO Max"),
                        Application(appTitle: "Netflix", appImage: "Netflix"),
                        Application(appTitle: "Disney+", appImage: "Disney+"),
                        Application(appTitle: "Youtube", appImage: "Youtube"),
                        Application(appTitle: "Prime Video", appImage: "Prime Video"),
                        Application(appTitle: "Star+", appImage: "Star+"),
                        Application(appTitle: "Globoplay", appImage: "Globoplay"),
                        Application(appTitle: "Paramount+", appImage: "Paramount+")
                    ]
                )
       
    ]
}
