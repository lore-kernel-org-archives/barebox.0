Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YL7bC-0004zZ-4l
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 09:59:26 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YL7ap-0004dC-O2
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 10:58:55 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 10 Feb 2015 10:58:54 +0100
Message-Id: <1423562335-31000-1-git-send-email-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] scripts: dtc: update to new upstream version
To: barebox@lists.infradead.org

Taken from Linux kernel 3.19. Some defines needed to get moved in order
to keep fdtget compiling. This gets rid of build failures seen with
some upstream devicetrees.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 scripts/dtc/dtc-lexer.l              |   2 +-
 scripts/dtc/dtc-lexer.lex.c_shipped  | 312 +++++------
 scripts/dtc/dtc-parser.tab.c_shipped | 974 +++++++++++++++++------------------
 scripts/dtc/dtc-parser.tab.h_shipped |  50 +-
 scripts/dtc/dtc.c                    | 161 +++---
 scripts/dtc/dtc.h                    |   1 -
 scripts/dtc/fstree.c                 |   1 -
 scripts/dtc/srcpos.c                 |   6 +-
 scripts/dtc/treesource.c             |   1 -
 scripts/dtc/util.c                   | 141 ++++-
 scripts/dtc/util.h                   |  66 ++-
 scripts/dtc/version_gen.h            |   2 +-
 12 files changed, 957 insertions(+), 760 deletions(-)

diff --git a/scripts/dtc/dtc-lexer.l b/scripts/dtc/dtc-lexer.l
index 254d5af88956..3b41bfca636c 100644
--- a/scripts/dtc/dtc-lexer.l
+++ b/scripts/dtc/dtc-lexer.l
@@ -71,7 +71,7 @@ static int pop_input_file(void);
 			push_input_file(name);
 		}
 
