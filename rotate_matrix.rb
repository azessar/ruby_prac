
def rotate_matrix(matrix)
    answer = Array.new(matrix.length) {Array.new(matrix.length)}
    matrix.each_with_index do |row,i|
        row.each_with_index do |ele,j|
            answer[j][i] = matrix[i][j]
        end
    end

    return answer.reverse

end

p rotate_matrix([[1,2],
                [2,1]])

p rotate_matrix([[1,2,3], #3, 6, 9
                [4,5,6],  #2, 5, 8
                [7,8,9]]) #1, 4, 7

p rotate_matrix([
                 [1,2,3,4],
                 [5,6,7,8],
                 [9,10,11,12],
                 [13,14,15,16]
                ])
