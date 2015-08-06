/*
 ** 2015 Jan 30
 **
 ** The author disclaims copyright to this source code.  In place of
 ** a legal notice, here is a blessing:
 **
 **    May you do good and not evil.
 **    May you find forgiveness for yourself and forgive others.
 **    May you share freely, never taking more than you give.
 **
 ******************************************************************************
 **
 ** Implementation based on the "unicode" full-text-search tokenizer.
 */

#include "fts3_tokenizer.h"
#include <string.h>
#include <ctype.h>
#include "libstemmer.h"

int registerTokenizer(sqlite3 *db, char *zName);

#ifndef _FTS3_TOKENIZER_H_
#define _FTS3_TOKENIZER_H_

typedef struct sqlite3_tokenizer_module sqlite3_tokenizer_module;
typedef struct sqlite3_tokenizer sqlite3_tokenizer;
typedef struct sqlite3_tokenizer_cursor sqlite3_tokenizer_cursor;

struct sqlite3_tokenizer_module {
    
    int unicodeCreate(
                      int nArg,                       /* Size of array argv[] */
                      const char * const *azArg,      /* Tokenizer creation arguments */
                      sqlite3_tokenizer **pp          /* OUT: New tokenizer handle */
                      );
    
    int unicodeDestroy(sqlite3_tokenizer *pTokenizer);
    
    int unicodeOpen(
                    sqlite3_tokenizer *p,           /* The tokenizer */
                    const char *aInput,             /* Input string */
                    int nInput,                     /* Size of string aInput in bytes */
                    sqlite3_tokenizer_cursor **pp   /* OUT: New cursor object */
                    );
    
    int unicodeClose(sqlite3_tokenizer_cursor *pCursor);
    
    int unicodeNext(
                    sqlite3_tokenizer_cursor *pC,   /* Cursor returned by simpleOpen */
                    const char **paToken,           /* OUT: Token text */
                    int *pnToken,                   /* OUT: Number of bytes at *paToken */
                    int *piStart,                   /* OUT: Starting offset of token */
                    int *piEnd,                     /* OUT: Ending offset of token */
                    int *piPos                      /* OUT: Position integer of token */
                    );
    
    void workingDirectory(char *path);
};

struct unicode_tokenizer {
    const sqlite3_tokenizer_module *pModule;  /* The module for this tokenizer */
    /* Tokenizer implementations will typically add additional fields */
};

struct unicode_cursor {
    sqlite3_tokenizer *pTokenizer;       /* Tokenizer for this cursor. */
    /* Tokenizer implementations will typically add additional fields */
};

#endif /* defined(__Tokenizer__fts3_unicode__) */