-<*>^"#"(line)?{WS}+[0-9]+{WS}+{STRING}({WS}+[0-9]+)? {
+<*>^"#"(line)?[ \t]+[0-9]+[ \t]+{STRING}([ \t]+[0-9]+)? {
 			char *line, *tmp, *fn;
 			/* skip text before line # */
 			line = yytext;
diff --git a/scripts/dtc/dtc-lexer.lex.c_shipped b/scripts/dtc/dtc-lexer.lex.c_shipped
index 5a6b093e426a..2d30f41778b7 100644
--- a/scripts/dtc/dtc-lexer.lex.c_shipped
+++ b/scripts/dtc/dtc-lexer.lex.c_shipped
@@ -34,7 +34,7 @@
 #if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
 
 /* C99 says to define __STDC_LIMIT_MACROS before including stdint.h,
- * if you want the limit (max/min) macros for int types.
+ * if you want the limit (max/min) macros for int types. 
  */
 #ifndef __STDC_LIMIT_MACROS
 #define __STDC_LIMIT_MACROS 1
@@ -51,7 +51,7 @@ typedef uint32_t flex_uint32_t;
 typedef signed char flex_int8_t;
 typedef short int flex_int16_t;
 typedef int flex_int32_t;
-typedef unsigned char flex_uint8_t;
+typedef unsigned char flex_uint8_t; 
 typedef unsigned short int flex_uint16_t;
 typedef unsigned int flex_uint32_t;
 
@@ -171,7 +171,7 @@ extern FILE *yyin, *yyout;
 #define EOB_ACT_LAST_MATCH 2
 
     #define YY_LESS_LINENO(n)
-
+    
 /* Return all but the first "n" matched characters back to the input stream. */
 #define yyless(n) \
 	do \
@@ -233,7 +233,7 @@ struct yy_buffer_state
 
     int yy_bs_lineno; /**< The line count. */
     int yy_bs_column; /**< The column count. */
-
+    
 	/* Whether to try to fill the input buffer when we reach the
 	 * end of it.
 	 */
@@ -405,19 +405,19 @@ static yyconst flex_int16_t yy_accept[161] =
 static yyconst flex_int32_t yy_ec[256] =
     {   0,
         1,    1,    1,    1,    1,    1,    1,    1,    2,    3,
-        2,    2,    2,    1,    1,    1,    1,    1,    1,    1,
+        4,    4,    4,    1,    1,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    2,    4,    5,    6,    1,    1,    7,    8,    1,
-        1,    9,   10,   10,   11,   10,   12,   13,   14,   15,
-       15,   15,   15,   15,   15,   15,   15,   16,    1,   17,
-       18,   19,   10,   10,   20,   20,   20,   20,   20,   20,
-       21,   21,   21,   21,   21,   22,   21,   21,   21,   21,
-       21,   21,   21,   21,   23,   21,   21,   24,   21,   21,
-        1,   25,   26,    1,   21,    1,   20,   27,   28,   29,
-
-       30,   20,   21,   21,   31,   21,   21,   32,   33,   34,
-       35,   36,   21,   37,   38,   39,   40,   41,   21,   24,
-       42,   21,   43,   44,   45,    1,    1,    1,    1,    1,
+        1,    2,    5,    6,    7,    1,    1,    8,    9,    1,
+        1,   10,   11,   11,   12,   11,   13,   14,   15,   16,
+       16,   16,   16,   16,   16,   16,   16,   17,    1,   18,
+       19,   20,   11,   11,   21,   21,   21,   21,   21,   21,
+       22,   22,   22,   22,   22,   23,   22,   22,   22,   22,
+       22,   22,   22,   22,   24,   22,   22,   25,   22,   22,
+        1,   26,   27,    1,   22,    1,   21,   28,   29,   30,
+
+       31,   21,   22,   22,   32,   22,   22,   33,   34,   35,
+       36,   37,   22,   38,   39,   40,   41,   42,   22,   25,
+       43,   22,   44,   45,   46,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
@@ -434,36 +434,36 @@ static yyconst flex_int32_t yy_ec[256] =
         1,    1,    1,    1,    1
     } ;
 
-static yyconst flex_int32_t yy_meta[46] =
+static yyconst flex_int32_t yy_meta[47] =
     {   0,
-        1,    1,    1,    1,    1,    2,    3,    1,    2,    2,
-        2,    4,    5,    5,    5,    6,    1,    1,    1,    7,
-        8,    8,    8,    8,    1,    1,    7,    7,    7,    7,
-        8,    8,    8,    8,    8,    8,    8,    8,    8,    8,
-        8,    8,    3,    1,    1
+        1,    1,    1,    1,    1,    1,    2,    3,    1,    2,
+        2,    2,    4,    5,    5,    5,    6,    1,    1,    1,
+        7,    8,    8,    8,    8,    1,    1,    7,    7,    7,
+        7,    8,    8,    8,    8,    8,    8,    8,    8,    8,
+        8,    8,    8,    3,    1,    1
     } ;
 
 static yyconst flex_int16_t yy_base[175] =
     {   0,
-        0,  388,  381,   40,   41,  386,   71,  385,   34,   44,
-      390,  395,   60,   62,  371,  112,  111,  111,  111,  104,
-      370,  106,  371,  342,  124,  119,    0,  144,  395,    0,
-      123,    0,  159,  153,  165,  167,  395,  130,  395,  382,
-      395,    0,  372,  122,  395,  157,  374,  379,  350,   21,
-      346,  349,  395,  395,  395,  395,  395,  362,  395,  395,
-      181,  346,  342,  395,  359,    0,  191,  343,  190,  351,
-      350,    0,    0,    0,  173,  362,  177,  367,  357,  329,
-      335,  328,  337,  331,  206,  329,  334,  327,  395,  338,
-      170,  314,  346,  345,  318,  325,  343,  158,  316,  212,
-
-      322,  319,  320,  395,  340,  336,  308,  305,  314,  304,
-      295,  138,  208,  220,  395,  292,  305,  265,  264,  254,
-      201,  222,  285,  275,  273,  270,  236,  235,  225,  115,
-      395,  395,  252,  216,  216,  217,  214,  230,  209,  220,
-      213,  239,  211,  217,  216,  209,  229,  395,  240,  225,
-      206,  169,  395,  395,  116,  106,   99,   54,  395,  395,
-      254,  260,  268,  272,  276,  282,  289,  293,  301,  309,
-      313,  319,  327,  335
+        0,  385,  378,   40,   41,  383,   72,  382,   34,   44,
+      388,  393,   61,  117,  368,  116,  115,  115,  115,   48,
+      367,  107,  368,  339,  127,  120,    0,  147,  393,    0,
+      127,    0,  133,  156,  168,  153,  393,  125,  393,  380,
+      393,    0,  369,  127,  393,  160,  371,  377,  347,   21,
+      343,  346,  393,  393,  393,  393,  393,  359,  393,  393,
+      183,  343,  339,  393,  356,    0,  183,  340,  187,  348,
+      347,    0,    0,    0,  178,  359,  195,  365,  354,  326,
+      332,  325,  334,  328,  204,  326,  331,  324,  393,  335,
+      150,  311,  343,  342,  315,  322,  340,  179,  313,  207,
+
+      319,  316,  317,  393,  337,  333,  305,  302,  311,  301,
+      310,  190,  338,  337,  393,  307,  322,  301,  305,  277,
+      208,  311,  307,  278,  271,  270,  248,  246,  213,  130,
+      393,  393,  263,  235,  207,  221,  218,  229,  213,  213,
+      206,  234,  218,  210,  208,  193,  219,  393,  223,  204,
+      176,  157,  393,  393,  120,  106,   97,  119,  393,  393,
+      245,  251,  259,  263,  267,  273,  280,  284,  292,  300,
+      304,  310,  318,  326
     } ;
 
 static yyconst flex_int16_t yy_def[175] =
@@ -489,108 +489,108 @@ static yyconst flex_int16_t yy_def[175] =
       160,  160,  160,  160
     } ;
 
-static yyconst flex_int16_t yy_nxt[441] =
+static yyconst flex_int16_t yy_nxt[440] =
     {   0,
-       12,   13,   14,   15,   16,   12,   17,   18,   12,   12,
-       12,   19,   12,   12,   12,   12,   20,   21,   22,   23,
-       23,   23,   23,   23,   12,   12,   23,   23,   23,   23,
+       12,   13,   14,   13,   15,   16,   12,   17,   18,   12,
+       12,   12,   19,   12,   12,   12,   12,   20,   21,   22,
+       23,   23,   23,   23,   23,   12,   12,   23,   23,   23,
        23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
-       23,   23,   12,   24,   12,   25,   34,   35,   35,   25,
-       81,   26,   26,   27,   27,   27,   34,   35,   35,   82,
-       28,   36,   36,   36,   36,  159,   29,   28,   28,   28,
-       28,   12,   13,   14,   15,   16,   30,   17,   18,   30,
-       30,   30,   26,   30,   30,   30,   12,   20,   21,   22,
-       31,   31,   31,   31,   31,   32,   12,   31,   31,   31,
+       23,   23,   23,   12,   24,   12,   25,   34,   35,   35,
+       25,   81,   26,   26,   27,   27,   27,   34,   35,   35,
+       82,   28,   36,   36,   36,   53,   54,   29,   28,   28,
+       28,   28,   12,   13,   14,   13,   15,   16,   30,   17,
+       18,   30,   30,   30,   26,   30,   30,   30,   12,   20,
+       21,   22,   31,   31,   31,   31,   31,   32,   12,   31,
 
        31,   31,   31,   31,   31,   31,   31,   31,   31,   31,
-       31,   31,   31,   12,   24,   12,   39,   41,   45,   47,
-       53,   54,   48,   56,   57,   61,   61,   47,   66,   45,
-       48,   66,   66,   66,   39,   46,   40,   49,   59,   50,
-      158,   51,  122,   52,  157,   49,   46,   50,  136,   63,
-      137,   52,  156,   43,   40,   62,   65,   65,   65,   59,
-       61,   61,  123,   65,   75,   69,   69,   69,   36,   36,
-       65,   65,   65,   65,   70,   71,   72,   69,   69,   69,
-       45,   46,   61,   61,  109,   77,   70,   71,   93,  110,
-       68,   70,   71,   85,   85,   85,   66,   46,  155,   66,
-
-       66,   66,   69,   69,   69,  122,   59,  100,  100,   61,
-       61,   70,   71,  100,  100,  148,  112,  154,   85,   85,
-       85,   61,   61,  129,  129,  123,  129,  129,  135,  135,
-      135,  142,  142,  148,  143,  149,  153,  135,  135,  135,
-      142,  142,  160,  143,  152,  151,  150,  146,  145,  144,
-      141,  140,  139,  149,   38,   38,   38,   38,   38,   38,
-       38,   38,   42,  138,  134,  133,   42,   42,   44,   44,
-       44,   44,   44,   44,   44,   44,   58,   58,   58,   58,
-       64,  132,   64,   66,  131,  130,   66,  160,   66,   66,
-       67,  128,  127,   67,   67,   67,   67,   73,  126,   73,
-
-       73,   76,   76,   76,   76,   76,   76,   76,   76,   78,
-       78,   78,   78,   78,   78,   78,   78,   91,  125,   91,
-       92,  124,   92,   92,  120,   92,   92,  121,  121,  121,
-      121,  121,  121,  121,  121,  147,  147,  147,  147,  147,
-      147,  147,  147,  119,  118,  117,  116,  115,   47,  114,
-      110,  113,  111,  108,  107,  106,   48,  105,  104,   89,
-      103,  102,  101,   99,   98,   97,   96,   95,   94,   79,
-       77,   90,   89,   88,   59,   87,   86,   59,   84,   83,
-       80,   79,   77,   74,  160,   60,   59,   55,   37,  160,
-       33,   25,   26,   25,   11,  160,  160,  160,  160,  160,
+       31,   31,   31,   31,   31,   12,   24,   12,   36,   36,
+       36,   39,   41,   45,   47,   56,   57,   48,   61,   47,
+       39,  159,   48,   66,   61,   45,   66,   66,   66,  158,
+       46,   40,   49,   59,   50,  157,   51,   49,   52,   50,
+       40,   63,   46,   52,   36,   36,   36,  156,   43,   62,
+       65,   65,   65,   59,  136,   68,  137,   65,   75,   69,
+       69,   69,   70,   71,   65,   65,   65,   65,   70,   71,
+       72,   69,   69,   69,   61,   46,   45,  155,  154,   66,
+       70,   71,   66,   66,   66,  122,   85,   85,   85,   59,
+
+       69,   69,   69,   46,   77,  100,  109,   93,  100,   70,
+       71,  110,  112,  122,  129,  123,  153,   85,   85,   85,
+      135,  135,  135,  148,  148,  160,  135,  135,  135,  152,
+      142,  142,  142,  123,  143,  142,  142,  142,  151,  143,
+      150,  146,  145,  149,  149,   38,   38,   38,   38,   38,
+       38,   38,   38,   42,  144,  141,  140,   42,   42,   44,
+       44,   44,   44,   44,   44,   44,   44,   58,   58,   58,
+       58,   64,  139,   64,   66,  138,  134,   66,  133,   66,
+       66,   67,  132,  131,   67,   67,   67,   67,   73,  130,
+       73,   73,   76,   76,   76,   76,   76,   76,   76,   76,
+
+       78,   78,   78,   78,   78,   78,   78,   78,   91,  160,
+       91,   92,  129,   92,   92,  128,   92,   92,  121,  121,
+      121,  121,  121,  121,  121,  121,  147,  147,  147,  147,
+      147,  147,  147,  147,  127,  126,  125,  124,   61,   61,
+      120,  119,  118,  117,  116,  115,   47,  114,  110,  113,
+      111,  108,  107,  106,   48,  105,  104,   89,  103,  102,
+      101,   99,   98,   97,   96,   95,   94,   79,   77,   90,
+       89,   88,   59,   87,   86,   59,   84,   83,   80,   79,
+       77,   74,  160,   60,   59,   55,   37,  160,   33,   25,
+       26,   25,   11,  160,  160,  160,  160,  160,  160,  160,
 
       160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
       160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
       160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
-      160,  160,  160,  160,  160,  160,  160,  160,  160,  160
+      160,  160,  160,  160,  160,  160,  160,  160,  160
     } ;
 
-static yyconst flex_int16_t yy_chk[441] =
+static yyconst flex_int16_t yy_chk[440] =
     {   0,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    4,    9,    9,    9,   10,
-       50,    4,    5,    5,    5,    5,   10,   10,   10,   50,
-        5,   13,   13,   14,   14,  158,    5,    5,    5,    5,
-        5,    7,    7,    7,    7,    7,    7,    7,    7,    7,
+        1,    1,    1,    1,    1,    1,    4,    9,    9,    9,
+       10,   50,    4,    5,    5,    5,    5,   10,   10,   10,
+       50,    5,   13,   13,   13,   20,   20,    5,    5,    5,
+        5,    5,    7,    7,    7,    7,    7,    7,    7,    7,
         7,    7,    7,    7,    7,    7,    7,    7,    7,    7,
         7,    7,    7,    7,    7,    7,    7,    7,    7,    7,
 
         7,    7,    7,    7,    7,    7,    7,    7,    7,    7,
-        7,    7,    7,    7,    7,    7,   16,   17,   18,   19,
-       20,   20,   19,   22,   22,   25,   25,   26,   31,   44,
-       26,   31,   31,   31,   38,   18,   16,   19,   31,   19,
-      157,   19,  112,   19,  156,   26,   44,   26,  130,   26,
-      130,   26,  155,   17,   38,   25,   28,   28,   28,   28,
-       33,   33,  112,   28,   46,   34,   34,   34,   36,   36,
-       28,   28,   28,   28,   34,   34,   34,   35,   35,   35,
-       75,   46,   61,   61,   98,   77,   35,   35,   77,   98,
-       33,   91,   91,   61,   61,   61,   67,   75,  152,   67,
-
-       67,   67,   69,   69,   69,  121,   67,   85,   85,  113,
-      113,   69,   69,  100,  100,  143,  100,  151,   85,   85,
-       85,  114,  114,  122,  122,  121,  129,  129,  135,  135,
-      135,  138,  138,  147,  138,  143,  150,  129,  129,  129,
-      142,  142,  149,  142,  146,  145,  144,  141,  140,  139,
-      137,  136,  134,  147,  161,  161,  161,  161,  161,  161,
-      161,  161,  162,  133,  128,  127,  162,  162,  163,  163,
-      163,  163,  163,  163,  163,  163,  164,  164,  164,  164,
-      165,  126,  165,  166,  125,  124,  166,  123,  166,  166,
-      167,  120,  119,  167,  167,  167,  167,  168,  118,  168,
-
-      168,  169,  169,  169,  169,  169,  169,  169,  169,  170,
-      170,  170,  170,  170,  170,  170,  170,  171,  117,  171,
-      172,  116,  172,  172,  111,  172,  172,  173,  173,  173,
-      173,  173,  173,  173,  173,  174,  174,  174,  174,  174,
-      174,  174,  174,  110,  109,  108,  107,  106,  105,  103,
-      102,  101,   99,   97,   96,   95,   94,   93,   92,   90,
-       88,   87,   86,   84,   83,   82,   81,   80,   79,   78,
-       76,   71,   70,   68,   65,   63,   62,   58,   52,   51,
-       49,   48,   47,   43,   40,   24,   23,   21,   15,   11,
-        8,    6,    3,    2,  160,  160,  160,  160,  160,  160,
+        7,    7,    7,    7,    7,    7,    7,    7,   14,   14,
+       14,   16,   17,   18,   19,   22,   22,   19,   25,   26,
+       38,  158,   26,   31,   33,   44,   31,   31,   31,  157,
+       18,   16,   19,   31,   19,  156,   19,   26,   19,   26,
+       38,   26,   44,   26,   36,   36,   36,  155,   17,   25,
+       28,   28,   28,   28,  130,   33,  130,   28,   46,   34,
+       34,   34,   91,   91,   28,   28,   28,   28,   34,   34,
+       34,   35,   35,   35,   61,   46,   75,  152,  151,   67,
+       35,   35,   67,   67,   67,  112,   61,   61,   61,   67,
+
+       69,   69,   69,   75,   77,   85,   98,   77,  100,   69,
+       69,   98,  100,  121,  129,  112,  150,   85,   85,   85,
+      135,  135,  135,  143,  147,  149,  129,  129,  129,  146,
+      138,  138,  138,  121,  138,  142,  142,  142,  145,  142,
+      144,  141,  140,  143,  147,  161,  161,  161,  161,  161,
+      161,  161,  161,  162,  139,  137,  136,  162,  162,  163,
+      163,  163,  163,  163,  163,  163,  163,  164,  164,  164,
+      164,  165,  134,  165,  166,  133,  128,  166,  127,  166,
+      166,  167,  126,  125,  167,  167,  167,  167,  168,  124,
+      168,  168,  169,  169,  169,  169,  169,  169,  169,  169,
+
+      170,  170,  170,  170,  170,  170,  170,  170,  171,  123,
+      171,  172,  122,  172,  172,  120,  172,  172,  173,  173,
+      173,  173,  173,  173,  173,  173,  174,  174,  174,  174,
+      174,  174,  174,  174,  119,  118,  117,  116,  114,  113,
+      111,  110,  109,  108,  107,  106,  105,  103,  102,  101,
+       99,   97,   96,   95,   94,   93,   92,   90,   88,   87,
+       86,   84,   83,   82,   81,   80,   79,   78,   76,   71,
+       70,   68,   65,   63,   62,   58,   52,   51,   49,   48,
+       47,   43,   40,   24,   23,   21,   15,   11,    8,    6,
+        3,    2,  160,  160,  160,  160,  160,  160,  160,  160,
 
       160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
       160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
       160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
-      160,  160,  160,  160,  160,  160,  160,  160,  160,  160
+      160,  160,  160,  160,  160,  160,  160,  160,  160
     } ;
 
 static yy_state_type yy_last_accepting_state;
@@ -851,7 +851,7 @@ YY_DECL
 	register yy_state_type yy_current_state;
 	register char *yy_cp, *yy_bp;
 	register int yy_act;
-
+    
 #line 67 "dtc-lexer.l"
 
 #line 858 "dtc-lexer.lex.c"
@@ -1484,7 +1484,7 @@ static int yy_get_next_buffer (void)
 {
 	register yy_state_type yy_current_state;
 	register char *yy_cp;
-
+    
 	yy_current_state = (yy_start);
 	yy_current_state += YY_AT_BOL();
 
@@ -1545,7 +1545,7 @@ static int yy_get_next_buffer (void)
 
 {
 	int c;
-
+    
 	*(yy_c_buf_p) = (yy_hold_char);
 
 	if ( *(yy_c_buf_p) == YY_END_OF_BUFFER_CHAR )
@@ -1614,12 +1614,12 @@ static int yy_get_next_buffer (void)
 
 /** Immediately switch to a different input stream.
  * @param input_file A readable stream.
- *
+ * 
  * @note This function does not reset the start condition to @c INITIAL .
  */
     void yyrestart  (FILE * input_file )
 {
-
+    
 	if ( ! YY_CURRENT_BUFFER ){
         yyensure_buffer_stack ();
 		YY_CURRENT_BUFFER_LVALUE =
@@ -1632,11 +1632,11 @@ static int yy_get_next_buffer (void)
 
 /** Switch to a different input buffer.
  * @param new_buffer The new input buffer.
- *
+ * 
  */
     void yy_switch_to_buffer  (YY_BUFFER_STATE  new_buffer )
 {
-
+    
 	/* TODO. We should be able to replace this entire function body
 	 * with
 	 *		yypop_buffer_state();
@@ -1676,13 +1676,13 @@ static void yy_load_buffer_state  (void)
 /** Allocate and initialize an input buffer state.
  * @param file A readable stream.
  * @param size The character buffer size in bytes. When in doubt, use @c YY_BUF_SIZE.
- *
+ * 
  * @return the allocated buffer state.
  */
     YY_BUFFER_STATE yy_create_buffer  (FILE * file, int  size )
 {
 	YY_BUFFER_STATE b;
-
+    
 	b = (YY_BUFFER_STATE) yyalloc(sizeof( struct yy_buffer_state )  );
 	if ( ! b )
 		YY_FATAL_ERROR( "out of dynamic memory in yy_create_buffer()" );
@@ -1705,11 +1705,11 @@ static void yy_load_buffer_state  (void)
 
 /** Destroy the buffer.
  * @param b a buffer created with yy_create_buffer()
- *
+ * 
  */
     void yy_delete_buffer (YY_BUFFER_STATE  b )
 {
-
+    
 	if ( ! b )
 		return;
 
@@ -1730,7 +1730,7 @@ static void yy_load_buffer_state  (void)
 
 {
 	int oerrno = errno;
-
+    
 	yy_flush_buffer(b );
 
 	b->yy_input_file = file;
@@ -1746,13 +1746,13 @@ static void yy_load_buffer_state  (void)
     }
 
         b->yy_is_interactive = 0;
-
+    
 	errno = oerrno;
 }
 
 /** Discard all buffered characters. On the next scan, YY_INPUT will be called.
  * @param b the buffer state to be flushed, usually @c YY_CURRENT_BUFFER.
- *
+ * 
  */
     void yy_flush_buffer (YY_BUFFER_STATE  b )
 {
@@ -1781,7 +1781,7 @@ static void yy_load_buffer_state  (void)
  *  the current state. This function will allocate the stack
  *  if necessary.
  *  @param new_buffer The new state.
- *
+ *  
  */
 void yypush_buffer_state (YY_BUFFER_STATE new_buffer )
 {
@@ -1811,7 +1811,7 @@ void yypush_buffer_state (YY_BUFFER_STATE new_buffer )
 
 /** Removes and deletes the top of the stack, if present.
  *  The next element becomes the new top.
- *
+ *  
  */
 void yypop_buffer_state (void)
 {
@@ -1835,7 +1835,7 @@ void yypop_buffer_state (void)
 static void yyensure_buffer_stack (void)
 {
 	int num_to_alloc;
-
+    
 	if (!(yy_buffer_stack)) {
 
 		/* First allocation is just for 2 elements, since we don't know if this
@@ -1848,9 +1848,9 @@ static void yyensure_buffer_stack (void)
 								);
 		if ( ! (yy_buffer_stack) )
 			YY_FATAL_ERROR( "out of dynamic memory in yyensure_buffer_stack()" );
-
+								  
 		memset((yy_buffer_stack), 0, num_to_alloc * sizeof(struct yy_buffer_state*));
-
+				
 		(yy_buffer_stack_max) = num_to_alloc;
 		(yy_buffer_stack_top) = 0;
 		return;
@@ -1878,13 +1878,13 @@ static void yyensure_buffer_stack (void)
 /** Setup the input buffer state to scan directly from a user-specified character buffer.
  * @param base the character buffer
  * @param size the size in bytes of the character buffer
- *
- * @return the newly allocated buffer state object.
+ * 
+ * @return the newly allocated buffer state object. 
  */
 YY_BUFFER_STATE yy_scan_buffer  (char * base, yy_size_t  size )
 {
 	YY_BUFFER_STATE b;
-
+    
 	if ( size < 2 ||
 	     base[size-2] != YY_END_OF_BUFFER_CHAR ||
 	     base[size-1] != YY_END_OF_BUFFER_CHAR )
@@ -1913,14 +1913,14 @@ YY_BUFFER_STATE yy_scan_buffer  (char * base, yy_size_t  size )
 /** Setup the input buffer state to scan a string. The next call to yylex() will
  * scan from a @e copy of @a str.
  * @param yystr a NUL-terminated string to scan
- *
+ * 
  * @return the newly allocated buffer state object.
  * @note If you want to scan bytes that may contain NUL values, then use
  *       yy_scan_bytes() instead.
  */
 YY_BUFFER_STATE yy_scan_string (yyconst char * yystr )
 {
-
+    
 	return yy_scan_bytes(yystr,strlen(yystr) );
 }
 
@@ -1928,7 +1928,7 @@ YY_BUFFER_STATE yy_scan_string (yyconst char * yystr )
  * scan from a @e copy of @a bytes.
  * @param yybytes the byte buffer to scan
  * @param _yybytes_len the number of bytes in the buffer pointed to by @a bytes.
- *
+ * 
  * @return the newly allocated buffer state object.
  */
 YY_BUFFER_STATE yy_scan_bytes  (yyconst char * yybytes, int  _yybytes_len )
@@ -1937,7 +1937,7 @@ YY_BUFFER_STATE yy_scan_bytes  (yyconst char * yybytes, int  _yybytes_len )
 	char *buf;
 	yy_size_t n;
 	int i;
-
+    
 	/* Get memory for full buffer, including space for trailing EOB's. */
 	n = _yybytes_len + 2;
 	buf = (char *) yyalloc(n  );
@@ -1991,16 +1991,16 @@ static void yy_fatal_error (yyconst char* msg )
 /* Accessor  methods (get/set functions) to struct members. */
 
 /** Get the current line number.
- *
+ * 
  */
 int yyget_lineno  (void)
 {
-
+        
     return yylineno;
 }
 
 /** Get the input stream.
- *
+ * 
  */
 FILE *yyget_in  (void)
 {
@@ -2008,7 +2008,7 @@ FILE *yyget_in  (void)
 }
 
 /** Get the output stream.
- *
+ * 
  */
 FILE *yyget_out  (void)
 {
@@ -2016,7 +2016,7 @@ FILE *yyget_out  (void)
 }
 
 /** Get the length of the current token.
- *
+ * 
  */
 int yyget_leng  (void)
 {
@@ -2024,7 +2024,7 @@ int yyget_leng  (void)
 }
 
 /** Get the current token.
- *
+ * 
  */
 
 char *yyget_text  (void)
@@ -2034,18 +2034,18 @@ char *yyget_text  (void)
 
 /** Set the current line number.
  * @param line_number
- *
+ * 
  */
 void yyset_lineno (int  line_number )
 {
-
+    
     yylineno = line_number;
 }
 
 /** Set the input stream. This does not discard the current
  * input buffer.
  * @param in_str A readable stream.
- *
+ * 
  * @see yy_switch_to_buffer
  */
 void yyset_in (FILE *  in_str )
@@ -2099,7 +2099,7 @@ static int yy_init_globals (void)
 /* yylex_destroy is for both reentrant and non-reentrant scanners. */
 int yylex_destroy  (void)
 {
-
+    
     /* Pop the buffer stack, destroying each element. */
 	while(YY_CURRENT_BUFFER){
 		yy_delete_buffer(YY_CURRENT_BUFFER  );
diff --git a/scripts/dtc/dtc-parser.tab.c_shipped b/scripts/dtc/dtc-parser.tab.c_shipped
index 4af55900a15b..c8769d550cfb 100644
--- a/scripts/dtc/dtc-parser.tab.c_shipped
+++ b/scripts/dtc/dtc-parser.tab.c_shipped
@@ -1,10 +1,8 @@
+/* A Bison parser, made by GNU Bison 2.7.12-4996.  */
 
-/* A Bison parser, made by GNU Bison 2.4.1.  */
-
-/* Skeleton implementation for Bison's Yacc-like parsers in C
+/* Bison implementation for Yacc-like parsers in C
    
-      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
-   Free Software Foundation, Inc.
+      Copyright (C) 1984, 1989-1990, 2000-2013 Free Software Foundation, Inc.
    
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
@@ -46,7 +44,7 @@
 #define YYBISON 1
 
 /* Bison version.  */
-#define YYBISON_VERSION "2.4.1"
+#define YYBISON_VERSION "2.7.12-4996"
 
 /* Skeleton name.  */
 #define YYSKELETON_NAME "yacc.c"
@@ -60,14 +58,11 @@
 /* Pull parsers.  */
 #define YYPULL 1
 
-/* Using locations.  */
-#define YYLSP_NEEDED 0
 
 
 
 /* Copy the first part of user declarations.  */
-
-/* Line 189 of yacc.c  */
+/* Line 371 of yacc.c  */
 #line 21 "dtc-parser.y"
 
 #include <stdio.h>
@@ -87,14 +82,16 @@ extern int treesource_error;
 static unsigned long long eval_literal(const char *s, int base, int bits);
 static unsigned char eval_char_literal(const char *s);
 
+/* Line 371 of yacc.c  */
+#line 87 "dtc-parser.tab.c"
 
-/* Line 189 of yacc.c  */
-#line 93 "dtc-parser.tab.c"
-
-/* Enabling traces.  */
-#ifndef YYDEBUG
-# define YYDEBUG 0
-#endif
+# ifndef YY_NULL
+#  if defined __cplusplus && 201103L <= __cplusplus
+#   define YY_NULL nullptr
+#  else
+#   define YY_NULL 0
+#  endif
+# endif
 
 /* Enabling verbose error messages.  */
 #ifdef YYERROR_VERBOSE
@@ -104,11 +101,17 @@ static unsigned char eval_char_literal(const char *s);
 # define YYERROR_VERBOSE 0
 #endif
 
-/* Enabling the token table.  */
-#ifndef YYTOKEN_TABLE
-# define YYTOKEN_TABLE 0
+/* In a future release of Bison, this section will be replaced
+   by #include "dtc-parser.tab.h".  */
+#ifndef YY_YY_DTC_PARSER_TAB_H_INCLUDED
+# define YY_YY_DTC_PARSER_TAB_H_INCLUDED
+/* Enabling traces.  */
+#ifndef YYDEBUG
+# define YYDEBUG 0
+#endif
+#if YYDEBUG
+extern int yydebug;
 #endif
-
 
 /* Tokens.  */
 #ifndef YYTOKENTYPE
@@ -142,12 +145,10 @@ static unsigned char eval_char_literal(const char *s);
 #endif
 
 
-
 #if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
 typedef union YYSTYPE
 {
-
-/* Line 214 of yacc.c  */
+/* Line 387 of yacc.c  */
 #line 40 "dtc-parser.y"
 
 	char *propnodename;
@@ -170,8 +171,7 @@ typedef union YYSTYPE
 	uint64_t integer;
 
 
-
-/* Line 214 of yacc.c  */
+/* Line 387 of yacc.c  */
 #line 176 "dtc-parser.tab.c"
 } YYSTYPE;
 # define YYSTYPE_IS_TRIVIAL 1
@@ -179,12 +179,28 @@ typedef union YYSTYPE
 # define YYSTYPE_IS_DECLARED 1
 #endif
 
+extern YYSTYPE yylval;
 
-/* Copy the second part of user declarations.  */
+#ifdef YYPARSE_PARAM
+#if defined __STDC__ || defined __cplusplus
+int yyparse (void *YYPARSE_PARAM);
+#else
+int yyparse ();
+#endif
+#else /* ! YYPARSE_PARAM */
+#if defined __STDC__ || defined __cplusplus
+int yyparse (void);
+#else
+int yyparse ();
+#endif
+#endif /* ! YYPARSE_PARAM */
+
+#endif /* !YY_YY_DTC_PARSER_TAB_H_INCLUDED  */
 
+/* Copy the second part of user declarations.  */
 
-/* Line 264 of yacc.c  */
-#line 188 "dtc-parser.tab.c"
+/* Line 390 of yacc.c  */
+#line 204 "dtc-parser.tab.c"
 
 #ifdef short
 # undef short
@@ -234,27 +250,36 @@ typedef short int yytype_int16;
 #define YYSIZE_MAXIMUM ((YYSIZE_T) -1)
 
 #ifndef YY_
-# if YYENABLE_NLS
+# if defined YYENABLE_NLS && YYENABLE_NLS
 #  if ENABLE_NLS
 #   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
-#   define YY_(msgid) dgettext ("bison-runtime", msgid)
+#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
 #  endif
 # endif
 # ifndef YY_
-#  define YY_(msgid) msgid
+#  define YY_(Msgid) Msgid
+# endif
+#endif
+
+#ifndef __attribute__
+/* This feature is available in gcc versions 2.5 and later.  */
+# if (! defined __GNUC__ || __GNUC__ < 2 \
+      || (__GNUC__ == 2 && __GNUC_MINOR__ < 5))
+#  define __attribute__(Spec) /* empty */
 # endif
 #endif
 
 /* Suppress unused-variable warnings by "using" E.  */
 #if ! defined lint || defined __GNUC__
-# define YYUSE(e) ((void) (e))
+# define YYUSE(E) ((void) (E))
 #else
-# define YYUSE(e) /* empty */
+# define YYUSE(E) /* empty */
 #endif
 
+
 /* Identity function, used to suppress warnings about constant conditions.  */
 #ifndef lint
-# define YYID(n) (n)
+# define YYID(N) (N)
 #else
 #if (defined __STDC__ || defined __C99__FUNC__ \
      || defined __cplusplus || defined _MSC_VER)
@@ -287,11 +312,12 @@ YYID (yyi)
 #    define alloca _alloca
 #   else
 #    define YYSTACK_ALLOC alloca
-#    if ! defined _ALLOCA_H && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
+#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
      || defined __cplusplus || defined _MSC_VER)
 #     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
-#     ifndef _STDLIB_H
-#      define _STDLIB_H 1
+      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
+#     ifndef EXIT_SUCCESS
+#      define EXIT_SUCCESS 0
 #     endif
 #    endif
 #   endif
@@ -314,24 +340,24 @@ YYID (yyi)
 #  ifndef YYSTACK_ALLOC_MAXIMUM
 #   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
 #  endif
-#  if (defined __cplusplus && ! defined _STDLIB_H \
+#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
        && ! ((defined YYMALLOC || defined malloc) \
 	     && (defined YYFREE || defined free)))
 #   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
-#   ifndef _STDLIB_H
-#    define _STDLIB_H 1
+#   ifndef EXIT_SUCCESS
+#    define EXIT_SUCCESS 0
 #   endif
 #  endif
 #  ifndef YYMALLOC
 #   define YYMALLOC malloc
-#   if ! defined malloc && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
+#   if ! defined malloc && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
      || defined __cplusplus || defined _MSC_VER)
 void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
 #   endif
 #  endif
 #  ifndef YYFREE
 #   define YYFREE free
-#   if ! defined free && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
+#   if ! defined free && ! defined EXIT_SUCCESS && (defined __STDC__ || defined __C99__FUNC__ \
      || defined __cplusplus || defined _MSC_VER)
 void free (void *); /* INFRINGES ON USER NAME SPACE */
 #   endif
@@ -360,23 +386,7 @@ union yyalloc
      ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
       + YYSTACK_GAP_MAXIMUM)
 
-/* Copy COUNT objects from FROM to TO.  The source and destination do
-   not overlap.  */
-# ifndef YYCOPY
-#  if defined __GNUC__ && 1 < __GNUC__
-#   define YYCOPY(To, From, Count) \
-      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
-#  else
-#   define YYCOPY(To, From, Count)		\
-      do					\
-	{					\
-	  YYSIZE_T yyi;				\
-	  for (yyi = 0; yyi < (Count); yyi++)	\
-	    (To)[yyi] = (From)[yyi];		\
-	}					\
-      while (YYID (0))
-#  endif
-# endif
+# define YYCOPY_NEEDED 1
 
 /* Relocate STACK from its old location to the new one.  The
    local variables YYSIZE and YYSTACKSIZE give the old and new number of
@@ -396,6 +406,26 @@ union yyalloc
 
 #endif
 
+#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
+/* Copy COUNT objects from SRC to DST.  The source and destination do
+   not overlap.  */
+# ifndef YYCOPY
+#  if defined __GNUC__ && 1 < __GNUC__
+#   define YYCOPY(Dst, Src, Count) \
+      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
+#  else
+#   define YYCOPY(Dst, Src, Count)              \
+      do                                        \
+        {                                       \
+          YYSIZE_T yyi;                         \
+          for (yyi = 0; yyi < (Count); yyi++)   \
+            (Dst)[yyi] = (Src)[yyi];            \
+        }                                       \
+      while (YYID (0))
+#  endif
+# endif
+#endif /* !YYCOPY_NEEDED */
+
 /* YYFINAL -- State number of the termination state.  */
 #define YYFINAL  4
 /* YYLAST -- Last index in YYTABLE.  */
@@ -511,7 +541,7 @@ static const yytype_uint16 yyrline[] =
 };
 #endif
 
-#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
+#if YYDEBUG || YYERROR_VERBOSE || 0
 /* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
    First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
 static const char *const yytname[] =
@@ -528,7 +558,7 @@ static const char *const yytname[] =
   "integer_expr", "integer_trinary", "integer_or", "integer_and",
   "integer_bitor", "integer_bitxor", "integer_bitand", "integer_eq",
   "integer_rela", "integer_shift", "integer_add", "integer_mul",
-  "integer_unary", "bytestring", "subnodes", "subnode", 0
+  "integer_unary", "bytestring", "subnodes", "subnode", YY_NULL
 };
 #endif
 
@@ -571,8 +601,8 @@ static const yytype_uint8 yyr2[] =
        2,     0,     2,     2,     0,     2,     2,     2,     3,     2
 };
 
-/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
-   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
+/* YYDEFACT[STATE-NAME] -- Default reduction number in state STATE-NUM.
+   Performed when YYTABLE doesn't specify something else to do.  Zero
    means the default is an error.  */
 static const yytype_uint8 yydefact[] =
 {
@@ -633,8 +663,7 @@ static const yytype_int8 yypgoto[] =
 
 /* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
    positive, shift that token.  If negative, reduce the rule which
-   number is the opposite.  If zero, do what YYDEFACT says.
-   If YYTABLE_NINF, syntax error.  */
+   number is the opposite.  If YYTABLE_NINF, syntax error.  */
 #define YYTABLE_NINF -1
 static const yytype_uint8 yytable[] =
 {
@@ -654,6 +683,12 @@ static const yytype_uint8 yytable[] =
      137,     0,    73,   139
 };
 
+#define yypact_value_is_default(Yystate) \
+  (!!((Yystate) == (-78)))
+
+#define yytable_value_is_error(Yytable_value) \
+  YYID (0)
+
 static const yytype_int16 yycheck[] =
 {
        5,    38,    39,    17,    18,    19,    12,    12,    17,    18,
@@ -705,78 +740,50 @@ static const yytype_uint8 yystos[] =
 
 /* Like YYERROR except do call yyerror.  This remains here temporarily
    to ease the transition to the new meaning of YYERROR, for GCC.
-   Once GCC version 2 has supplanted version 1, this can go.  */
+   Once GCC version 2 has supplanted version 1, this can go.  However,
+   YYFAIL appears to be in use.  Nevertheless, it is formally deprecated
+   in Bison 2.4.2's NEWS entry, where a plan to phase it out is
+   discussed.  */
 
 #define YYFAIL		goto yyerrlab
+#if defined YYFAIL
+  /* This is here to suppress warnings from the GCC cpp's
+     -Wunused-macros.  Normally we don't worry about that warning, but
+     some users do, and we want to make it easy for users to remove
+     YYFAIL uses, which will produce warnings from Bison 2.5.  */
+#endif
 
 #define YYRECOVERING()  (!!yyerrstatus)
 
-#define YYBACKUP(Token, Value)					\
-do								\
-  if (yychar == YYEMPTY && yylen == 1)				\
-    {								\
-      yychar = (Token);						\
-      yylval = (Value);						\
-      yytoken = YYTRANSLATE (yychar);				\
-      YYPOPSTACK (1);						\
-      goto yybackup;						\
-    }								\
-  else								\
-    {								\
+#define YYBACKUP(Token, Value)                                  \
+do                                                              \
+  if (yychar == YYEMPTY)                                        \
+    {                                                           \
+      yychar = (Token);                                         \
+      yylval = (Value);                                         \
+      YYPOPSTACK (yylen);                                       \
+      yystate = *yyssp;                                         \
+      goto yybackup;                                            \
+    }                                                           \
+  else                                                          \
+    {                                                           \
       yyerror (YY_("syntax error: cannot back up")); \
       YYERROR;							\
     }								\
 while (YYID (0))
 
-
+/* Error token number */
 #define YYTERROR	1
 #define YYERRCODE	256
 
 
-/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
-   If N is 0, then set CURRENT to the empty location which ends
-   the previous symbol: RHS[0] (always defined).  */
-
-#define YYRHSLOC(Rhs, K) ((Rhs)[K])
-#ifndef YYLLOC_DEFAULT
-# define YYLLOC_DEFAULT(Current, Rhs, N)				\
-    do									\
-      if (YYID (N))                                                    \
-	{								\
-	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
-	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
-	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
-	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
-	}								\
-      else								\
-	{								\
-	  (Current).first_line   = (Current).last_line   =		\
-	    YYRHSLOC (Rhs, 0).last_line;				\
-	  (Current).first_column = (Current).last_column =		\
-	    YYRHSLOC (Rhs, 0).last_column;				\
-	}								\
-    while (YYID (0))
-#endif
-
-
-/* YY_LOCATION_PRINT -- Print the location on the stream.
-   This macro was not mandated originally: define only if we know
-   we won't break user code: when these are the locations we know.  */
-
+/* This macro is provided for backward compatibility. */
 #ifndef YY_LOCATION_PRINT
-# if YYLTYPE_IS_TRIVIAL
-#  define YY_LOCATION_PRINT(File, Loc)			\
-     fprintf (File, "%d.%d-%d.%d",			\
-	      (Loc).first_line, (Loc).first_column,	\
-	      (Loc).last_line,  (Loc).last_column)
-# else
-#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
-# endif
+# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
 #endif
 
 
 /* YYLEX -- calling `yylex' with the right arguments.  */
-
 #ifdef YYLEX_PARAM
 # define YYLEX yylex (YYLEX_PARAM)
 #else
@@ -826,6 +833,8 @@ yy_symbol_value_print (yyoutput, yytype, yyvaluep)
     YYSTYPE const * const yyvaluep;
 #endif
 {
+  FILE *yyo = yyoutput;
+  YYUSE (yyo);
   if (!yyvaluep)
     return;
 # ifdef YYPRINT
@@ -834,11 +843,7 @@ yy_symbol_value_print (yyoutput, yytype, yyvaluep)
 # else
   YYUSE (yyoutput);
 # endif
-  switch (yytype)
-    {
-      default:
-	break;
-    }
+  YYUSE (yytype);
 }
 
 
@@ -963,7 +968,6 @@ int yydebug;
 # define YYMAXDEPTH 10000
 #endif
 
-
 
 #if YYERROR_VERBOSE
 
@@ -1066,115 +1070,145 @@ yytnamerr (char *yyres, const char *yystr)
 }
 # endif
 
-/* Copy into YYRESULT an error message about the unexpected token
-   YYCHAR while in state YYSTATE.  Return the number of bytes copied,
-   including the terminating null byte.  If YYRESULT is null, do not
-   copy anything; just return the number of bytes that would be
-   copied.  As a special case, return 0 if an ordinary "syntax error"
-   message will do.  Return YYSIZE_MAXIMUM if overflow occurs during
-   size calculation.  */
-static YYSIZE_T
-yysyntax_error (char *yyresult, int yystate, int yychar)
-{
-  int yyn = yypact[yystate];
+/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
+   about the unexpected token YYTOKEN for the state stack whose top is
+   YYSSP.
 
-  if (! (YYPACT_NINF < yyn && yyn <= YYLAST))
-    return 0;
-  else
+   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
+   not large enough to hold the message.  In that case, also set
+   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
+   required number of bytes is too large to store.  */
+static int
+yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
+                yytype_int16 *yyssp, int yytoken)
+{
+  YYSIZE_T yysize0 = yytnamerr (YY_NULL, yytname[yytoken]);
+  YYSIZE_T yysize = yysize0;
+  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
+  /* Internationalized format string. */
+  const char *yyformat = YY_NULL;
+  /* Arguments of yyformat. */
+  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
+  /* Number of reported tokens (one for the "unexpected", one per
+     "expected"). */
+  int yycount = 0;
+
+  /* There are many possibilities here to consider:
+     - Assume YYFAIL is not used.  It's too flawed to consider.  See
+       <http://lists.gnu.org/archive/html/bison-patches/2009-12/msg00024.html>
+       for details.  YYERROR is fine as it does not invoke this
+       function.
+     - If this state is a consistent state with a default action, then
+       the only way this function was invoked is if the default action
+       is an error action.  In that case, don't check for expected
+       tokens because there are none.
+     - The only way there can be no lookahead present (in yychar) is if
+       this state is a consistent state with a default action.  Thus,
+       detecting the absence of a lookahead is sufficient to determine
+       that there is no unexpected or expected token to report.  In that
+       case, just report a simple "syntax error".
+     - Don't assume there isn't a lookahead just because this state is a
+       consistent state with a default action.  There might have been a
+       previous inconsistent state, consistent state with a non-default
+       action, or user semantic action that manipulated yychar.
+     - Of course, the expected token list depends on states to have
+       correct lookahead information, and it depends on the parser not
+       to perform extra reductions after fetching a lookahead from the
+       scanner and before detecting a syntax error.  Thus, state merging
+       (from LALR or IELR) and default reductions corrupt the expected
+       token list.  However, the list is correct for canonical LR with
+       one exception: it will still contain any token that will not be
+       accepted due to an error action in a later state.
+  */
+  if (yytoken != YYEMPTY)
     {
-      int yytype = YYTRANSLATE (yychar);
-      YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
-      YYSIZE_T yysize = yysize0;
-      YYSIZE_T yysize1;
-      int yysize_overflow = 0;
-      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
-      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
-      int yyx;
-
-# if 0
-      /* This is so xgettext sees the translatable formats that are
-	 constructed on the fly.  */
-      YY_("syntax error, unexpected %s");
-      YY_("syntax error, unexpected %s, expecting %s");
-      YY_("syntax error, unexpected %s, expecting %s or %s");
-      YY_("syntax error, unexpected %s, expecting %s or %s or %s");
-      YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
-# endif
-      char *yyfmt;
-      char const *yyf;
-      static char const yyunexpected[] = "syntax error, unexpected %s";
-      static char const yyexpecting[] = ", expecting %s";
-      static char const yyor[] = " or %s";
-      char yyformat[sizeof yyunexpected
-		    + sizeof yyexpecting - 1
-		    + ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
-		       * (sizeof yyor - 1))];
-      char const *yyprefix = yyexpecting;
-
-      /* Start YYX at -YYN if negative to avoid negative indexes in
-	 YYCHECK.  */
-      int yyxbegin = yyn < 0 ? -yyn : 0;
-
-      /* Stay within bounds of both yycheck and yytname.  */
-      int yychecklim = YYLAST - yyn + 1;
-      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
-      int yycount = 1;
-
-      yyarg[0] = yytname[yytype];
-      yyfmt = yystpcpy (yyformat, yyunexpected);
-
-      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
-	if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
-	  {
-	    if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
-	      {
-		yycount = 1;
-		yysize = yysize0;
-		yyformat[sizeof yyunexpected - 1] = '\0';
-		break;
-	      }
-	    yyarg[yycount++] = yytname[yyx];
-	    yysize1 = yysize + yytnamerr (0, yytname[yyx]);
-	    yysize_overflow |= (yysize1 < yysize);
-	    yysize = yysize1;
-	    yyfmt = yystpcpy (yyfmt, yyprefix);
-	    yyprefix = yyor;
-	  }
+      int yyn = yypact[*yyssp];
+      yyarg[yycount++] = yytname[yytoken];
+      if (!yypact_value_is_default (yyn))
+        {
+          /* Start YYX at -YYN if negative to avoid negative indexes in
+             YYCHECK.  In other words, skip the first -YYN actions for
+             this state because they are default actions.  */
+          int yyxbegin = yyn < 0 ? -yyn : 0;
+          /* Stay within bounds of both yycheck and yytname.  */
+          int yychecklim = YYLAST - yyn + 1;
+          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
+          int yyx;
+
+          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
+            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
+                && !yytable_value_is_error (yytable[yyx + yyn]))
+              {
+                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
+                  {
+                    yycount = 1;
+                    yysize = yysize0;
+                    break;
+                  }
+                yyarg[yycount++] = yytname[yyx];
+                {
+                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULL, yytname[yyx]);
+                  if (! (yysize <= yysize1
+                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
+                    return 2;
+                  yysize = yysize1;
+                }
+              }
+        }
+    }
 
-      yyf = YY_(yyformat);
-      yysize1 = yysize + yystrlen (yyf);
-      yysize_overflow |= (yysize1 < yysize);
-      yysize = yysize1;
+  switch (yycount)
+    {
+# define YYCASE_(N, S)                      \
+      case N:                               \
+        yyformat = S;                       \
+      break
+      YYCASE_(0, YY_("syntax error"));
+      YYCASE_(1, YY_("syntax error, unexpected %s"));
+      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
+      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
+      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
+      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
+# undef YYCASE_
+    }
 
-      if (yysize_overflow)
-	return YYSIZE_MAXIMUM;
+  {
+    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
+    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
+      return 2;
+    yysize = yysize1;
+  }
 
-      if (yyresult)
-	{
-	  /* Avoid sprintf, as that infringes on the user's name space.
-	     Don't have undefined behavior even if the translation
-	     produced a string with the wrong number of "%s"s.  */
-	  char *yyp = yyresult;
-	  int yyi = 0;
-	  while ((*yyp = *yyf) != '\0')
-	    {
-	      if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
-		{
-		  yyp += yytnamerr (yyp, yyarg[yyi++]);
-		  yyf += 2;
-		}
-	      else
-		{
-		  yyp++;
-		  yyf++;
-		}
-	    }
-	}
-      return yysize;
+  if (*yymsg_alloc < yysize)
+    {
+      *yymsg_alloc = 2 * yysize;
+      if (! (yysize <= *yymsg_alloc
+             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
+        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
+      return 1;
     }
+
+  /* Avoid sprintf, as that infringes on the user's name space.
+     Don't have undefined behavior even if the translation
+     produced a string with the wrong number of "%s"s.  */
+  {
+    char *yyp = *yymsg;
+    int yyi = 0;
+    while ((*yyp = *yyformat) != '\0')
+      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
+        {
+          yyp += yytnamerr (yyp, yyarg[yyi++]);
+          yyformat += 2;
+        }
+      else
+        {
+          yyp++;
+          yyformat++;
+        }
+  }
+  return 0;
 }
 #endif /* YYERROR_VERBOSE */
-
 
 /*-----------------------------------------------.
 | Release the memory associated to this symbol.  |
@@ -1199,44 +1233,34 @@ yydestruct (yymsg, yytype, yyvaluep)
     yymsg = "Deleting";
   YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);
 
-  switch (yytype)
-    {
-
-      default:
-	break;
-    }
+  YYUSE (yytype);
 }
 
-/* Prevent warnings from -Wmissing-prototypes.  */
-#ifdef YYPARSE_PARAM
-#if defined __STDC__ || defined __cplusplus
-int yyparse (void *YYPARSE_PARAM);
-#else
-int yyparse ();
-#endif
-#else /* ! YYPARSE_PARAM */
-#if defined __STDC__ || defined __cplusplus
-int yyparse (void);
-#else
-int yyparse ();
-#endif
-#endif /* ! YYPARSE_PARAM */
+
 
 
 /* The lookahead symbol.  */
 int yychar;
 
+
+#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
+# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
+# define YY_IGNORE_MAYBE_UNINITIALIZED_END
+#endif
+#ifndef YY_INITIAL_VALUE
+# define YY_INITIAL_VALUE(Value) /* Nothing. */
+#endif
+
 /* The semantic value of the lookahead symbol.  */
-YYSTYPE yylval;
+YYSTYPE yylval YY_INITIAL_VALUE(yyval_default);
 
 /* Number of syntax errors so far.  */
 int yynerrs;
 
 
-
-/*-------------------------.
-| yyparse or yypush_parse.  |
-`-------------------------*/
+/*----------.
+| yyparse.  |
+`----------*/
 
 #ifdef YYPARSE_PARAM
 #if (defined __STDC__ || defined __C99__FUNC__ \
@@ -1260,8 +1284,6 @@ yyparse ()
 #endif
 #endif
 {
-
-
     int yystate;
     /* Number of tokens to shift before error messages enabled.  */
     int yyerrstatus;
@@ -1270,7 +1292,7 @@ yyparse ()
        `yyss': related to states.
        `yyvs': related to semantic values.
 
-       Refer to the stacks thru separate pointers, to allow yyoverflow
+       Refer to the stacks through separate pointers, to allow yyoverflow
        to reallocate them elsewhere.  */
 
     /* The state stack.  */
@@ -1288,7 +1310,7 @@ yyparse ()
   int yyn;
   int yyresult;
   /* Lookahead token as an internal (translated) token number.  */
-  int yytoken;
+  int yytoken = 0;
   /* The variables used to return semantic value and location from the
      action routines.  */
   YYSTYPE yyval;
@@ -1306,9 +1328,8 @@ yyparse ()
      Keep to zero when no symbol should be popped.  */
   int yylen = 0;
 
-  yytoken = 0;
-  yyss = yyssa;
-  yyvs = yyvsa;
+  yyssp = yyss = yyssa;
+  yyvsp = yyvs = yyvsa;
   yystacksize = YYINITDEPTH;
 
   YYDPRINTF ((stderr, "Starting parse\n"));
@@ -1317,14 +1338,6 @@ yyparse ()
   yyerrstatus = 0;
   yynerrs = 0;
   yychar = YYEMPTY; /* Cause a token to be read.  */
-
-  /* Initialize stack pointers.
-     Waste one element of value and location stack
-     so that they stay on the same level as the state stack.
-     The wasted elements are never initialized.  */
-  yyssp = yyss;
-  yyvsp = yyvs;
-
   goto yysetstate;
 
 /*------------------------------------------------------------.
@@ -1416,7 +1429,7 @@ yybackup:
 
   /* First try to decide what to do without reference to lookahead token.  */
   yyn = yypact[yystate];
-  if (yyn == YYPACT_NINF)
+  if (yypact_value_is_default (yyn))
     goto yydefault;
 
   /* Not known => get a lookahead token if don't already have one.  */
@@ -1447,8 +1460,8 @@ yybackup:
   yyn = yytable[yyn];
   if (yyn <= 0)
     {
-      if (yyn == 0 || yyn == YYTABLE_NINF)
-	goto yyerrlab;
+      if (yytable_value_is_error (yyn))
+        goto yyerrlab;
       yyn = -yyn;
       goto yyreduce;
     }
@@ -1465,7 +1478,9 @@ yybackup:
   yychar = YYEMPTY;
 
   yystate = yyn;
+  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
   *++yyvsp = yylval;
+  YY_IGNORE_MAYBE_UNINITIALIZED_END
 
   goto yynewstate;
 
@@ -1502,73 +1517,65 @@ yyreduce:
   switch (yyn)
     {
         case 2:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 110 "dtc-parser.y"
     {
 			the_boot_info = build_boot_info((yyvsp[(3) - (4)].re), (yyvsp[(4) - (4)].node),
 							guess_boot_cpuid((yyvsp[(4) - (4)].node)));
-		;}
+		}
     break;
 
   case 3:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 118 "dtc-parser.y"
     {
 			(yyval.re) = NULL;
-		;}
+		}
     break;
 
   case 4:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 122 "dtc-parser.y"
     {
 			(yyval.re) = chain_reserve_entry((yyvsp[(1) - (2)].re), (yyvsp[(2) - (2)].re));
-		;}
+		}
     break;
 
   case 5:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 129 "dtc-parser.y"
     {
 			(yyval.re) = build_reserve_entry((yyvsp[(2) - (4)].integer), (yyvsp[(3) - (4)].integer));
-		;}
+		}
     break;
 
   case 6:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 133 "dtc-parser.y"
     {
 			add_label(&(yyvsp[(2) - (2)].re)->labels, (yyvsp[(1) - (2)].labelref));
 			(yyval.re) = (yyvsp[(2) - (2)].re);
-		;}
+		}
     break;
 
   case 7:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 141 "dtc-parser.y"
     {
 			(yyval.node) = name_node((yyvsp[(2) - (2)].node), "");
-		;}
+		}
     break;
 
   case 8:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 145 "dtc-parser.y"
     {
 			(yyval.node) = merge_nodes((yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node));
-		;}
+		}
     break;
 
   case 9:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 149 "dtc-parser.y"
     {
 			struct node *target = get_node_by_ref((yyvsp[(1) - (3)].node), (yyvsp[(2) - (3)].labelref));
@@ -1578,12 +1585,11 @@ yyreduce:
 			else
 				print_error("label or path, '%s', not found", (yyvsp[(2) - (3)].labelref));
 			(yyval.node) = (yyvsp[(1) - (3)].node);
-		;}
+		}
     break;
 
   case 10:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 159 "dtc-parser.y"
     {
 			struct node *target = get_node_by_ref((yyvsp[(1) - (4)].node), (yyvsp[(3) - (4)].labelref));
@@ -1594,112 +1600,100 @@ yyreduce:
 				delete_node(target);
 
 			(yyval.node) = (yyvsp[(1) - (4)].node);
-		;}
+		}
     break;
 
   case 11:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 173 "dtc-parser.y"
     {
 			(yyval.node) = build_node((yyvsp[(2) - (5)].proplist), (yyvsp[(3) - (5)].nodelist));
-		;}
+		}
     break;
 
   case 12:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 180 "dtc-parser.y"
     {
 			(yyval.proplist) = NULL;
-		;}
+		}
     break;
 
   case 13:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 184 "dtc-parser.y"
     {
 			(yyval.proplist) = chain_property((yyvsp[(2) - (2)].prop), (yyvsp[(1) - (2)].proplist));
-		;}
+		}
     break;
 
   case 14:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 191 "dtc-parser.y"
     {
 			(yyval.prop) = build_property((yyvsp[(1) - (4)].propnodename), (yyvsp[(3) - (4)].data));
-		;}
+		}
     break;
 
   case 15:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 195 "dtc-parser.y"
     {
 			(yyval.prop) = build_property((yyvsp[(1) - (2)].propnodename), empty_data);
-		;}
+		}
     break;
 
   case 16:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 199 "dtc-parser.y"
     {
 			(yyval.prop) = build_property_delete((yyvsp[(2) - (3)].propnodename));
-		;}
+		}
     break;
 
   case 17:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 203 "dtc-parser.y"
     {
 			add_label(&(yyvsp[(2) - (2)].prop)->labels, (yyvsp[(1) - (2)].labelref));
 			(yyval.prop) = (yyvsp[(2) - (2)].prop);
-		;}
+		}
     break;
 
   case 18:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 211 "dtc-parser.y"
     {
 			(yyval.data) = data_merge((yyvsp[(1) - (2)].data), (yyvsp[(2) - (2)].data));
-		;}
+		}
     break;
 
   case 19:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 215 "dtc-parser.y"
     {
 			(yyval.data) = data_merge((yyvsp[(1) - (3)].data), (yyvsp[(2) - (3)].array).data);
-		;}
+		}
     break;
 
   case 20:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 219 "dtc-parser.y"
     {
 			(yyval.data) = data_merge((yyvsp[(1) - (4)].data), (yyvsp[(3) - (4)].data));
-		;}
+		}
     break;
 
   case 21:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 223 "dtc-parser.y"
     {
 			(yyval.data) = data_add_marker((yyvsp[(1) - (2)].data), REF_PATH, (yyvsp[(2) - (2)].labelref));
-		;}
+		}
     break;
 
   case 22:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 227 "dtc-parser.y"
     {
 			FILE *f = srcfile_relative_open((yyvsp[(4) - (9)].data).val, NULL);
@@ -1716,12 +1710,11 @@ yyreduce:
 
 			(yyval.data) = data_merge((yyvsp[(1) - (9)].data), d);
 			fclose(f);
-		;}
+		}
     break;
 
   case 23:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 244 "dtc-parser.y"
     {
 			FILE *f = srcfile_relative_open((yyvsp[(4) - (5)].data).val, NULL);
@@ -1731,48 +1724,43 @@ yyreduce:
 
 			(yyval.data) = data_merge((yyvsp[(1) - (5)].data), d);
 			fclose(f);
-		;}
+		}
     break;
 
   case 24:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 254 "dtc-parser.y"
     {
 			(yyval.data) = data_add_marker((yyvsp[(1) - (2)].data), LABEL, (yyvsp[(2) - (2)].labelref));
-		;}
+		}
     break;
 
   case 25:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 261 "dtc-parser.y"
     {
 			(yyval.data) = empty_data;
-		;}
+		}
     break;
 
   case 26:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 265 "dtc-parser.y"
     {
 			(yyval.data) = (yyvsp[(1) - (2)].data);
-		;}
+		}
     break;
 
   case 27:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 269 "dtc-parser.y"
     {
 			(yyval.data) = data_add_marker((yyvsp[(1) - (2)].data), LABEL, (yyvsp[(2) - (2)].labelref));
-		;}
+		}
     break;
 
   case 28:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 276 "dtc-parser.y"
     {
 			(yyval.array).data = empty_data;
@@ -1787,22 +1775,20 @@ yyreduce:
 					    " are currently supported");
 				(yyval.array).bits = 32;
 			}
