//
//  ticTacToe.swift
//  ttt
//
//  Created by Michael Weitzman on 1/11/16.
//  Copyright © 2016 World Source Tech. All rights reserved.
//

import Foundation

class TicTacToe
{
    
        var winner = 0
        var player = Int(arc4random_uniform(2) + 1)
        var colors = [1,2]
        var winningNumbers = [012,345,678,036,247,368,048,246]
        var board = [0,0,0,0,0,0,0,0,0]
    


        func checkResults(){
    
    
        if  board[0] == 2 && board[1] == 2 && board[2] == 2  ||
            board[3] == 2 && board[4] == 2 && board[5] == 2  ||
            board[6] == 2 && board[7] == 2 && board [8] == 2 ||
            board[0] == 2 && board[3] == 2 && board [6] == 2 ||
            board[1] == 2 && board[4] == 2 && board [7] == 2 ||
            board[2] == 2 && board[5] == 2 && board [8] == 2 ||
            board[0] == 2 && board[4] == 2 && board [8] == 2 ||
            board[2] == 2 && board[4] == 2 && board[6] == 2
        
        {
            winner = 1
        
        
        
        } else if
        
            board[0] == 1 && board[1] == 1 && board[2] == 1   ||
            board[3] == 1 && board[4] == 1 && board[5] == 1  ||
            board[6] == 1 && board[7] == 1 && board [8] == 1 ||
            board[0] == 1 && board[3] == 1 && board [6] == 1 ||
            board[1] == 1 && board[4] == 1 && board [7] == 1 ||
            board[2] == 1 && board[5] == 1 && board [8] == 1 ||
            board[0] == 1 && board[4] == 1 && board [8] == 1 ||
            board[2] == 1 && board[4] == 1 && board[6] == 1
        {
            winner = 2
        
        }
    }

    func resetBoard() {
        board = [0,0,0,0,0,0,0,0,0]
        player == winner
        winner = 0
       
       
    }
}