#include <stdio.h>
#include <stdlib.h>
#define Malloc(type) (arbre *)malloc(sizeof(arbre))

typedef struct _arbre {
	int cle;
	struct _arbre *gauche;
	struct _arbre *droite;
	}arbre;
	
arbre *r;

	
void *ajout(int x, arbre *r){
	if (r != NULL) {
		if (x > r -> cle)
		    r ->droite=ajout(x, r->droite);
		else 
		    r ->gauche=ajout(x, r->gauche);
		}else {
			r = Malloc(arbre);
			r->cle=x; r->gauche=r->droite=NULL;
			}
			return r;
	}
	
void explore(arbre *r){
	if (r != NULL){
		explore(r -> gauche);
		printf("%d\t", r -> cle);
		explore(r -> droite);
		}
		return;
	}

arbre * suppr(int x, arbre *r){
	arbre * q, *R;
	if (r == NULL)
	return;
	if (x< r->cle)
	    r -> gauche= suppr(el, gauche);
	else if (x> r->droite = suppr(el, ))
	}

int main(void){
	arbre *racine;
	int lenght=11;
	int t[]={55,34,49,20,38,58,10,50,25,22,24};
	for (int i=0; i<lenght; i++){
		racine = ajout(t[i], racine);	
		}
	explore(racine);
	}