-		;}
+		}
     break;
 
   case 29:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 291 "dtc-parser.y"
     {
 			(yyval.array).data = empty_data;
 			(yyval.array).bits = 32;
-		;}
+		}
     break;
 
   case 30:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 296 "dtc-parser.y"
     {
 			if ((yyvsp[(1) - (2)].array).bits < 64) {
@@ -1822,12 +1808,11 @@ yyreduce:
 			}
 
 			(yyval.array).data = data_append_integer((yyvsp[(1) - (2)].array).data, (yyvsp[(2) - (2)].integer), (yyvsp[(1) - (2)].array).bits);
-		;}
+		}
     break;
 
   case 31:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 316 "dtc-parser.y"
     {
 			uint64_t val = ~0ULL >> (64 - (yyvsp[(1) - (2)].array).bits);
@@ -1841,288 +1826,263 @@ yyreduce:
 					    "arrays with 32-bit elements.");
 
 			(yyval.array).data = data_append_integer((yyvsp[(1) - (2)].array).data, val, (yyvsp[(1) - (2)].array).bits);
-		;}
+		}
     break;
 
   case 32:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 330 "dtc-parser.y"
     {
 			(yyval.array).data = data_add_marker((yyvsp[(1) - (2)].array).data, LABEL, (yyvsp[(2) - (2)].labelref));
-		;}
+		}
     break;
 
   case 33:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 337 "dtc-parser.y"
     {
 			(yyval.integer) = eval_literal((yyvsp[(1) - (1)].literal), 0, 64);
-		;}
+		}
     break;
 
   case 34:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 341 "dtc-parser.y"
     {
 			(yyval.integer) = eval_char_literal((yyvsp[(1) - (1)].literal));
-		;}
+		}
     break;
 
   case 35:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 345 "dtc-parser.y"
     {
 			(yyval.integer) = (yyvsp[(2) - (3)].integer);
-		;}
+		}
     break;
 
   case 38:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 356 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (5)].integer) ? (yyvsp[(3) - (5)].integer) : (yyvsp[(5) - (5)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (5)].integer) ? (yyvsp[(3) - (5)].integer) : (yyvsp[(5) - (5)].integer); }
     break;
 
   case 40:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 361 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) || (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) || (yyvsp[(3) - (3)].integer); }
     break;
 
   case 42:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 366 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) && (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) && (yyvsp[(3) - (3)].integer); }
     break;
 
   case 44:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 371 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) | (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) | (yyvsp[(3) - (3)].integer); }
     break;
 
   case 46:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 376 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) ^ (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) ^ (yyvsp[(3) - (3)].integer); }
     break;
 
   case 48:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 381 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) & (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) & (yyvsp[(3) - (3)].integer); }
     break;
 
   case 50:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 386 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) == (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) == (yyvsp[(3) - (3)].integer); }
     break;
 
   case 51:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 387 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) != (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) != (yyvsp[(3) - (3)].integer); }
     break;
 
   case 53:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 392 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) < (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) < (yyvsp[(3) - (3)].integer); }
     break;
 
   case 54:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 393 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) > (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) > (yyvsp[(3) - (3)].integer); }
     break;
 
   case 55:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 394 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) <= (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) <= (yyvsp[(3) - (3)].integer); }
     break;
 
   case 56:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 395 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) >= (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) >= (yyvsp[(3) - (3)].integer); }
     break;
 
   case 57:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 399 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) << (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) << (yyvsp[(3) - (3)].integer); }
     break;
 
   case 58:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 400 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) >> (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) >> (yyvsp[(3) - (3)].integer); }
     break;
 
   case 60:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 405 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) + (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) + (yyvsp[(3) - (3)].integer); }
     break;
 
   case 61:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 406 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) - (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) - (yyvsp[(3) - (3)].integer); }
     break;
 
   case 63:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 411 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) * (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) * (yyvsp[(3) - (3)].integer); }
     break;
 
   case 64:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 412 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) / (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) / (yyvsp[(3) - (3)].integer); }
     break;
 
   case 65:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 413 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) % (yyvsp[(3) - (3)].integer); ;}
