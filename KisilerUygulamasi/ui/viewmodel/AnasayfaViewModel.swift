//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import Foundation

class AnasayfaViewModel : ObservableObject {
    @Published var kisilerListesi = [Kisiler]()
    
    func kisileriYukle(){
        var liste = [Kisiler]()
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "1111111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Zeynep", kisi_tel: "2222222")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Feyzullah", kisi_tel: "33333333")
        liste.append(k1)
        liste.append(k2)
        liste.append(k3)
        kisilerListesi = liste
    }
    
    func ara(aramaKelimesi:String){
        
    }
    
    func sil(kisiSil:Int){
        
    }
}
