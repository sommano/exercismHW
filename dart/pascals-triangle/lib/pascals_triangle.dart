class PascalsTriangle {
  List<List<int>> rows(int requiredRows){
    List<List<int>> result = [];
    List<int> prevRow = [];
    for(int rowNr=1; rowNr<=requiredRows; rowNr++){
      List<int> row = [1];
      for(int pos = 1; pos < rowNr; pos++){
        row.add(prevRow[pos - 1] + (prevRow.length > pos ? prevRow[pos]  : 0));
      }
      result.add(row);
      prevRow = row;
    }
    return result;
  }}