+    { (yyval.integer) = (yyvsp[(1) - (3)].integer) % (yyvsp[(3) - (3)].integer); }
     break;
 
   case 68:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 419 "dtc-parser.y"
-    { (yyval.integer) = -(yyvsp[(2) - (2)].integer); ;}
+    { (yyval.integer) = -(yyvsp[(2) - (2)].integer); }
     break;
 
   case 69:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 420 "dtc-parser.y"
-    { (yyval.integer) = ~(yyvsp[(2) - (2)].integer); ;}
+    { (yyval.integer) = ~(yyvsp[(2) - (2)].integer); }
     break;
 
   case 70:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 421 "dtc-parser.y"
-    { (yyval.integer) = !(yyvsp[(2) - (2)].integer); ;}
+    { (yyval.integer) = !(yyvsp[(2) - (2)].integer); }
     break;
 
   case 71:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 426 "dtc-parser.y"
     {
 			(yyval.data) = empty_data;
-		;}
+		}
     break;
 
   case 72:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 430 "dtc-parser.y"
     {
 			(yyval.data) = data_append_byte((yyvsp[(1) - (2)].data), (yyvsp[(2) - (2)].byte));
-		;}
+		}
     break;
 
   case 73:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 434 "dtc-parser.y"
     {
 			(yyval.data) = data_add_marker((yyvsp[(1) - (2)].data), LABEL, (yyvsp[(2) - (2)].labelref));
-		;}
+		}
     break;
 
   case 74:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 441 "dtc-parser.y"
     {
 			(yyval.nodelist) = NULL;
-		;}
+		}
     break;
 
   case 75:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 445 "dtc-parser.y"
     {
 			(yyval.nodelist) = chain_node((yyvsp[(1) - (2)].node), (yyvsp[(2) - (2)].nodelist));
-		;}
+		}
     break;
 
   case 76:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 449 "dtc-parser.y"
     {
 			print_error("syntax error: properties must precede subnodes");
 			YYERROR;
-		;}
+		}
     break;
 
   case 77:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 457 "dtc-parser.y"
     {
 			(yyval.node) = name_node((yyvsp[(2) - (2)].node), (yyvsp[(1) - (2)].propnodename));
-		;}
+		}
     break;
 
   case 78:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 461 "dtc-parser.y"
     {
 			(yyval.node) = name_node(build_node_delete(), (yyvsp[(2) - (3)].propnodename));
-		;}
+		}
     break;
 
   case 79:
