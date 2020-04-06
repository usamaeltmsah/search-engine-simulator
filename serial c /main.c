#include <stdio.h>
#include <string.h>
#include <ctype.h>

struct existsWhere {
    int index;
    char text[250];
};

struct existsWhere stringsExists(char* str1, char* str2, int ind)
{
    char str1cpy[250] = "";
    strcpy(str1cpy, str1);
    if (islower(str2[0]))
        str1cpy[0] = tolower(str1cpy[0]);  // Convert the first letter to lower case

    char stringToArr2[30][15]; //can store 30 words each of 15 characters
    int i, j, cnt1 = 0, cnt2 = 0;
    struct existsWhere structexistsWhere;
    for(i = 0/*, j = 0*/; i <= (strlen(str1cpy)); i++)
    {
        // if space or NULL found, assign NULL into splitStrings[cnt]
        if(str1cpy[i] == ' '||str1cpy[i] == '\0'||str1cpy[i] == ','||str1cpy[i] == '.')
            cnt1++; //for next word
    }
    for(i = 0, j = 0; i <= (strlen(str2)); i++)
    {
        // if space or NULL found, assign NULL into splitStrings[cnt]
        if(str2[i] == ' '||str2[i] == '\0'||str2[i] == ','||str2[i] == '.'||str2[i] == '\n')
        {
            stringToArr2[cnt2][j] = '\0';
            cnt2++; //for next word
            j = 0; //for next word, init index to 0
        }
        else
        {
            stringToArr2[cnt2][j] = str2[i];
            j++;
        }
    }

    for (i = 0; i < cnt2; ++i) {
        for (j = 0; j < cnt1; ++j) {
            if (strstr(str1cpy, stringToArr2[i]) == NULL) // Check substrings
            {
                structexistsWhere.index = -1;
                return structexistsWhere;
            }
        }
    }
    structexistsWhere.index = ind;
    strcpy(structexistsWhere.text, str1);
    return structexistsWhere;
}

char* concatPath(char* path, int fileInd)
{
    char strNum[2];
    char file[50] = "Aristo-Mini-Corpus P-";
    strcat(path, file);
    sprintf(strNum, "%d", fileInd); // Change int to string
    strcat(path, strNum);
    strcat(path, ".txt");
    return path;
}

int main() {
    FILE *fp;
    struct existsWhere structexistsWhere[50][30];
    int c = 0;
    char* search_q = "sunlight energy nutrients";
    printf("\nSearch Query:\n %s\n\n", search_q);
    // We have 50 file, each have 30 lines
    for (int l = 1; l <= 50; ++l) {
        char path[] = "../../Aristo-Mini-Corpus/";
        char buff[255];
        concatPath(path, l);
        fp = fopen(path, "r");

        for (int m = 0; m < 30; ++m) {
            fgets(buff, 255, (FILE*)fp);
            struct existsWhere isEx = stringsExists(buff, search_q, m);
            if (isEx.index != -1)
            {
                structexistsWhere[l-1][m].index = isEx.index;
                strcpy(structexistsWhere[l-1][m].text, isEx.text);
                c++;
            }
            else
                structexistsWhere[l-1][m].index = -1;
        }

        fclose(fp);
    }

    printf("Search Results Found = %d\n\n", c);
    // As we have 50 file, each have 30 lines
    for (int i = 0; i < 50; ++i) {
        for (int j = 0; j < 30; ++j) {
            if(structexistsWhere[i][j].index != -1){
                printf("%s\n", structexistsWhere[i][j].text);
            }
        }
    }

    return 0;
}
