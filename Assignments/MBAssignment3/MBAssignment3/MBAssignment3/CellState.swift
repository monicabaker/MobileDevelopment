//
//  GridCellState.swift
//  MBAssignment3
//
//  Created by Monica Baker on 10/23/16.
//  Copyright © 2016 Monica Baker. All rights reserved.
//

import Foundation

typealias Position = (x: Int, y: Int)

enum CellState {
    case Living
    case Empty
    case Born
    case Died
    
    func isAlive() -> Bool {
        switch self {
        case .Living, .Born:
            return true
        case .Empty, .Died:
            return false
        }
    }
    //allValues method?
    func displayValue() -> String {
        switch self {
        case .Living:
            return "Living"
        case .Empty:
            return "Empty"
        case .Born:
            return "Born"
        case .Died:
            return "Died"
        }
    }
}

private let offsets: [Position] = [
    (x: -1, y: 1) , (x: 0, y: 1 ), (x: 1, y: 1 ),
    (x: -1, y: 0) ,                (x: 1, y: 0 ),
    (x: -1, y: -1), (x: 0, y: -1), (x: 1, y: -1)
]

struct GridCell {
    var pos: Position = (x:0, y:0)
    var state: CellState = .Empty
    var grid: Grid
    
    init(grid:Grid, pos:Position, state: CellState) {
        self.pos = pos
        self.state = state
        self.grid = grid
    }
    
    func neighbors() -> [Position] {
        return offsets.map {
            (x: ((pos.x + $0.x) + grid.cols) % grid.cols,
             y: ((pos.y + $0.y) + grid.rows) % grid.rows)
        }
    }
    
    func numLivingNeighbors () -> Int {
        return neighbors().reduce(0) {
            grid[$1.x,$1.y]?.state == .Living ? $0 + 1 : $0
        }
    }
    
    //toggle Method?
    func nextState() -> CellState {
        switch numLivingNeighbors() {
        case 2 where self.state.isAlive(),
             3:
            return .Living
        default:
            return .Empty
        }
    }
}


