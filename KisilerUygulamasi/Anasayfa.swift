//
//  ContentView.swift
//  KisilerUygulamasi
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct Anasayfa: View {
    
    @State private var KisilerListesi = [Kisiler]()
    @State private var AramaKelimesi = ""
    
    func sil(at offsets:IndexSet){
        let kisi = KisilerListesi[offsets.first!]
        KisilerListesi.remove(at: offsets.first!)
    }
    var body: some View {
        NavigationStack{
            List{
                ForEach(KisilerListesi){kisi in
                    NavigationLink(destination: KisiDetaySayfa(kisi: kisi)){
                        KisilerSatir(kisi: kisi)
                    }
                }.onDelete(perform: sil)
                
            }.navigationTitle("Kisiler")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink(destination: KisiKayitSayfa()){
                            Image(systemName: "plus")
                        }
                    }
                    
                }.onAppear(){
                    var liste = [Kisiler]()
                    let k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "1111111")
                    let k2 = Kisiler(kisi_id: 2, kisi_ad: "Zeynep", kisi_tel: "2222222")
                    let k3 = Kisiler(kisi_id: 3, kisi_ad: "Feyzullah", kisi_tel: "33333333")
                    liste.append(k1)
                    liste.append(k2)
                    liste.append(k3)
                    KisilerListesi = liste
                }
        }.searchable(text: $AramaKelimesi, prompt: "Ara")
            /*.onChange(of: AramaKelimesi){ s in
                print(s)
            }*/
    }
}

#Preview {
    Anasayfa()
}
