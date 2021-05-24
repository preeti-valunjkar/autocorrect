/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT (v3)
//
// By signing your name and ID below you are stating that you have agreed
// to the online academic integrity statement:a
// https://student.cs.uwaterloo.ca/~cs136/current/assignments/integrity.shtml
/////////////////////////////////////////////////////////////////////////////
// I received help from and/or collaborated with:

// None
//
// Name: Preeti Valunjkar
// login ID: pvalunjk
/////////////////////////////////////////////////////////////////////////////

#include "thesaurus.h"
#include <assert.h>
#include <string.h>

/////////////////////////////////////////////////////////////////////////////
// do not modify this constants:
const int SUGGEST_MAX_STRLEN = 63;
/////////////////////////////////////////////////////////////////////////////


// del(sss, dict, word, len) adds a word suggestion to sss if
// removing one character from word gives a valid word in dict
// requires: sss, dict, word are valid pointers
//           0 < len <= SUGGEST_MAX_STRLEN
// effects: may modify *sss
// time: O(m*(n + m*logn))
static void del(struct triple_s *sss, const struct triple_s *dict, const char *word, int len) {
  assert(sss);
  assert(dict);
  assert(word);
  assert(len > 0);
  assert(len <= SUGGEST_MAX_STRLEN);
  for (int i = 0; i < len; ++i) {
    char deleted[64] = {0};
    strcpy(deleted, word);
    for (int j = i; j < len; ++j) {
      deleted[j] = deleted[j + 1];
    }
    int retval = sss_search(dict, deleted);
    if (retval != -1) {
      const char *addword = sss_get(dict, retval);
      sss_add(sss, addword);
    }
  }
}

// add(sss, dict, word, len) adds a word suggestion to sss if
// adding letters from a-z before each character in word
// produces a valid word in dict
// requires: sss, dict, word are valid pointers
//           0 < len <= SUGGEST_MAX_STRLEN
// effects: may modify *sss
// time: O(m*(n + m*logn))
static void add(struct triple_s *sss, const struct triple_s *dict, const char *word, int len) {
  assert(sss);
  assert(dict);
  assert(word);
  assert(len > 0);
  assert(len <= SUGGEST_MAX_STRLEN);
  const int lcase_a = 97;
  const int total_alpha = 26;
  for (int i = 0; i < len; ++i) {
    char added[65] = {0};
    strcpy(added, word);
    for (int j = len; j > i; --j) {
      added[j] = added[j - 1];
    }
    for (int k = 0; k < total_alpha; ++k) {
      added[i] = k + lcase_a;
      int retval = sss_search(dict, added);
      if (retval != -1) {
        const char *addword = sss_get(dict, retval);
        sss_add(sss, addword);
      }
    }
  }
 for (int i = 0; i < total_alpha; ++i) {
    char end[65] = {0};
    strcpy(end, word);
    end[len + 1] = end[len];
    end[len] = i + lcase_a;
    int retval = sss_search(dict, end);
    if (retval != -1) {
      const char *addword = sss_get(dict, retval);
      sss_add(sss, addword);
    }
  }
}

// subs(sss, dict, word, len) adds a word suggestion to sss if
// substituing letters a-z in place of each character in word
// produces a valid word in dict
// requires: sss, dict, word are valid pointers
//           0 < len <= SUGGEST_MAX_STRLEN
// effects: may modify *sss
// time: O(m*(n + m*logn))
static void subs(struct triple_s *sss, const struct triple_s *dict, const char *word, int len) {
  assert(sss);
  assert(dict);
  assert(word);
  assert(len > 0);
  assert(len <= SUGGEST_MAX_STRLEN);
  const int lcase_a = 97;
  const int total_alpha = 26;
  for (int i = 0; i < len; ++i) {
    char subs[64] = {0};
    strcpy(subs, word);
    for (int j = 0; j < total_alpha; ++j) {
      subs[i] = j + lcase_a;
      int retval = sss_search(dict, subs);
      if (retval != -1) {
        const char *addword = sss_get(dict, retval);
        if (strcmp(addword, word) != 0) {
          sss_add(sss, addword);
        }
      }
    }
  }
}

// swap(sss, dict, word, len) adds a word suggestion to sss if
// swapping adjacent characters in word gives a valid word in
// dict
// requires: sss, dict, word are valid pointers
//           0 < len <= SUGGEST_MAX_STRLEN
// effects: may modify *sss
// time: O(m*(n + m*logn))
static void swap(struct triple_s *sss, const struct triple_s *dict, const char *word, int len) {
  assert(sss);
  assert(dict);
  assert(word);
  assert(len > 0);
  assert(len <= SUGGEST_MAX_STRLEN);
  for (int i = 0; i < len - 1; ++i) {
    char swapped[64] = {0};
    strcpy(swapped, word);
    char temp = swapped[i];
    swapped[i] = swapped[i + 1];
    swapped[i + 1] = temp;
    int retval = sss_search(dict, swapped);
    if (retval != -1) {
      const char *addword = sss_get(dict, retval);
      if (strcmp(addword, word) != 0) {
        sss_add(sss, addword);
      }
    }
  }
}

// time: O(m*(n + m*logn))
struct triple_s *suggest(const struct triple_s *dict, const char *word) {
  assert(dict);
  assert(word);
  int len = strlen(word);
  assert(len > 0);
  assert(len <= SUGGEST_MAX_STRLEN);
  struct triple_s *sss = sss_create();
  del(sss, dict, word, len);
  add(sss, dict, word, len);
  subs(sss, dict, word, len);
  swap(sss, dict, word, len);
  return sss;
}
