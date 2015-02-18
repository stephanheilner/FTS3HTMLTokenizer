//
//  stopwords.cpp
//
//  Created by Stephan Heilner on 2/13/15.
//

#include "stopwords.h"
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <unordered_set>

struct sh_stopwords {
    std::unordered_set<std::string> set;
};

extern struct sh_stopwords *getStopwordsForLocale(const char *locale) {
    char filename[25];
    sprintf(filename, "%s.txt", locale);
    
    FILE *file = fopen(filename, "r");
    if (file == NULL) {
        return NULL;
    }

    struct sh_stopwords *stopwords = new sh_stopwords();

    char line[100];
    while (fgets(line, 100, file) != NULL) {
        line[strlen(line) - 1] = '\0';
        std::string stopword(line);
        if (!stopword.empty()) {
            stopwords->set.insert(stopword);
        }
    }
  
    fclose(file);
    
    return stopwords;
}

void stopwords_destroy(struct sh_stopwords *stopwords) {
    stopwords->set.clear();
    free(stopwords);
}

int stopwords_is_stopword(struct sh_stopwords *stopwords, char *stopword) {
    if (stopwords->set.empty()) {
        return 0;
    }
    
    std::string stopwordString(stopword);
    return (stopwords->set.find(stopwordString) != stopwords->set.end());
}