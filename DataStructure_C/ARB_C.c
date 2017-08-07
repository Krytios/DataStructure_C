#include <string.h>
#include <stdio.h>
#include <stdlib.h>


typedef struct _noeud {
	char mot[80] ; // le mot lui-même (la clé)
	int occ ;
	struct _noeud * droit, * gauche;
	}noeud;

noeud *rac;
	
noeud *ajout(char *mot, noeud *rac){
	int cond;
	if(rac != NULL){
	  if((cond = strcmp(rac->mot, mot)) == 0)
	     rac->occ ++;
	     else if( cond<0)
	         rac->gauche=ajout(mot, rac->gauche);
	     else 
	         rac->droit=ajout(mot, rac->droit);
		 }else {
			 rac = (noeud *)malloc(sizeof(noeud));
			 strcpy(rac->mot, mot);
			 rac-> occ=1;
			 rac-> gauche= rac-> droit=NULL;
			 }
     return rac;
	}

void explore(noeud *rac){
	if (rac != NULL){
		explore(rac -> gauche);
		printf("%s\t", rac -> mot);
		explore(rac -> droit);
		}
		return;
	}
int lire_mot(char *mot, int maxm){
	char c; char *m=mot;
	while( !isalpha(c=getchar())&& (c!= EOF) )
	   SKIP;
	if(c == EOF) return EOF;
	*m=c; m++;
	for(SKIP ; isalnum( c=getchar() ) && (--maxm>0) ; SKIP){
		*m=c; m++; }
		*m ='\0';
		return c;
}

int main(){
    noeud *racine;
    char mot[25];
    scanf("%s", mot);
    while( mot != NULL)
       racine = ajout(mot, racine);
        
    explore(racine);
}
