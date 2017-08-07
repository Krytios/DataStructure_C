/*
File: Database.c
Header Files: Database.h
Ce programme cree unne database pour les employees. Il permet
d'utiliser la base Employee, i.e., ajouter, enregistrer les 
informations dans un fichier et le charger et afficher les informations.
PS: je bois du the :)
*/
#define MAX 100
#define FALSE 0
#define TRUE 1
#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "Database.h"  /* declarations for the structures */

/* Prototype functions */
int modifier(struct Employee employe[], int n, int lim);
int ajout_data(struct Employee employe[], int n, int lim);
void supp_data(void);
void change_data(void);
int liredata(struct Employee * pptr);
void afficher(struct Employee employe[], int n);
void afficher_data(struct Employee * pptr);
int charger(struct Employee employe[], int lim);
int enregistrer(struct Employee employe[], int n);

int main(void)
{
	char password[25], password_user[25]="Tuxsquad332" ;
    int ret;
    puts("Entrer le mot de passe : ");
	fgets(password, 25, stdin); 
	ret = strcmp(password, password_user);
    if(ret == 0)
    {
	char choice;
	struct Employee employe[MAX];
	int n=0;
	 do
    {
        printf("***Employee - Base de donnee***\n");
        printf("\nCommandes: M)odifier, L)ire, A)fficher, E)nregistrer\n");
        choice = getchar(); 
        getchar();
        switch(choice) {
			case 'M': n = modifier(employe, n, MAX); break;
			case 'L': n = liredata(&employe); break;
			case 'A': afficher(employe, n); break;
			case 'E': enregistrer(employe, n); break;
			default: printf("Commande non valide - retaper\n");}
			printf("\nCommandes: M)odifier, L)ire, A)fficher, E)nregistrer, Q)uitter\n");
		}
    
    while(choice != 'Q');
}
    else printf("Mot de passe est faux!");
	return 0;
}

/*Modifier: ajout des informations */
int modifier(struct Employee employe[], int n, int lim)
{
	char s;
	printf("A)jouter, S)upprimer, C)hanger\n");
	s = getchar(); 
    getchar();
	switch(s) {
		case 'A': n = ajout_data(employe, n, lim);break;
		case 'D': supp_data();break;
		case 'C': change_data();break;
		default: ;
		}
		return n;
}
/* ajout des informations a employe[] qui a n cases. Le maximum
des nombres de case est lim. */
int ajout_data(struct Employee employe[], int n, int lim)
{
	while (n < lim && liredata(&employe[n++])){
		if (n == lim)
		printf("Maximum des nombres de case\n");
		else --n;}
		/* EOF pour la derniere valeur de n */
		return n;
}
void supp_data(void)
{
	printf("Suppression\n");
}
void change_data(void)
{
	printf("Changement\n");
}
/*Lire et stocker les informations. */
int liredata(struct Employee * pptr)
{
	char s[25];
	printf("Entrer le Nom, RETURN pour quitter: ");
    fgets(s, 25, stdin); 
	if (!*s)
	return FALSE;
	else {
	strcpy(pptr->employe.Nom, s);
	printf("Enter le numero: ");
	scanf("%d", pptr->employe.Numero)
	printf("Enter Nom et Prenom: ");
	scanf("%s %s%*c",pptr->employe.Nom, pptr->employe.Prenom);
	printf("Entrer le sexe: ");
	gets(pptr->employe.Sexe);
	printf("Entrer l'adresse: ");
	gets(pptr->employe.Adresse);
	printf("Enterer numero de telephone: ");
	scanf("%s %s %ld%*c",pptr->employe.Numero_De_Telephone);
	printf("Entrer la date de naissance: ");
	gets(pptr->employe.Date_De_Naissance);
	printf("Entrer le numero du grade: ");
	scanf("%d", pptr->employe.grade.numero);
	printf("Entrer la designation du grade: ");
	gets(pptr->employe.grade.designation);
	printf("Entrer les horaires: ");
	scanf("%d", pptr->employe.grade.horaire);
	printf("Entrer le numero du service: ");
	scanf("%d", pptr->employe.service.numero);
	printf("Entrer la designation du grade: ");
	gets(pptr->employe.service.designation);
	return TRUE;}
}
/* Afficher les donnees stockees dans employe[]. */
void afficher(struct Employee employe[], int n)
{
	printf("\nData: \n");
	for (int i = 0; i < n; i++){
		afficher_data(&employe[i]);}
}
/* Afficher les informations stockees. */
void afficher_data(struct Employee * pptr)
{
	printf("\n%n\n%s %s\n%s\n%s\n%s\n%s\n%n %s %n\n%n %s\n",
	pptr->employe.Numero,
	pptr->employe.Name,
	pptr->employe.Prenom,
	pptr->employe.Sexe,
	pptr->employe.Adresse,
	pptr->employe.Numero_De_Telephone,
	pptr->employe.Date_De_Naissance,
	pptr->employe.grade.Numero,
	pptr->employe.grade.Designation,
	pptr->employe.grade.horaire,
	pptr->employe.service.Numero,
	pptr->employe.service.Designation,);
}
int charger(struct Employee employe[], int lim)
{
	char s[25];
	FILE *ebilan;
	int n;
	printf("location du fichier: ");
	gets(s);
	ebilan = fopen(s, "r");
	if (!ebilan)
	return 0;
	n = fread(employe, sizeof(struct Employee), lim, ebilan);
	fclose(ebilan);
	return n;
}
/* Enregistrer emloye[] dans un fichier. */
int enregistrer(struct Employee employe[], int n)
{
	char s[25];
	FILE *sbilan;
	printf("Output File: ");
	gets(s);
	sbilan = fopen(s, "w");
	if (!sbilan)
	return 0;
	fwrite(employe, sizeof(struct Employee), n, sbilan);
	fclose(sbilan);
	return n;
}
