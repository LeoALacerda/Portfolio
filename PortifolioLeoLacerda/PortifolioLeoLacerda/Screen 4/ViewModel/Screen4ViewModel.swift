//
//  ViewModel.swift
//  PortifolioLeoLacerda
//
//  Created by Leonardo Lacerda on 28/04/23.
//

import Foundation

class Screen4ViewModel{
    
    private var profileList: [Profile] = []
    
    func getListSize() -> Int{
        profileList.count
    }
    
    func getProfile (index: Int) -> Profile {
        profileList[index]
    }
    
    func addProfile (profile: Profile){
        profileList.append(profile)
    }
    
    func deleteProfile(index: Int){
        profileList.remove(at: index)
    }
    
    func clearAllProfile(){
        profileList.removeAll()
    }

}
