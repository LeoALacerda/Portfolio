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
                        Application(appTitle: "GitHub", appSubTitle: "Projects, ideas & code to go", appImage: "GitHub", appSize: 130.4, linkID: "id1477376905?l=en", appScreenshots: ["GitHub1", "GitHub2", "GitHub3", "GitHub4"]),
                        Application(appTitle: "Figma and FigJam",appSubTitle: "View designs, sketch, & mirror", appImage: "Figma", appSize: 29.5, linkID: "id1152747299?l=en", appScreenshots: ["Figma1", "Figma2", "Figma3", "Figma4"]),
                        Application(appTitle: "Trello",appSubTitle: "Projects? Workflows? Team up!", appImage: "Trello", appSize: 206.6, linkID: "id461504587?l=en", appScreenshots: ["Trello1", "Trello2", "Trello3", "Trello4"]),
                        Application(appTitle: "Apple Developer",appSubTitle: "Developer Tools", appImage: "Apple Developer", appSize: 100, linkID: "id640199958?l=en", appScreenshots: ["AppleDeveloper1", "AppleDeveloper2", "AppleDeveloper3", "AppleDeveloper4"]),
                        Application(appTitle: "LinkedIn",appSubTitle: "Network & Find Jobs For You", appImage: "LinkedIn", appSize: 14.3, linkID: "id288429040?l=en", appScreenshots: ["AppleDeveloper1", "AppleDeveloper2", "AppleDeveloper3", "AppleDeveloper4"]),
                        Application(appTitle: "Discord",appSubTitle: "Group Chat, Friends & Gaming", appImage: "Discord", appSize: 177.1, linkID: "id985746746?l=en", appScreenshots: ["Discord1", "Discord2", "Discord3", "Discord4"]),
                        Application(appTitle: "Microsoft Teams",appSubTitle: "Call. Chat. Collaborate", appImage: "Teams", appSize: 312.6, linkID: "id1113153706?l=en", appScreenshots: ["Teams1", "Teams2", "Teams3", "Teams4"]),
                        Application(appTitle: "Udemy Online Video",appSubTitle: "Learn Coding, Python & More", appImage: "Udemy", appSize: 106.4, linkID: "id562413829?l=en", appScreenshots: ["Udemy1", "Udemy2", "Udemy3", "Udemy4"])
                    ]
                ),
        Category(categoryName: "Music Streamings", categoryList:
                    [
                        Application(appTitle: "TIDAL Music: HiFi, Ad-free", appSubTitle: "Music is better on TIDAL", appImage: "Tidal", appSize: 123.1, linkID: "id913943275?l=en", appScreenshots: ["Tidal1", "Tidal2", "Tidal3", "Tidal4"]),
                        Application(appTitle: "Apple Music", appSubTitle: "Over 100 million songs.", appImage: "Apple Music", appSize: 100, linkID: "id1108187390?l=en", appScreenshots: ["AppleMusic1", "AppleMusic2", "AppleMusic3", "AppleMusic4"]),
                        Application(appTitle: "SoundCloud - Music & Playlists", appSubTitle: "Find your next song & beats", appImage: "SoundCloud", appSize: 153.4, linkID: "id336353151?l=en", appScreenshots: ["SoundCloud1", "SoundCloud2", "SoundCloud3", "SoundCloud4"]),
                        Application(appTitle: "Youtube Music", appSubTitle: "Music world dedicated to you", appImage: "Youtube Music", appSize: 193.3, linkID: "id1017492454?l=en", appScreenshots: ["YoutubeMusic1", "YoutubeMusic2", "YoutubeMusic3", "YoutubeMusic4"]),
                        Application(appTitle: "Spotify - Music and Podcasts", appSubTitle: "Listen to Songs and Playlists", appImage: "Spotify", appSize: 135.8, linkID: "id324684580?l=en", appScreenshots: ["Spotify1", "Spotify2", "Spotify3", "Spotify4"])
                    ]
                ),
        Category(categoryName: "Games", categoryList:
                    [
                        Application(appTitle: "Mario Kart Tour", appSubTitle: "Race around the world!", appImage: "Mario Kart Tour", appSize: 220.4, linkID: "id1293634699?l=en", appScreenshots: ["MarioKartTour1", "MarioKartTour2", "MarioKartTour3", "MarioKartTour4"]),
                        Application(appTitle: "Crossy Road", appSubTitle: "Endless Arcade Hopper", appImage: "Crossy Road", appSize: 166.7, linkID: "id924373886?l=en", appScreenshots: ["CrossyRoad1", "CrossyRoad2", "CrossyRoad3", "CrossyRoad4"]),
                        Application(appTitle: "Cut The Rope", appSubTitle: "Evergreen puzzle", appImage: "Cut The Rope", appSize: 215.5, linkID: "id1024506959?l=en", appScreenshots: ["CutTheRope1", "CutTheRope2", "CutTheRope3", "CutTheRope4"]),
                        Application(appTitle: "Temple Run 2", appSubTitle: "Grab the Idol and run!", appImage: "Temple Run 2", appSize: 272.9, linkID: "id572395608?l=en", appScreenshots: ["TempleRun1", "TempleRun2", "TempleRun3", "TempleRun4"])
                    ]
                ),
        Category(categoryName: "Social Networking", categoryList:
                    [
                        Application(appTitle: "Instagram", appSubTitle: "Photo & Video", appImage: "Instagram", appSize: 265.8, linkID: "id389801252?l=en", appScreenshots: ["Instagram1", "Instagram2", "Instagram3", "Instagram4"]),
                        Application(appTitle: "Facebook", appSubTitle: "Social Networking", appImage: "Facebook", appSize: 301.8, linkID: "id284882215?l=en", appScreenshots: ["Facebook1", "Facebook2", "Facebook3", "Facebook4"]),
                        Application(appTitle: "Twitter", appSubTitle: "Live news, sports, and chat", appImage: "Twitter", appSize: 221, linkID: "id333903271?l=en", appScreenshots: ["Twitter1", "Twitter2", "Twitter3", "Twitter4"]),
                        Application(appTitle: "WhatsApp Messenger", appSubTitle: "Simple. Reliable. Private", appImage: "Whatsapp", appSize: 149.4, linkID: "id310633997?l=en", appScreenshots: ["Whatapp1", "Whatapp2", "Whatapp3", "Whatapp4"]),
                        Application(appTitle: "TikTok - Videos, Music & LIVE", appSubTitle: "Watch, discover and stream!", appImage: "TikTok", appSize: 317.1, linkID: "id835599320?l=en", appScreenshots: ["Tiktok1", "Tiktok2", "Tiktok3", "Tiktok4"]),
                        Application(appTitle: "Messenger", appSubTitle: "Text, audio and video calls", appImage: "Messenger", appSize: 102.9, linkID: "id454638411?l=en", appScreenshots: ["Messenger1", "Messenger2", "Messenger3", "Messenger4"]),
                    ]
                ),
        Category(categoryName: "Streamings", categoryList:
                    [
                        Application(appTitle: "Netflix", appSubTitle: "Start Watching", appImage: "Netflix", appSize: 126.1, linkID: "id363590051?l=en", appScreenshots: ["Netflix1", "Netflix2", "Netflix3"]),
                        Application(appTitle: "Disney+", appSubTitle: "Endless entertainment", appImage: "Disney+", appSize: 203.6, linkID: "id1446075923?l=en", appScreenshots: ["Disney1", "Disney2", "Disney3", "Disney4"]),
                        Application(appTitle: "Youtube: Watch, Listen, Stream", appSubTitle: "Videos, Music and Live Streams", appImage: "Youtube", appSize: 284, linkID: "id544007664?l=en", appScreenshots: ["Youtube1", "Youtube2", "Youtube3", "Youtube4"]),
                        Application(appTitle: "Amazon Prime Video", appSubTitle: "Originals, movies, TV, sports", appImage: "Prime Video", appSize: 131.9, linkID: "id545519333?l=en", appScreenshots: ["PrimeVideo1", "PrimeVideo2", "PrimeVideo3", "PrimeVideo4"]),
                        Application(appTitle: "Star+", appSubTitle: "More of what you like", appImage: "Star+", appSize: 149.6, linkID: "id1549262958?l=en", appScreenshots: ["Star1", "Star2", "Star3", "Star4"]),
                        Application(appTitle: "HBO Max: Stream TV & Movies", appSubTitle: "Watch films & shows you love", appImage: "HBO Max", appSize: 60, linkID: "id971265422?l=en", appScreenshots: ["HBO1", "HBO2", "HBO3", "HBO4"]),
                        Application(appTitle: "Globoplay", appSubTitle: "Series, sports, novels & more.", appImage: "Globoplay", appSize: 164.6, linkID: "id536321738?l=en", appScreenshots: ["Globoplay1", "Globoplay2", "Globoplay3", "Globoplay4"])
                    ]
                )
       
    ]
}
