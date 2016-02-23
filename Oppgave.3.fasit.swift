//
//  LøsningOperatoroverlasting.swift
//  
//
//  Created by Espen Næss on 23.02.16.
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

// Operatoroverlastingsoppgaven

func + (lhs:TodoListe, rhs:TodoListe) -> TodoListe {
    let nyliste = lhs.itemliste + rhs.itemliste
    
    return TodoListe(itemliste:nyliste)w
}

var todoItem2 = TodoItem(tittel: "Ordne undulatmat", innhold: "Undulaten ønsker Brie Gammelost", dato: "29 feb 2016", eier: "Arnulf Øverland")

var nyListe = TodoListe(itemliste: [todoItem2])

var nyTodoListe = dagsgjøremål + nyListe

for items in nyTodoListe.itemliste {
    print(items.tittel)
}