/* 
 * File:   process_prepared_statement.h
 * Author: nagash
 *
 * Created on 11 aprile 2010, 22.54
 */

#include <stdio.h>
#include <malloc.h>
#include <mysql/mysql.h>
#include <string.h>



#ifndef _PROCESS_PREPARED_STATEMENT_H
#define	_PROCESS_PREPARED_STATEMENT_H

void print_stmt_error (MYSQL_STMT *stmt, char *message);
void print_error(MYSQL *conn, char *msg);
int process_prepared_statements(MYSQL *conn, MYSQL_STMT **stmt);

typedef struct
{
    my_bool valid;
    long EIS;
    my_bool writable;
} Filtro;

typedef struct
{
    MYSQL_TIME data;
    char timestamp[16];
    char mittente[10];
    char destinatario[10];
    float valore;
} Energia;

void initFiltro(Filtro *toInit);
void free_filtro( Filtro* filtro);

int insert_filtro( MYSQL *conn, char* destinatario);
int insert_dati( MYSQL *conn, Energia toWrite );
int select_filtro ( MYSQL *conn, char* destinatario, Filtro* filtro);


#endif	/* _PROCESS_PREPARED_STATEMENT_H */

