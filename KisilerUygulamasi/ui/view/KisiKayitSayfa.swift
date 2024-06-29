//
//  KisiKayitSayfa.swift
//  KisilerUygulamasi
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct KisiKayitSayfa: View {
    @State private var tfKisiAd = ""
    @State private var tfKisiTel = ""
    
    var viewModel = KisiKayitViewModel()
    
    var body: some View {
        VStack(spacing: 100) {
            TextField("Kişi Ad",text: $tfKisiAd)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Kişi Tel",text: $tfKisiTel)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Kaydet"){
                viewModel.kaydet(kisi_ad: tfKisiAd, kisi_tel: tfKisiTel)
                
            }
        }.navigationTitle("Kişi Kayıt")
            
    }
}

#Preview {
    KisiKayitSayfa()
}
