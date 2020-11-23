#if element is 0, entire row and column become 0s
def set_zero(matrix)
    answer = matrix
    zero_cols = []
    matrix.each_with_index do |row,i|
        row.each_with_index do |ele,j|
            if ele == 0
                answer[i] = Array.new(matrix[i].length) {0}
                zero_cols << j
                break
            end
        end
    end
    matrix.each_with_index do |row,i|
        row.each_with_index do |col,j|
            answer[i][j] = 0 if zero_cols.include?(j)
        end
    end
    return answer
end

p set_zero([[0,2],
            [2,1]])

p set_zero([[1,2,3], 
            [4,0,6],  
            [7,8,9]]) 

p set_zero([
                 [2,3,4],
                 [6,0,8],
                 [10,11,12],
                 [114,15,16]
                ])