-
-/* Line 1455 of yacc.c  */
+/* Line 1787 of yacc.c  */
 #line 465 "dtc-parser.y"
     {
 			add_label(&(yyvsp[(2) - (2)].node)->labels, (yyvsp[(1) - (2)].labelref));
 			(yyval.node) = (yyvsp[(2) - (2)].node);
-		;}
+		}
     break;
 
 
-
-/* Line 1455 of yacc.c  */
-#line 2124 "dtc-parser.tab.c"
+/* Line 1787 of yacc.c  */
+#line 2073 "dtc-parser.tab.c"
       default: break;
     }
+  /* User semantic actions sometimes alter yychar, and that requires
+     that yytoken be updated with the new translation.  We take the
+     approach of translating immediately before every use of yytoken.
+     One alternative is translating here after every semantic action,
+     but that translation would be missed if the semantic action invokes
+     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
+     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
+     incorrect destructor might then be invoked immediately.  In the
+     case of YYERROR or YYBACKUP, subsequent parser actions might lead
+     to an incorrect destructor call or verbose syntax error message
+     before the lookahead is translated.  */
   YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);
 
   YYPOPSTACK (yylen);
@@ -2150,6 +2110,10 @@ yyreduce:
 | yyerrlab -- here on detecting error |
 `------------------------------------*/
 yyerrlab:
+  /* Make sure we have latest lookahead translation.  See comments at
+     user semantic actions for why this is necessary.  */
+  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);
+
   /* If not already recovering from an error, report this error.  */
   if (!yyerrstatus)
     {
@@ -2157,37 +2121,36 @@ yyerrlab:
 #if ! YYERROR_VERBOSE
       yyerror (YY_("syntax error"));
 #else
+# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
+                                        yyssp, yytoken)
       {
-	YYSIZE_T yysize = yysyntax_error (0, yystate, yychar);
-	if (yymsg_alloc < yysize && yymsg_alloc < YYSTACK_ALLOC_MAXIMUM)
-	  {
-	    YYSIZE_T yyalloc = 2 * yysize;
-	    if (! (yysize <= yyalloc && yyalloc <= YYSTACK_ALLOC_MAXIMUM))
-	      yyalloc = YYSTACK_ALLOC_MAXIMUM;
-	    if (yymsg != yymsgbuf)
-	      YYSTACK_FREE (yymsg);
-	    yymsg = (char *) YYSTACK_ALLOC (yyalloc);
-	    if (yymsg)
-	      yymsg_alloc = yyalloc;
-	    else
-	      {
-		yymsg = yymsgbuf;
-		yymsg_alloc = sizeof yymsgbuf;
-	      }
-	  }
-
-	if (0 < yysize && yysize <= yymsg_alloc)
-	  {
-	    (void) yysyntax_error (yymsg, yystate, yychar);
-	    yyerror (yymsg);
-	  }
-	else
-	  {
-	    yyerror (YY_("syntax error"));
-	    if (yysize != 0)
-	      goto yyexhaustedlab;
-	  }
+        char const *yymsgp = YY_("syntax error");
+        int yysyntax_error_status;
+        yysyntax_error_status = YYSYNTAX_ERROR;
+        if (yysyntax_error_status == 0)
+          yymsgp = yymsg;
+        else if (yysyntax_error_status == 1)
+          {
+            if (yymsg != yymsgbuf)
+              YYSTACK_FREE (yymsg);
+            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
+            if (!yymsg)
+              {
+                yymsg = yymsgbuf;
+                yymsg_alloc = sizeof yymsgbuf;
+                yysyntax_error_status = 2;
+              }
+            else
+              {
+                yysyntax_error_status = YYSYNTAX_ERROR;
+                yymsgp = yymsg;
+              }
+          }
+        yyerror (yymsgp);
+        if (yysyntax_error_status == 2)
+          goto yyexhaustedlab;
       }
+# undef YYSYNTAX_ERROR
 #endif
     }
 
@@ -2246,7 +2209,7 @@ yyerrlab1:
   for (;;)
     {
       yyn = yypact[yystate];
-      if (yyn != YYPACT_NINF)
+      if (!yypact_value_is_default (yyn))
 	{
 	  yyn += YYTERROR;
 	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
@@ -2269,7 +2232,9 @@ yyerrlab1:
       YY_STACK_PRINT (yyss, yyssp);
     }
 
+  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
   *++yyvsp = yylval;
+  YY_IGNORE_MAYBE_UNINITIALIZED_END
 
 
   /* Shift the error token.  */
@@ -2293,7 +2258,7 @@ yyabortlab:
   yyresult = 1;
   goto yyreturn;
 
-#if !defined(yyoverflow) || YYERROR_VERBOSE
+#if !defined yyoverflow || YYERROR_VERBOSE
 /*-------------------------------------------------.
 | yyexhaustedlab -- memory exhaustion comes here.  |
 `-------------------------------------------------*/
