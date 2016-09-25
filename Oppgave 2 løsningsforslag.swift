//
//  LøsningTodoListe.swift
//  
//
//  Created by Espen Næss on 19.02.16.
//
//

import Foundation


struct TodoItem {
    var tittel:String
    var innhold:String
    var dato:String
    let eier:String
}

class TodoListe {
    var itemliste = [TodoItem]()
    
    init(itemliste:[TodoItem]) {
        self.itemliste = itemliste
    }
    
    func addItem(item:TodoItem) {
        itemliste.append(item)
    }
    
    func hentItem(tittel:String) -> TodoItem? {
        for item in itemliste {
            if (item.tittel == tittel) {
                return item;
            }
        }
        return nil;
    }
}


var nyttItem = TodoItem(tittel: "Kjøp pelskåpe", innhold: "Fåes kjøpt på dressmann", dato: "1 apr 2016", eier: "Donald Trump")

var dagsgjøremål = TodoListe(itemliste: [nyttItem])

if let item = dagsgjøremål.hentItem("Kjøp pelskåpe")? {
    print("Innhold i item: \(item.innhold)")
}
