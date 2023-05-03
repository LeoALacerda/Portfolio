//
//  ApplicationsViewModel.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 28/04/23.
//

import Foundation

class ApplicationsViewModel{
    
    var listApp: [Category] = [Category(categoryName: "Games", categoryList: [Application(appTitle: "Angry Birds", appImage: "Angry Birds"),
                                                                              Application(appTitle: "Crossy Road", appImage: "Crossy Road"),
                                                                              Application(appTitle: "Cut The Rope", appImage: "Cut The Rope"),
                                                                              Application(appTitle: "Fruit Ninja", appImage: "Fruit Ninja"),
                                                                              Application(appTitle: "Labyrinth 2", appImage: "Labyrinth 2"),
                                                                              Application(appTitle: "Mario Kart Tour", appImage: "Mario Kart Tour"),
                                                                              Application(appTitle: "Temple Run 2", appImage: "Temple Run 2")
                                                                             ]
                                       ),
                               Category(categoryName: "Developer Tools", categoryList: [Application(appTitle: "Apple Developer", appImage: "Apple Developer"),
                                                                                        Application(appTitle: "TablePlus", appImage: "TablePlus"),
                                                                                        Application(appTitle: "TestFlight", appImage: "TestFlight"),
                                                                                        Application(appTitle: "WorldWideWeb", appImage: "WorldWideWeb"),
                                                                                        Application(appTitle: "Zeitgeist", appImage: "Zeitgeist"),
                                                                                       ]
                                       ),
                               Category(categoryName: "Social NetWorking", categoryList: [Application(appTitle: "Facebook", appImage: "Facebook"),
                                                                                          Application(appTitle: "Instagram", appImage: "Instagram"),
                                                                                          Application(appTitle: "TikTok", appImage: "TikTok"),
                                                                                          Application(appTitle: "Twitter", appImage: "Twitter"),
                                                                                          Application(appTitle: "Whatsapp", appImage: "Whatsapp"),
                                                                                          Application(appTitle: "Messenger", appImage: "Messenger"),
                                                                                          Application(appTitle: "Telegram", appImage: "Telegram")
                                                                                         ]
                                       ),
                               Category(categoryName: "Streamings", categoryList: [Application(appTitle: "Youtube", appImage: "Youtube"),
                                                                                   Application(appTitle: "Disney+", appImage: "Disney+"),
                                                                                   Application(appTitle: "Globoplay", appImage: "Globoplay"),
                                                                                   Application(appTitle: "HBO Max", appImage: "HBO Max"),
                                                                                   Application(appTitle: "Netflix", appImage: "Netflix"),
                                                                                   Application(appTitle: "Paramount+", appImage: "Paramount+"),
                                                                                   Application(appTitle: "Prime Video", appImage: "Prime Video"),
                                                                                   Application(appTitle: "Star+", appImage: "Star+"),
                                                                                  ]
                                       ),
                               Category(categoryName: "Navigation", categoryList: [Application(appTitle: "Anchor GPS", appImage: "Anchor GPS"),
                                                                                   Application(appTitle: "Apple Maps", appImage: "Apple Maps"),
                                                                                   Application(appTitle: "Google Maps", appImage: "Google Maps"),
                                                                                   Application(appTitle: "Waze", appImage: "Waze"),
                                                                                   Application(appTitle: "Where Am I?", appImage: "Where Am I?"),
                                                                                  ]
                                       )]
}
