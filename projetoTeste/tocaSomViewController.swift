//
//  tocaSomViewController.swift
//  projetoTeste
//
//  Created by Luiz Dsantos on 08/06/17.
//  Copyright © 2017 Luiz Dsantos. All rights reserved.
//

import UIKit

class tocaSomViewController: UIViewController {

    var audioGravadorURL: URL!
    
    @IBOutlet weak var btnLento: UIButton!
    @IBOutlet weak var btnFast: UIButton!
    @IBOutlet weak var btnEsquilo: UIButton!
    @IBOutlet weak var btnVader: UIButton!
    @IBOutlet weak var btnEcho: UIButton!
    @IBOutlet weak var btnReverb: UIButton!
    @IBOutlet weak var btnStop: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
