//
//  KisiDetaySayfa.swift
//  KisilerUygulamasi
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct KisiDetaySayfa: View {
    @State private var tfKisiAd = ""
    @State private var tfKisiTel = ""
    
    var kisi = Kisiler()
    
    func guncelle(kisi_id:Int, kisi_ad:String, kisi_tel:String){
        
    }
    
    var body: some View {
        VStack(spacing: 100) {
            TextField("Kişi Ad",text: $tfKisiAd)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Kişi Tel",text: $tfKisiTel)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Güncelle"){
                guncelle(kisi_id: kisi.kisi_id!, kisi_ad: tfKisiAd, kisi_tel: tfKisiTel)
            }
        }.navigationTitle("Kişi Güncelle")
            .onAppear(){
                tfKisiAd = kisi.kisi_ad!
                tfKisiTel = kisi.kisi_tel!
            }
    }
}

#Preview {
    KisiDetaySayfa()
}