@@ -2305,8 +2270,13 @@ yyexhaustedlab:
 
 yyreturn:
   if (yychar != YYEMPTY)
-     yydestruct ("Cleanup: discarding lookahead",
-		 yytoken, &yylval);
+    {
+      /* Make sure we have latest lookahead translation.  See comments at
+         user semantic actions for why this is necessary.  */
+      yytoken = YYTRANSLATE (yychar);
+      yydestruct ("Cleanup: discarding lookahead",
+                  yytoken, &yylval);
+    }
   /* Do not reclaim the symbols of the rule which action triggered
      this YYABORT or YYACCEPT.  */
   YYPOPSTACK (yylen);
@@ -2330,8 +2300,7 @@ yyreturn:
 }
 
 
-
-/* Line 1675 of yacc.c  */
+/* Line 2050 of yacc.c  */
 #line 471 "dtc-parser.y"
 
 
@@ -2395,4 +2364,3 @@ static unsigned char eval_char_literal(const char *s)
 
 	return c;
 }
-
diff --git a/scripts/dtc/dtc-parser.tab.h_shipped b/scripts/dtc/dtc-parser.tab.h_shipped
index 8ec89b1a4c2d..b2e7a86cd85e 100644
--- a/scripts/dtc/dtc-parser.tab.h_shipped
+++ b/scripts/dtc/dtc-parser.tab.h_shipped
@@ -1,21 +1,19 @@
+/* A Bison parser, made by GNU Bison 2.7.12-4996.  */
 
