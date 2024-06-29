//
//  KisiDetayViewModel.swift
//  KisilerUygulamasi
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import Foundation
import CoreData

class KisiDetayViewModel {
    
    func guncelle(kisi:KisilerModel, kisi_ad:String, kisi_tel:String){
        kisi.kisi_ad = kisi_ad
        kisi.kisi_tel = kisi_tel
        saveContext()
    }
}
