//
//  ViewController.swift
//  projetoTeste
//
//  Created by Luiz Dsantos on 25/05/17.
//  Copyright © 2017 Luiz Dsantos. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioRecorderDelegate{



    var audioRecord: AVAudioRecorder!
    
    @IBOutlet weak var btnParaGravacao: UIButton!
    
    @IBOutlet weak var lblCliqueGravar: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


   
    
    @IBAction func gravarAudio(_ sender: Any) {
        btnParaGravacao.isEnabled = true
        lblCliqueGravar.text = "Gravando"
            print("gravando")
        let ditPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [ditPath,recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with: AVAudioSessionCategoryOptions.defaultToSpeaker)
        try! audioRecord = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecord.delegate = self
        audioRecord.isMeteringEnabled = true
        audioRecord.prepareToRecord()
        audioRecord.record()

        }
    
    
    @IBAction func paraGravacao(_ sender: Any) {
        btnParaGravacao.isEnabled = false
        lblCliqueGravar.text = "Gravar"
        
        audioRecord.stop()
        let session = AVAudioSession.sharedInstance()
        try! session.setActive(false)
    }
    
   
    
    func audioRecorderDidFinishRecording (_ recorder: AVAudioRecorder, successfully flag: Bool){
        print("acabei de gravar")
        
        if flag {
            performSegue(withIdentifier: "exibeEfeitos", sender: audioRecord.url)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "   ") {
            let tocaRaul = segue.destination as! tocaSomViewController
            let audioGravadoURL = sender as! URL
            tocaRaul.audioGravadorURL = audioGravadoURL
        }
    }
    
    
}

