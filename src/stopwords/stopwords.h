//
//  stopwords.h
//
//  Created by Stephan Heilner on 2/13/15.
//

#ifdef __cplusplus
extern "C" {
#endif

#ifndef _STOPWORDS_H_
#define _STOPWORDS_H_
    
struct sh_stopwords;
    
struct sh_stopwords * getStopwordsForLocale(const char *locale, char *resource_path);
   
void stopwords_destroy(struct sh_stopwords *stopwords);
    
int stopwords_is_stopword(struct sh_stopwords *stopwords, char *stopword);
    
#ifdef __cplusplus
}
#endif

#endif