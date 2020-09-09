def printMatrix (outMatrix,i,j,player)
    if player==1
        outMatrix[i][j] = "X"
    else
        outMatrix[i][j] = "O"
    end        
    for i in 0..outMatrix.length-1
        for j in 0..outMatrix.length-1
            print outMatrix[i][j] + "  "
        end
        puts " "
    end
    return outMatrix
end

def checkMatrix(valueMatrix,i,j)
            temp =i+j
            if temp==0
                sum = valueMatrix[0].sum 
                if  sum==0 || sum ==3
                    return true
                end
                tempMatrix = valueMatrix.transpose
                sum = tempMatrix[0].sum    
                if  sum==0 || sum ==3
                    return true
                end    
                sum = valueMatrix[0][0]+ valueMatrix[1][1] + valueMatrix[2][2]
                if  sum==0 || sum ==3
                    return true 
                else 
                    return false
                end
            elsif temp==1 
                if j>i
                    sum = valueMatrix[0].sum 
                    if  sum==0 || sum ==3
                        return true
                    end
                    tempMatrix = valueMatrix.transpose
                    sum = tempMatrix[1].sum    
                    if  sum==0 || sum ==3
                        return true
                    else 
                        return false
                    end  
                else 
                    sum = valueMatrix[1].sum 
                    if  sum==0 || sum ==3
                        return true
                    end
                    tempMatrix = valueMatrix.transpose
                    sum = tempMatrix[0].sum    
                    if  sum==0 || sum ==3
                        return true
                    else 
                        return false
                    end   
                end              
            elsif temp==2
                if j>i
                    sum = valueMatrix[0].sum 
                    if  sum==0 || sum ==3
                        return true
                    end
                    tempMatrix = valueMatrix.transpose
                    sum = tempMatrix[2].sum    
                    if  sum==0 || sum ==3
                        return true
                    end        
                    sum = valueMatrix[2][0]+ valueMatrix[1][1] + valueMatrix[0][2]
                    if  sum==0 || sum ==3
                        return true 
                    else 
                        return false
                    end 
                elsif j<i
                    sum = valueMatrix[2].sum 
                    if  sum==0 || sum ==3
                        return true
                    end
                    tempMatrix = valueMatrix.transpose
                    sum = tempMatrix[0].sum    
                    if  sum==0 || sum ==3
                        return true
                    end        
                    sum = valueMatrix[2][0]+ valueMatrix[1][1] + valueMatrix[0][2]
                    if  sum==0 || sum ==3
                        return true 
                    else 
                        return false
                    end
                else
                    sum = valueMatrix[1].sum 
                    if  sum==0 || sum ==3
                        return true
                    end
                    tempMatrix = valueMatrix.transpose
                    sum = tempMatrix[1].sum    
                    if  sum==0 || sum ==3
                        return true
                    end        
                    sum = valueMatrix[2][0]+ valueMatrix[1][1] + valueMatrix[0][2]
                    if  sum==0 || sum ==3
                        return true 
                    end 
                    sum = valueMatrix[0][0]+ valueMatrix[1][1] + valueMatrix[2][2]
                    if  sum==0 || sum ==3
                        return true 
                    else 
                        return false
                    end
                end
            elsif temp==3
                if j>i
                    sum = valueMatrix[1].sum 
                    if  sum==0 || sum ==3
                        return true
                    end
                    tempMatrix = valueMatrix.transpose
                    sum = tempMatrix[2].sum    
                    if  sum==0 || sum ==3
                        return true
                    else 
                        return false    
                    end  
                else 
                    sum = valueMatrix[2].sum 
                    if  sum==0 || sum ==3
                        return true
                    end
                    tempMatrix = valueMatrix.transpose
                    sum = tempMatrix[1].sum    
                    if  sum==0 || sum ==3
                        return true
                    else 
                        return false    
                    end   
                end
            else 
                sum = valueMatrix[2].sum 
                if  sum==0 || sum ==3
                    return true
                end
                tempMatrix = valueMatrix.transpose
                sum = tempMatrix[2].sum    
                if  sum==0 || sum ==3
                    return true    
                end    
                sum = valueMatrix[0][0]+ valueMatrix[1][1] + valueMatrix[2][2]
                if  sum==0 || sum ==3
                    return true 
                else 
                    return false    
                end
            end    

end
def firstPlayerMatrix (valueMatrix,i,j)
    valueMatrix[i][j] = 1
    result = checkMatrix(valueMatrix,i,j)
    if result == false 
        return "continue"
    else
        return "won"     
    end
end

def secondPlayerMatrix (valueMatrix,i,j)
    valueMatrix[i][j] = 0
    result = checkMatrix(valueMatrix,i,j)
    if result == false 
        return "continue"
    else
        return "won"
    end
end

def drawcheckMatrix(valueMatrix)
    flank=0
    for i in 0..valueMatrix.length-1
        flank += valueMatrix[i].sum
    end
    #p flank
    if flank > 7
        return "continue"
    else  
        return "drawn"  
    end 
end   
numberMap = ["O" ,"X"]
puts "Welcome to Tic-Tac-Toe"
puts "Lets start he game"
#p numberMap
valueMatrix  = Array.new(3){Array.new(3)}
for i in 0..valueMatrix.length-1
    for j in 0..valueMatrix.length-1
        valueMatrix[i][j] = 10
    end
end
#p inputMatrix

outputMatrix = Array.new(3){Array.new(3)}
for i in 0..outputMatrix.length-1
    for j in 0..outputMatrix.length-1
        outputMatrix[i][j] = "_"
    end
end
#p outputMatrix
for i in 0..outputMatrix.length-1
    for j in 0..outputMatrix.length-1
        print outputMatrix[i][j] + "  "
    end
    puts " "
end
puts " "
loop do
    puts "Player 1 its your turn"
    puts "Input the row you want to change : " 
    row = gets.chomp.to_i
    puts "Input the column you want to change : "
    column = gets.chomp.to_i
    puts "----------------------------------------"
    outputMatrix = printMatrix(outputMatrix,row,column,1)
    puts "----------------------------------------"
    status = firstPlayerMatrix(valueMatrix,row,column)  
    if status == "won" 
        puts "Congratulations! First Player Won"
        puts "Thank You for playing, Game Exited"
        break
    else
        puts "Second player get ready"
    end
    drawcheck = drawcheckMatrix (valueMatrix)
    if drawcheck == "drawn"
        puts "Sorry the match is drawn, So nobody Won!"
        break
    end
    puts "Player 2 its your turn"
    puts "Input the row you want to change : " 
    row = gets.chomp.to_i
    puts "Input the column you want to change : "
    column = gets.chomp.to_i
    puts "-----------------------------------------"
    outputMatrix = printMatrix(outputMatrix,row,column,2)
    puts "-----------------------------------------"
    status = secondPlayerMatrix(valueMatrix,row,column)  
    if status == "won" 
        puts "Congratulations! Second Player Won"
        puts "Thank You for playing, Game Exited"
        break 
    else 
        puts "First Player get ready again!"       
    end 
    #p valueMatrix  
    drawcheck = drawcheckMatrix (valueMatrix)
    if drawcheck == "drawn"
        puts "Sorry the match is drawn, So nobody Won!"
        break
    end        
end



