//
//  ViewController.swift
//  VibeMusic
//
//  Created by 김민기 on 2020/06/09.
//  Copyright © 2020 Mingky. All rights reserved.
//

import Cocoa
import WebKit
import MediaKeyTap
class ViewController: NSViewController, MediaKeyTapDelegate {
    var mediaKeyTap : MediaKeyTap?
    @IBOutlet weak var web: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mediaKeyTap = MediaKeyTap(delegate: self)
        mediaKeyTap?.start()
        web.load(URLRequest.init(url: URL(string: "https://vibe.naver.com/")!))
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    func handle(mediaKey: MediaKey, event: KeyEvent) {
        switch mediaKey {
            case .previous, .rewind:
            web.evaluateJavaScript("document.querySelector('#player > div.player_controller > div.control_section > div > a.btn_play_prev').click()", completionHandler: nil)
            
        case .playPause:
            web.evaluateJavaScript("document.querySelector('#player > div.player_controller > div.control_section > div > a.btn_now').click()", completionHandler: nil)
        
        case .next, .fastForward:
            web.evaluateJavaScript("document.querySelector('#player > div.player_controller > div.control_section > div > a.btn_play_next').click()", completionHandler: nil)
        }
    }


}

