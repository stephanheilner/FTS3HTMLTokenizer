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

#include <string.h>
#include <ctype.h>
#include <snowball/libstemmer.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct sqlite3 sqlite3;

int registerTokenizer(sqlite3 *db, char *zName);
