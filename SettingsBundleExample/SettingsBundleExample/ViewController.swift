//
//  ViewController.swift
//  SettingsBundleExample
//
//  Created by Jimmy Dee on 11/9/16.
//
// Copyright (c) 2016 Jimmy Dee
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        let bundle = Bundle.main
        guard
            let marketingVersion = bundle.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String,
            let buildNumber = bundle.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as? String
            else {
                print("Could not find version info in Info.plist")
                return
        }

        let displayVersion = "Version \(marketingVersion) (\(buildNumber))"

        button.setTitle(displayVersion, for: .normal)
        view.setNeedsLayout()
    }

    @IBAction func showSettings() {
        // TODO: Open the Settings app
    }
}

