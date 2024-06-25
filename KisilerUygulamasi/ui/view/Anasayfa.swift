//
//  ContentView.swift
//  KisilerUygulamasi
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct Anasayfa: View {
    
    @State private var AramaKelimesi = ""
    
    @ObservedObject var viewModel = AnasayfaViewModel()
    
    func sil(at offsets:IndexSet){
        let kisi = viewModel.kisilerListesi[offsets.first!]
            viewModel.kisilerListesi.remove(at: offsets.first!)
        viewModel.sil(kisiSil: kisi.kisi_id!)
    }
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.kisilerListesi){kisi in
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
                    viewModel.kisileriYukle()
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