-/* A Bison parser, made by GNU Bison 2.4.1.  */
-
-/* Skeleton interface for Bison's Yacc-like parsers in C
-
-      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
-   Free Software Foundation, Inc.
-
+/* Bison interface for Yacc-like parsers in C
+   
+      Copyright (C) 1984, 1989-1990, 2000-2013 Free Software Foundation, Inc.
+   
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
-
+   
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
-
+   
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.  */
 
@@ -28,10 +26,19 @@
    special exception, which will cause the skeleton and the resulting
    Bison output files to be licensed under the GNU General Public
    License without this special exception.
-
+   
    This special exception was added by the Free Software Foundation in
    version 2.2 of Bison.  */
 
+#ifndef YY_YY_DTC_PARSER_TAB_H_INCLUDED
+# define YY_YY_DTC_PARSER_TAB_H_INCLUDED
+/* Enabling traces.  */
+#ifndef YYDEBUG
+# define YYDEBUG 0
+#endif
+#if YYDEBUG
+extern int yydebug;
+#endif
 
 /* Tokens.  */
 #ifndef YYTOKENTYPE
@@ -65,12 +72,10 @@
 #endif
 
 
-
 #if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
 typedef union YYSTYPE
 {
-
-/* Line 1676 of yacc.c  */
+/* Line 2053 of yacc.c  */
 #line 40 "dtc-parser.y"
 
 	char *propnodename;
@@ -93,9 +98,8 @@ typedef union YYSTYPE
 	uint64_t integer;
 
 
-
-/* Line 1676 of yacc.c  */
-#line 99 "dtc-parser.tab.h"
+/* Line 2053 of yacc.c  */
+#line 103 "dtc-parser.tab.h"
 } YYSTYPE;
 # define YYSTYPE_IS_TRIVIAL 1
 # define yystype YYSTYPE /* obsolescent; will be withdrawn */
@@ -104,4 +108,18 @@ typedef union YYSTYPE
 
 extern YYSTYPE yylval;
 
+#ifdef YYPARSE_PARAM
+#if defined __STDC__ || defined __cplusplus
+int yyparse (void *YYPARSE_PARAM);
+#else
+int yyparse ();
+#endif
+#else /* ! YYPARSE_PARAM */
+#if defined __STDC__ || defined __cplusplus
+int yyparse (void);
+#else
+int yyparse ();
+#endif
+#endif /* ! YYPARSE_PARAM */
 
+#endif /* !YY_YY_DTC_PARSER_TAB_H_INCLUDED  */
diff --git a/scripts/dtc/dtc.c b/scripts/dtc/dtc.c
index a375683c1534..b9e4c8c18938 100644
--- a/scripts/dtc/dtc.c
+++ b/scripts/dtc/dtc.c
@@ -21,8 +21,6 @@
 #include "dtc.h"
 #include "srcpos.h"
 
-#include "version_gen.h"
-
 /*
  * Command line options
  */
@@ -49,55 +47,102 @@ static void fill_fullpaths(struct node *tree, const char *prefix)
 		fill_fullpaths(child, tree->fullpath);
 }
 
