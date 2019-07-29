//
//  IndexPath+Extension.swift
//  Extensions
//
//  Created by Mohd Tahir on 29/07/19.
//  Copyright © 2019 Mohd Tahir. All rights reserved.
//

import UIKit

extension IndexPath {
    
    public func next(in tableView: UITableView) -> IndexPath? {
        var newIndexPath = IndexPath(row: row + 1, section: section)
        if newIndexPath.row >= tableView.numberOfRows(inSection: section) {
            let newSection = section + 1
            newIndexPath = IndexPath(row: 0, section: newSection)
            if newSection >= tableView.numberOfSections {
                return nil
            }
        }
        return newIndexPath
    }
    
    public func previous(in tableView: UITableView) -> IndexPath? {
        var newIndexPath = IndexPath(row: row - 1, section: section)
        if newIndexPath.row < 0 {
            let newSection = section - 1
            if newSection < 0 {
                return nil
            }
            let maxRow = tableView.numberOfRows(inSection: newSection) - 1
            newIndexPath = IndexPath(row: maxRow, section: newSection)
        }
        return newIndexPath
    }
    
    public func next(in collectionView: UICollectionView) -> IndexPath? {
        
        var newIndexPath = IndexPath(row: row + 1, section: section)
        if newIndexPath.row >= collectionView.numberOfItems(inSection: section) {
            let newSection = section + 1
            newIndexPath = IndexPath(item: 0, section: newSection)
            if newSection >= collectionView.numberOfSections {
                return nil
            }
        }
        return newIndexPath
    }
    
    public func previous(in collectionView: UICollectionView) -> IndexPath? {
      
        var newIndexPath = IndexPath(row: row - 1, section: section)
        if newIndexPath.row < 0 {
            let newSection = section - 1
            if newSection < 0 {
                return nil
            }
            let maxRow = collectionView.numberOfItems(inSection: newSection) - 1
            newIndexPath = IndexPath(item: maxRow, section: newSection)
        }
        return newIndexPath
    }
    
}
