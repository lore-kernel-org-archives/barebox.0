Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHogB-0000Ys-82
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:38:00 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 15:37:44 +0200
Message-Id: <20200914133748.5988-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] lib: string: retire deprecated strtok() in favor of
 reentrant strsep()
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With the recent changes to ARCH=sandbox, there are no remaining
in-tree users for strtok() anymore. Out-of-tree users are better
served by using the reentrant strsep(), which has existed in-tree
for as long.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Should be applied after <20200914100553.24808-1-a.fatoum@pengutronix.de>
---
 include/linux/string.h |  2 --
 lib/string.c           | 35 +++--------------------------------
 2 files changed, 3 insertions(+), 34 deletions(-)

diff --git a/include/linux/string.h b/include/linux/string.h
index 763ef500e574..2b699957e824 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -8,9 +8,7 @@
 extern "C" {
 #endif
 
-extern char * ___strtok;
 extern char * strpbrk(const char *,const char *);
-extern char * strtok(char *,const char *);
 extern char * strsep(char **,const char *);
 extern char * strsep_unescaped(char **,const char *);
 extern __kernel_size_t strspn(const char *,const char *);
diff --git a/lib/string.c b/lib/string.c
index 50f8e2f87c9f..733b56730070 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -13,6 +13,9 @@
  * * Fri Jun 25 1999, Ingo Oeser <ioe@informatik.tu-chemnitz.de>
  * -  Added strsep() which will replace strtok() soon (because strsep() is
  *    reentrant and should be faster). Use only strsep() in new code, please.
+ * * Mon Sep 14 2020, Ahmad Fatoum <a.fatoum@pengutronix.de>
+ * -  Kissed strtok() goodbye
+ *
  */
 
 #include <linux/types.h>
@@ -20,8 +23,6 @@
 #include <linux/ctype.h>
 #include <malloc.h>
 
-char * ___strtok;
-
 #ifndef __HAVE_ARCH_STRNICMP
 /**
  * strnicmp - Case insensitive, length-limited string comparison
@@ -396,36 +397,6 @@ char * strpbrk(const char * cs,const char * ct)
 #endif
 EXPORT_SYMBOL(strpbrk);
 
-#ifndef __HAVE_ARCH_STRTOK
-/**
- * strtok - Split a string into tokens
- * @s: The string to be searched
- * @ct: The characters to search for
- *
- * WARNING: strtok is deprecated, use strsep instead.
- */
-char * strtok(char * s, const char * ct)
-{
-	char *sbegin, *send;
-
-	sbegin  = s ? s : ___strtok;
-	if (!sbegin) {
-		return NULL;
-	}
-	sbegin += strspn(sbegin,ct);
-	if (*sbegin == '\0') {
-		___strtok = NULL;
-		return( NULL );
-	}
-	send = strpbrk( sbegin, ct);
-	if (send && *send != '\0')
-		*send++ = '\0';
-	___strtok = send;
-	return (sbegin);
-}
-#endif
-EXPORT_SYMBOL(strtok);
-
 #ifndef __HAVE_ARCH_STRSEP
 /**
  * strsep - Split a string into tokens
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
