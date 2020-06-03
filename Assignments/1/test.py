def count_lines(fname):
    """
    Count the number of lines in a text file
    Input:
        fname: the path/name to a text file. Your code should take care of the case
        if the file doesn't exist.
    Output:
        numOfLines: the number of lines in the input text file
    """
    numOfLines = len(open(fname).readlines())
    
    return numOfLines

print(count_lines('/Users/macbook/Desktop/INFO212/Assignment 1/train.csv'))