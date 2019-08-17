//
//  FilterImageOperation.swift
//  Astronomy
//
//  Created by Stephanie Bowles on 8/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class FilterImageOperation: Operation {
    
    private(set) var image: UIImage?
    private let fetchOperation: FetchPhotoOperation
    
    
    init(fetchOperation: FetchPhotoOperation) {
        self.fetchOperation = fetchOperation
    }
    
    override func main(){
        if let data = fetchOperation.imageData,
        let image = UIImage(data: data) {
            self.image = image.filtered()
            print("FilterImageOperation: finished filtering")
        }
    }
}
