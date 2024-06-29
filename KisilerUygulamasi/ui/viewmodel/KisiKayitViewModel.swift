//
//  KisiKayitViewModel.swift
//  KisilerUygulamasi
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import Foundation
import CoreData

class KisiKayitViewModel {
    
    let context = persistentContainer.viewContext
    
    func kaydet(kisi_ad:String, kisi_tel:String){
        let kisi = KisilerModel(context: context)
        kisi.kisi_ad = kisi_ad
        kisi.kisi_tel = kisi_tel
        saveContext()
    }
}
