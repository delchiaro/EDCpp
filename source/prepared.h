/* 
 * File:   prepared.h
 * Author: nagash
 *
 * Created on 11 aprile 2010, 22.54
 */

#ifndef _PREPARED_H
#define	_PREPARED_H

#include <my_global.h>
#include <my_sys.h>
#include <m_string.h> /* for strdup() */
#include <mysql.h>
#include <my_getopt.h>


void str_unfill(char* str, char toDelete);


#include <sslopt-vars.h>

int start_db_connection(MYSQL **conn, char* user, char* pwd, char* ip, int porta, char* dbname);
int close_db_connection(MYSQL **conn);

#endif	/* _PREPARED_H */

