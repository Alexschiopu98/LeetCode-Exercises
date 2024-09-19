/// 383. Ransom Note

void main() {
  print(Solution().canConstruct('aab', 'baa'));
}

class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    final List<String> ransomNoteChars = ransomNote.split('');
    for (var i = 0; i < magazine.length; i++) {
      var magazineChar = magazine[i];

      for (var j = 0; j < ransomNoteChars.length; j++) {
        if (magazineChar == ransomNoteChars[j]) {
          ransomNoteChars.removeAt(j);
          if (ransomNoteChars.isEmpty) {
            return true;
          }
          break;
        }
      }
    }

    return false;
  }
}