-static void  __attribute__ ((noreturn)) usage(void)
-{
-	fprintf(stderr, "Usage:\n");
-	fprintf(stderr, "\tdtc [options] <input file>\n");
-	fprintf(stderr, "\nOptions:\n");
-	fprintf(stderr, "\t-h\n");
-	fprintf(stderr, "\t\tThis help text\n");
-	fprintf(stderr, "\t-q\n");
-	fprintf(stderr, "\t\tQuiet: -q suppress warnings, -qq errors, -qqq all\n");
-	fprintf(stderr, "\t-I <input format>\n");
-	fprintf(stderr, "\t\tInput formats are:\n");
-	fprintf(stderr, "\t\t\tdts - device tree source text\n");
-	fprintf(stderr, "\t\t\tdtb - device tree blob\n");
-	fprintf(stderr, "\t\t\tfs - /proc/device-tree style directory\n");
-	fprintf(stderr, "\t-o <output file>\n");
-	fprintf(stderr, "\t-O <output format>\n");
-	fprintf(stderr, "\t\tOutput formats are:\n");
-	fprintf(stderr, "\t\t\tdts - device tree source text\n");
-	fprintf(stderr, "\t\t\tdtb - device tree blob\n");
-	fprintf(stderr, "\t\t\tasm - assembler source\n");
-	fprintf(stderr, "\t-V <output version>\n");
-	fprintf(stderr, "\t\tBlob version to produce, defaults to %d (relevant for dtb\n\t\tand asm output only)\n", DEFAULT_FDT_VERSION);
-	fprintf(stderr, "\t-d <output dependency file>\n");
-	fprintf(stderr, "\t-R <number>\n");
-	fprintf(stderr, "\t\tMake space for <number> reserve map entries (relevant for \n\t\tdtb and asm output only)\n");
-	fprintf(stderr, "\t-S <bytes>\n");
-	fprintf(stderr, "\t\tMake the blob at least <bytes> long (extra space)\n");
-	fprintf(stderr, "\t-p <bytes>\n");
-	fprintf(stderr, "\t\tAdd padding to the blob of <bytes> long (extra space)\n");
-	fprintf(stderr, "\t-b <number>\n");
-	fprintf(stderr, "\t\tSet the physical boot cpu\n");
-	fprintf(stderr, "\t-f\n");
-	fprintf(stderr, "\t\tForce - try to produce output even if the input tree has errors\n");
-	fprintf(stderr, "\t-i\n");
-	fprintf(stderr, "\t\tAdd a path to search for include files\n");
-	fprintf(stderr, "\t-s\n");
-	fprintf(stderr, "\t\tSort nodes and properties before outputting (only useful for\n\t\tcomparing trees)\n");
-	fprintf(stderr, "\t-v\n");
-	fprintf(stderr, "\t\tPrint DTC version and exit\n");
-	fprintf(stderr, "\t-H <phandle format>\n");
-	fprintf(stderr, "\t\tphandle formats are:\n");
-	fprintf(stderr, "\t\t\tlegacy - \"linux,phandle\" properties only\n");
-	fprintf(stderr, "\t\t\tepapr - \"phandle\" properties only\n");
-	fprintf(stderr, "\t\t\tboth - Both \"linux,phandle\" and \"phandle\" properties\n");
-	fprintf(stderr, "\t-W [no-]<checkname>\n");
-	fprintf(stderr, "\t-E [no-]<checkname>\n");
-	fprintf(stderr, "\t\t\tenable or disable warnings and errors\n");
-	exit(3);
-}
+/* Usage related data. */
+
+/**
+ * Show usage and exit
+ *
+ * If you name all your usage variables with usage_xxx, then you can call this
+ * help macro rather than expanding all arguments yourself.
+ *
+ * @param errmsg	If non-NULL, an error message to display
+ */
+#define usage(errmsg) \
+	util_usage(errmsg, usage_synopsis, usage_short_opts, \
+		   usage_long_opts, usage_opts_help)
+
+/**
+ * Call getopt_long() with standard options
+ *
+ * Since all util code runs getopt in the same way, provide a helper.
+ */
+#define util_getopt_long() getopt_long(argc, argv, usage_short_opts, \
+				       usage_long_opts, NULL)
+
+/* Helper for usage_short_opts string constant */
+#define USAGE_COMMON_SHORT_OPTS "hV"
+
+/* Helper for usage_long_opts option array */
+#define USAGE_COMMON_LONG_OPTS \
+	{"help",      no_argument, NULL, 'h'}, \
+	{"version",   no_argument, NULL, 'V'}, \
+	{NULL,        no_argument, NULL, 0x0}
+
+/* Helper for usage_opts_help array */
+#define USAGE_COMMON_OPTS_HELP \
+	"Print this help and exit", \
+	"Print version and exit", \
+	NULL
+
+/* Helper for getopt case statements */
+#define case_USAGE_COMMON_FLAGS \
+	case 'h': usage(NULL); \
+	case 'V': util_version(); \
+	case '?': usage("unknown option");
+
+static const char usage_synopsis[] = "dtc [options] <input file>";
+static const char usage_short_opts[] = "qI:O:o:V:d:R:S:p:fb:i:H:sW:E:hv";
+static struct option const usage_long_opts[] = {
+	{"quiet",            no_argument, NULL, 'q'},
+	{"in-format",         a_argument, NULL, 'I'},
+	{"out",               a_argument, NULL, 'o'},
+	{"out-format",        a_argument, NULL, 'O'},
+	{"out-version",       a_argument, NULL, 'V'},
+	{"out-dependency",    a_argument, NULL, 'd'},
+	{"reserve",           a_argument, NULL, 'R'},
+	{"space",             a_argument, NULL, 'S'},
+	{"pad",               a_argument, NULL, 'p'},
+	{"boot-cpu",          a_argument, NULL, 'b'},
+	{"force",            no_argument, NULL, 'f'},
+	{"include",           a_argument, NULL, 'i'},
+	{"sort",             no_argument, NULL, 's'},
+	{"phandle",           a_argument, NULL, 'H'},
+	{"warning",           a_argument, NULL, 'W'},
+	{"error",             a_argument, NULL, 'E'},
+	{"help",             no_argument, NULL, 'h'},
+	{"version",          no_argument, NULL, 'v'},
+	{NULL,               no_argument, NULL, 0x0},
+};
+static const char * const usage_opts_help[] = {
+	"\n\tQuiet: -q suppress warnings, -qq errors, -qqq all",
+	"\n\tInput formats are:\n"
+	 "\t\tdts - device tree source text\n"
+	 "\t\tdtb - device tree blob\n"
+	 "\t\tfs  - /proc/device-tree style directory",
+	"\n\tOutput file",
+	"\n\tOutput formats are:\n"
+	 "\t\tdts - device tree source text\n"
+	 "\t\tdtb - device tree blob\n"
+	 "\t\tasm - assembler source",
+	"\n\tBlob version to produce, defaults to %d (for dtb and asm output)", //, DEFAULT_FDT_VERSION);
+	"\n\tOutput dependency file",
+	"\n\ttMake space for <number> reserve map entries (for dtb and asm output)",
+	"\n\tMake the blob at least <bytes> long (extra space)",
+	"\n\tAdd padding to the blob of <bytes> long (extra space)",
+	"\n\tSet the physical boot cpu",
+	"\n\tTry to produce output even if the input tree has errors",
+	"\n\tAdd a path to search for include files",
+	"\n\tSort nodes and properties before outputting (useful for comparing trees)",
+	"\n\tValid phandle formats are:\n"
+	 "\t\tlegacy - \"linux,phandle\" properties only\n"
+	 "\t\tepapr  - \"phandle\" properties only\n"
+	 "\t\tboth   - Both \"linux,phandle\" and \"phandle\" properties",
+	"\n\tEnable/disable warnings (prefix with \"no-\")",
+	"\n\tEnable/disable errors (prefix with \"no-\")",
+	"\n\tPrint this help and exit",
+	"\n\tPrint version and exit",
+	NULL,
+};
 
 int main(int argc, char *argv[])
 {
@@ -118,8 +163,7 @@ int main(int argc, char *argv[])
 	minsize    = 0;
 	padsize    = 0;
 
-	while ((opt = getopt(argc, argv, "hI:O:o:V:d:R:S:p:fqb:i:vH:sW:E:"))
-			!= EOF) {
+	while ((opt = util_getopt_long()) != EOF) {
 		switch (opt) {
 		case 'I':
 			inform = optarg;
@@ -158,8 +202,7 @@ int main(int argc, char *argv[])
 			srcfile_add_search_path(optarg);
 			break;
 		case 'v':
-			printf("Version: %s\n", DTC_VERSION);
-			exit(0);
+			util_version();
 		case 'H':
 			if (streq(optarg, "legacy"))
 				phandle_format = PHANDLE_LEGACY;
@@ -185,13 +228,14 @@ int main(int argc, char *argv[])
 			break;
 
 		case 'h':
+			usage(NULL);
 		default:
-			usage();
+			usage("unknown option");
 		}
 	}
 
 	if (argc > (optind+1))
-		usage();
+		usage("missing files");
 	else if (argc < (optind+1))
 		arg = "-";
 	else
@@ -201,9 +245,6 @@ int main(int argc, char *argv[])
 	if (minsize && padsize)
 		die("Can't set both -p and -S\n");
 
-	if (minsize)
-		fprintf(stderr, "DTC: Use of \"-S\" is deprecated; it will be removed soon, use \"-p\" instead\n");
-
 	if (depname) {
 		depfile = fopen(depname, "w");
 		if (!depfile)
diff --git a/scripts/dtc/dtc.h b/scripts/dtc/dtc.h
index 3e42a071070e..264a20cf66a8 100644
--- a/scripts/dtc/dtc.h
+++ b/scripts/dtc/dtc.h
@@ -66,7 +66,6 @@ typedef uint32_t cell_t;
 #define strneq(a, b, n)	(strncmp((a), (b), (n)) == 0)
 
 #define ALIGN(x, a)	(((x) + (a) - 1) & ~((a) - 1))
-#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
 
 /* Data blobs */
 enum markertype {
diff --git a/scripts/dtc/fstree.c b/scripts/dtc/fstree.c
index f3774530170a..e464727c8808 100644
--- a/scripts/dtc/fstree.c
+++ b/scripts/dtc/fstree.c
@@ -88,4 +88,3 @@ struct boot_info *dt_from_fs(const char *dirname)
 
 	return build_boot_info(NULL, tree, guess_boot_cpuid(tree));
 }
-
diff --git a/scripts/dtc/srcpos.c b/scripts/dtc/srcpos.c
index 246ab4bc0d9d..c20bc5315bc1 100644
--- a/scripts/dtc/srcpos.c
+++ b/scripts/dtc/srcpos.c
@@ -297,9 +297,9 @@ srcpos_verror(struct srcpos *pos, char const *fmt, va_list va)
 
        srcstr = srcpos_string(pos);
 
-       fprintf(stdout, "Error: %s ", srcstr);
-       vfprintf(stdout, fmt, va);
-       fprintf(stdout, "\n");
+       fprintf(stderr, "Error: %s ", srcstr);
+       vfprintf(stderr, fmt, va);
+       fprintf(stderr, "\n");
 }
 
 void
diff --git a/scripts/dtc/treesource.c b/scripts/dtc/treesource.c
index 33eeba55fb4d..5740e6992d37 100644
--- a/scripts/dtc/treesource.c
+++ b/scripts/dtc/treesource.c
@@ -281,4 +281,3 @@ void dt_to_source(FILE *f, struct boot_info *bi)
 
 	write_tree_source_node(f, bi->dt, 0);
 }
-
diff --git a/scripts/dtc/util.c b/scripts/dtc/util.c
index 2422c34e11df..3055c16e980d 100644
--- a/scripts/dtc/util.c
+++ b/scripts/dtc/util.c
@@ -34,6 +34,7 @@
 
 #include "libfdt.h"
 #include "util.h"
+#include "version_gen.h"
 
 char *xstrdup(const char *s)
 {
@@ -72,7 +73,7 @@ char *join_path(const char *path, const char *name)
 int util_is_printable_string(const void *data, int len)
 {
 	const char *s = data;
-	const char *ss;
+	const char *ss, *se;
 
 	/* zero length is not */
 	if (len == 0)
@@ -82,13 +83,19 @@ int util_is_printable_string(const void *data, int len)
 	if (s[len - 1] != '\0')
 		return 0;
 
-	ss = s;
-	while (*s && isprint(*s))
-		s++;
+	se = s + len;
 
-	/* not zero, or not done yet */
-	if (*s != '\0' || (s + 1 - ss) < len)
-		return 0;
+	while (s < se) {
+		ss = s;
+		while (s < se && *s && isprint(*s))
+			s++;
+
+		/* not zero, or not done yet */
+		if (*s != '\0' || s == ss)
+			return 0;
+
+		s++;
+	}
 
 	return 1;
 }
@@ -191,7 +198,7 @@ char get_escape_char(const char *s, int *i)
 	return val;
 }
 
-int utilfdt_read_err(const char *filename, char **buffp)
+int utilfdt_read_err_len(const char *filename, char **buffp, off_t *len)
 {
 	int fd = 0;	/* assume stdin */
 	char *buf = NULL;
@@ -206,12 +213,12 @@ int utilfdt_read_err(const char *filename, char **buffp)
 	}
 
 	/* Loop until we have read everything */
-	buf = malloc(bufsize);
+	buf = xmalloc(bufsize);
 	do {
 		/* Expand the buffer to hold the next chunk */
 		if (offset == bufsize) {
 			bufsize *= 2;
-			buf = realloc(buf, bufsize);
+			buf = xrealloc(buf, bufsize);
 			if (!buf) {
 				ret = ENOMEM;
 				break;
@@ -232,13 +239,20 @@ int utilfdt_read_err(const char *filename, char **buffp)
 		free(buf);
 	else
 		*buffp = buf;
+	*len = bufsize;
 	return ret;
 }
 
-char *utilfdt_read(const char *filename)
+int utilfdt_read_err(const char *filename, char **buffp)
+{
+	off_t len;
+	return utilfdt_read_err_len(filename, buffp, &len);
+}
+
+char *utilfdt_read_len(const char *filename, off_t *len)
 {
 	char *buff;
-	int ret = utilfdt_read_err(filename, &buff);
+	int ret = utilfdt_read_err_len(filename, &buff, len);
 
 	if (ret) {
 		fprintf(stderr, "Couldn't open blob from '%s': %s\n", filename,
@@ -249,6 +263,12 @@ char *utilfdt_read(const char *filename)
 	return buff;
 }
 
+char *utilfdt_read(const char *filename)
+{
+	off_t len;
+	return utilfdt_read_len(filename, &len);
+}
+
 int utilfdt_write_err(const char *filename, const void *blob)
 {
 	int fd = 1;	/* assume stdout */
@@ -329,3 +349,100 @@ int utilfdt_decode_type(const char *fmt, int *type, int *size)
 		return -1;
 	return 0;
 }
+
+void utilfdt_print_data(const char *data, int len)
+{
+	int i;
+	const char *p = data;
+	const char *s;
+
+	/* no data, don't print */
+	if (len == 0)
+		return;
+
+	if (util_is_printable_string(data, len)) {
+		printf(" = ");
+
+		s = data;
+		do {
+			printf("\"%s\"", s);
+			s += strlen(s) + 1;
+			if (s < data + len)
+				printf(", ");
+		} while (s < data + len);
+
+	} else if ((len % 4) == 0) {
+		const uint32_t *cell = (const uint32_t *)data;
+
+		printf(" = <");
+		for (i = 0; i < len; i += 4)
+			printf("0x%08x%s", fdt32_to_cpu(cell[i]),
+			       i < (len - 4) ? " " : "");
+		printf(">");
+	} else {
+		printf(" = [");
+		for (i = 0; i < len; i++)
+			printf("%02x%s", *p++, i < len - 1 ? " " : "");
+		printf("]");
+	}
+}
+
+void util_version(void)
+{
+	printf("Version: %s\n", DTC_VERSION);
+	exit(0);
+}
+
+void util_usage(const char *errmsg, const char *synopsis,
+		const char *short_opts, struct option const long_opts[],
+		const char * const opts_help[])
+{
+	FILE *fp = errmsg ? stderr : stdout;
+	const char a_arg[] = "<arg>";
+	size_t a_arg_len = strlen(a_arg) + 1;
+	size_t i;
+	int optlen;
+
+	fprintf(fp,
+		"Usage: %s\n"
+		"\n"
+		"Options: -[%s]\n", synopsis, short_opts);
+
+	/* prescan the --long opt length to auto-align */
+	optlen = 0;
+	for (i = 0; long_opts[i].name; ++i) {
+		/* +1 is for space between --opt and help text */
+		int l = strlen(long_opts[i].name) + 1;
+		if (long_opts[i].has_arg == a_argument)
+			l += a_arg_len;
+		if (optlen < l)
+			optlen = l;
+	}
+
+	for (i = 0; long_opts[i].name; ++i) {
+		/* helps when adding new applets or options */
+		assert(opts_help[i] != NULL);
+
+		/* first output the short flag if it has one */
+		if (long_opts[i].val > '~')
+			fprintf(fp, "      ");
+		else
+			fprintf(fp, "  -%c, ", long_opts[i].val);
+
+		/* then the long flag */
+		if (long_opts[i].has_arg == no_argument)
+			fprintf(fp, "--%-*s", optlen, long_opts[i].name);
+		else
+			fprintf(fp, "--%s %s%*s", long_opts[i].name, a_arg,
+				(int)(optlen - strlen(long_opts[i].name) - a_arg_len), "");
+
+		/* finally the help text */
+		fprintf(fp, "%s\n", opts_help[i]);
+	}
+
+	if (errmsg) {
+		fprintf(fp, "\nError: %s\n", errmsg);
+		exit(EXIT_FAILURE);
+	} else
+		exit(EXIT_SUCCESS);
+}
diff --git a/scripts/dtc/util.h b/scripts/dtc/util.h
index c8eb45d9f04b..aa9be4dd19c3 100644
--- a/scripts/dtc/util.h
+++ b/scripts/dtc/util.h
@@ -2,6 +2,7 @@
 #define _UTIL_H
 
 #include <stdarg.h>
+#include <getopt.h>
 
 /*
  * Copyright 2011 The Chromium Authors, All Rights Reserved.
@@ -23,7 +24,9 @@
  *                                                                   USA
  */
 
-static inline void __attribute__((noreturn)) die(char * str, ...)
+#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
+
+static inline void __attribute__((noreturn)) die(const char *str, ...)
 {
 	va_list ap;
 
@@ -57,12 +60,14 @@ extern char *xstrdup(const char *s);
 extern char *join_path(const char *path, const char *name);
 
 /**
- * Check a string of a given length to see if it is all printable and
- * has a valid terminator.
+ * Check a property of a given length to see if it is all printable and
+ * has a valid terminator. The property can contain either a single string,
+ * or multiple strings each of non-zero length.
  *
  * @param data	The string to check
  * @param len	The string length including terminator
- * @return 1 if a valid printable string, 0 if not */
+ * @return 1 if a valid printable string, 0 if not
+ */
 int util_is_printable_string(const void *data, int len);
 
 /*
@@ -83,6 +88,13 @@ char get_escape_char(const char *s, int *i);
 char *utilfdt_read(const char *filename);
 
 /**
+ * Like utilfdt_read(), but also passes back the size of the file read.
+ *
+ * @param len		If non-NULL, the amount of data we managed to read
+ */
+char *utilfdt_read_len(const char *filename, off_t *len);
+
+/**
  * Read a device tree file into a buffer. Does not report errors, but only
  * returns them. The value returned can be passed to strerror() to obtain
  * an error message for the user.
@@ -93,6 +105,12 @@ char *utilfdt_read(const char *filename);
  */
 int utilfdt_read_err(const char *filename, char **buffp);
 
+/**
+ * Like utilfdt_read_err(), but also passes back the size of the file read.
+ *
+ * @param len		If non-NULL, the amount of data we managed to read
+ */
+int utilfdt_read_err_len(const char *filename, char **buffp, off_t *len);
 
 /**
  * Write a device tree buffer to a file. This will report any errors on
@@ -148,6 +166,44 @@ int utilfdt_decode_type(const char *fmt, int *type, int *size);
 #define USAGE_TYPE_MSG \
 	"<type>\ts=string, i=int, u=unsigned, x=hex\n" \
 	"\tOptional modifier prefix:\n" \
-	"\t\thh or b=byte, h=2 byte, l=4 byte (default)\n";
+	"\t\thh or b=byte, h=2 byte, l=4 byte (default)";
+
+/**
+ * Print property data in a readable format to stdout
+ *
+ * Properties that look like strings will be printed as strings. Otherwise
+ * the data will be displayed either as cells (if len is a multiple of 4
+ * bytes) or bytes.
+ *
+ * If len is 0 then this function does nothing.
+ *
+ * @param data	Pointers to property data
+ * @param len	Length of property data
+ */
+void utilfdt_print_data(const char *data, int len);
+
+/**
+ * Show source version and exit
+ */
+void util_version(void) __attribute__((noreturn));
+
+/**
+ * Show usage and exit
+ *
+ * This helps standardize the output of various utils.  You most likely want
+ * to use the usage() helper below rather than call this.
+ *
+ * @param errmsg	If non-NULL, an error message to display
+ * @param synopsis	The initial example usage text (and possible examples)
+ * @param short_opts	The string of short options
+ * @param long_opts	The structure of long options
+ * @param opts_help	An array of help strings (should align with long_opts)
+ */
+void util_usage(const char *errmsg, const char *synopsis,
+		const char *short_opts, struct option const long_opts[],
+		const char * const opts_help[]) __attribute__((noreturn));
+
+/* Helper for aligning long_opts array */
+#define a_argument required_argument
 
 #endif /* _UTIL_H */
diff --git a/scripts/dtc/version_gen.h b/scripts/dtc/version_gen.h
index 6158b867df99..54d4e904433a 100644
--- a/scripts/dtc/version_gen.h
+++ b/scripts/dtc/version_gen.h
@@ -1 +1 @@
-#define DTC_VERSION "DTC 1.2.0-g37c0b6a0"
+#define DTC_VERSION "DTC 1.4.0-dirty"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
