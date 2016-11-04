//
//  Engine.swift
//  MBakerAssignment2
//
//  Created by Monica Baker on 11/4/16.
//  Copyright © 2016 Monica Baker. All rights reserved.
//

import Foundation

protocol EngineDelegate {
    func engine(engine: Engine, didUpdateGrid: Grid)
}

class Engine {
    
    var rows: Int = 0
    var cols: Int = 0
    var grid: Grid! {
        didSet {
            rows = grid.rows
            cols = grid.cols
        }
    }
    
    init(rows: Int, cols: Int) {
        self.rows = rows
        self.cols = cols
        self.grid = Grid(rows: rows, cols: cols)
    }
    
    func step() {
        let newGrid = Grid(rows: rows, cols: cols)
        grid.cells.forEach { (cell) in
            newGrid[cell.pos.x, cell.pos.y]?.state = cell.nextState()
        }
        grid = newGrid
    }
}
