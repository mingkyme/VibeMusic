//
//  MainWindowController.swift
//  VibeMusic
//
//  Created by 김민기 on 2020/06/11.
//  Copyright © 2020 Mingky. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController,NSWindowDelegate {

    override func windowDidLoad() {
        super.windowDidLoad()
    }
    func windowShouldClose(_ sender: NSWindow) -> Bool {
        exit(0)
    }

}
