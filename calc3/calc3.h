#ifndef __CALC3_H
#define __CALC3_H
typedef enum {
	typeCon, /* constant */
	typeId,  /* identifier */
	typeOpr  /* operator */
} nodeEnum;

/* constants */
typedef struct {
	int value;	/* value of the constant */
} conNodeType;

/* identifiers */
typedef struct {
	int i;		/* subscript to the sym array */
} idNodeType;

/* operators */
typedef struct {
	int oper;			/* operator */
	int nops;			/* number of operands */
	struct nodeTypeTag *op[1];	/* operands, extended at runtime */
} oprNodeType;

typedef struct nodeTypeTag {
	nodeEnum type;			/* type of the node */

	union {
		conNodeType con;	/* constants */
		idNodeType  id;		/* identifiers */
		oprNodeType opr;	/* operators */
	};
} nodeType;

extern int sym[26];

#endif
