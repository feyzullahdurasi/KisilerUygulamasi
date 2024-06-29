//
//  ContentView.swift
//  KisilerUygulamasi
//
//  Created by Feyzullah Durası on 22.06.2024.
//

import SwiftUI

struct Anasayfa: View {
    
    @State private var aramaKelimesi = ""
    
    @ObservedObject var viewModel = AnasayfaViewModel()
    
    func sil(at offsets:IndexSet){
        let kisi = viewModel.kisilerListesi[offsets.first!]
        viewModel.sil(kisi: kisi)
    }
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.kisilerListesi){kisi in
                    NavigationLink(destination: KisiDetaySayfa(kisi: kisi, kisilerListesi: $viewModel.kisilerListesi)){
                            KisilerSatir(kisi: kisi)
                    }
                }.onDelete(perform: sil)
                
            }.navigationTitle("Kişiler")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink(destination: KisiKayitSayfa()){
                            Image(systemName: "plus")
                        }
                    }
                    
                }.onAppear(){
                    viewModel.kisileriYukle()
                }
        }.searchable(text: $aramaKelimesi, prompt: "Ara")
            .onChange(of: aramaKelimesi){ s in
                
                if s == "" {
                    viewModel.kisileriYukle()
                    
                } else {
                    viewModel.ara(aramaKelimesi: s)
                }
            }
    }
}

#Preview {
    Anasayfa()
}
