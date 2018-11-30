//
//  RootTableViewController.swift
//  TelaConfiguracaoCor
//
//  Created by Mateus de Sousa Silva on 22/11/2018.
//  Copyright © 2018 Mateus de Sousa Silva. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {

    @IBOutlet weak var corYellow: UISwitch!
    @IBOutlet weak var corRed: UISwitch!
    @IBOutlet weak var corBlue: UISwitch!
    @IBOutlet weak var corGreen: UISwitch!
    
    
    var defauts = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let colorBackgroud = defauts.string(forKey: "color")
        
        switch colorBackgroud {
        case "red":
            self.tableView.backgroundColor = .red
            corRed.setOn(true, animated: true)
        case "yellow":
            self.tableView.backgroundColor = .yellow
            corYellow.setOn(true, animated: true)
        case "blue":
            self.tableView.backgroundColor = .blue
            corBlue.setOn(true, animated: true)
        case "green":
            self.tableView.backgroundColor = .green
            corGreen.setOn(true, animated: true)
        case "white":
            self.tableView.backgroundColor = .white
            corGreen.isOn = false
            corBlue.isOn = false
            corYellow.isOn = false
            corRed.isOn = false
        default:
            break
        }
        
        
    }

    @IBAction func trocarYellow(_ sender: Any) {
        corRed.isOn = false
        corBlue.isOn = false
        corGreen.isOn = false
        self.tableView.backgroundColor = .yellow
        defauts.set("yellow", forKey: "color")
        verificarNenhum()
    }
    
    @IBAction func trocarBlue(_ sender: Any) {
        corRed.isOn = false
        corGreen.isOn = false
        corYellow.isOn = false
        self.tableView.backgroundColor = .blue
        defauts.set("blue", forKey: "color")
        verificarNenhum()
    }
    
    @IBAction func trocarRed(_ sender: Any) {
        corBlue.isOn = false
        corGreen.isOn = false
        corYellow.isOn = false
        self.tableView.backgroundColor = .red
        defauts.set("red", forKey: "color")
        verificarNenhum()
    }
    
    @IBAction func trocarGreen(_ sender: Any) {
        corRed.isOn = false
        corBlue.isOn = false
        corYellow.isOn = false
        self.tableView.backgroundColor = .green
        defauts.set("green", forKey: "color")
        verificarNenhum()
    }
    
    func verificarNenhum() {
        if !corYellow.isOn && !corGreen.isOn && !corRed.isOn && !corBlue.isOn {
            self.tableView.backgroundColor = .white
            defauts.set("white", forKey: "color")
        }
    }
}
