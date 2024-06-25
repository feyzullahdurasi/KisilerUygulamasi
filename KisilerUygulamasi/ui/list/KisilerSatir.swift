//
//  KisilerSatir.swift
//  KisilerUygulamasi
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct KisilerSatir: View {
    
    var kisi = Kisiler()
    
    var body: some View {
        VStack(alignment: .leading,spacing: 16){
            Text(kisi.kisi_ad!).font(.system(size: 25))
            Text(kisi.kisi_tel!).font(.system(size: 25)).foregroundColor(.gray)
        }
    }
}

#Preview {
    KisilerSatir()
}
