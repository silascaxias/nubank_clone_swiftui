//
//  ShortcutIcon.swift
//  nubank_clone_swiftui
//
//  Created by Silas Da Silva Caxias on 04/08/23.
//

enum ShortcutIcon {
    case pix
    case transfer
    case loan
    case deposit
    case investment

    private var titleAndIcon: (String, String) {
        switch self {
        case .pix:
            return ("Área Pix", "circle.grid.cross")
        case .transfer:
            return ("Transferir e pagar", "arrow.up")
        case .loan:
            return ("Pegar emprestado", "brazilianrealsign.square")
        case .deposit:
            return ("Depositar e cobrar", "arrow.down")
        case .investment:
            return ("Caixinhas e Investir", "archivebox")
        }
    }

    var title: String {
        return self.titleAndIcon.0
    }

    var icon: String {
        return self.titleAndIcon.1
    }
}
