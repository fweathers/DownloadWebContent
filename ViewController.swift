//
//  ViewController.swift
//  DownloadWebContent
//
//  Created by Felicia Weathers on 8/7/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webVIew: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        // one way to load a webview
        //        let url = NSURL(string: "https://www.stackoverflow.com")!
        //
        //        webVIew.loadRequest(NSURLRequest(URL: url))
        
        //        // loading personalized items on a page HTML
        //        webVIew.loadHTMLString("<h1>Hello there </h1>", baseURL: nil)
        
        
        
        // ios 10
        if let url = URL(string: "https://www.stackoverflow.com") {
            
            let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                data, response, error in
                
                if error != nil {
                    
                    print(error)
                    
                } else {
                    
                    if let unwrappedData = data {
                        
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataString)
                        
                        DispatchQueue.main.sync(execute: {
                            
                            // Update UI
                            
                        })
                        
                        
                    }
                    
                    
                }
                
                
            }
            
            task.resume()
            
        }
        
        print("Hi there!")
        
        
    }
 
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

