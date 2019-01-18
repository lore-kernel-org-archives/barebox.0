Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkIEI-0006gO-4C
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 00:41:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id q1so5669827pfi.5
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 16:41:50 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 16:41:42 -0800
Message-Id: <20190118004142.21352-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] lib: strtox: Use plumbing from kstrtox.c
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Sync up implemenations of simple_str*() functions with their kernel
counterparts in order to convert the code to use plumbing from
kstrtox.c

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/strtox.c | 102 ++++++++++++++++++++++++---------------------------
 1 file changed, 48 insertions(+), 54 deletions(-)

diff --git a/lib/strtox.c b/lib/strtox.c
index 4b601a1b3..a5b770c8c 100644
--- a/lib/strtox.c
+++ b/lib/strtox.c
@@ -1,38 +1,56 @@
 #include <common.h>
 #include <linux/ctype.h>
 
-unsigned long simple_strtoul(const char *cp, char **endp, unsigned int base)
+#include "kstrtox.h"
+
+/**
+ * simple_strtoull - convert a string to an unsigned long long
+ * @cp: The start of the string
+ * @endp: A pointer to the end of the parsed string will be placed here
+ * @base: The number base to use
+ *
+ * This function is obsolete. Please use kstrtoull instead.
+ */
+unsigned long long simple_strtoull(const char *cp, char **endp,
+				   unsigned int base)
 {
-	unsigned long result = 0, value;
-
-	if (*cp == '0') {
-		cp++;
-
-		if ((*cp == 'x') && isxdigit(cp[1])) {
-			base = 16;
-			cp++;
-		}
-
-		if (!base)
-			base = 8;
-	}
+	unsigned long long result;
+	unsigned int rv;
 
-	if (!base)
-		base = 10;
-
-	while (isxdigit(*cp) && (value = isdigit(*cp) ?
-	       *cp - '0' : toupper(*cp) - 'A' + 10) < base) {
-		result = result * base + value;
-		cp++;
-	}
+	cp = _parse_integer_fixup_radix(cp, &base);
+	rv = _parse_integer(cp, base, &result);
+	/* FIXME */
+	cp += (rv & ~KSTRTOX_OVERFLOW);
 
 	if (endp)
 		*endp = (char *)cp;
 
 	return result;
 }
+EXPORT_SYMBOL(simple_strtoull);
+
+/**
+ * simple_strtoul - convert a string to an unsigned long
+ * @cp: The start of the string
+ * @endp: A pointer to the end of the parsed string will be placed here
+ * @base: The number base to use
+ *
+ * This function is obsolete. Please use kstrtoul instead.
+ */
+unsigned long simple_strtoul(const char *cp, char **endp, unsigned int base)
+{
+	return simple_strtoull(cp, endp, base);
+}
 EXPORT_SYMBOL(simple_strtoul);
 
+/**
+ * simple_strtol - convert a string to a signed long
+ * @cp: The start of the string
+ * @endp: A pointer to the end of the parsed string will be placed here
+ * @base: The number base to use
+ *
+ * This function is obsolete. Please use kstrtol instead.
+ */
 long simple_strtol(const char *cp, char **endp, unsigned int base)
 {
 	if (*cp == '-')
@@ -42,38 +60,14 @@ long simple_strtol(const char *cp, char **endp, unsigned int base)
 }
 EXPORT_SYMBOL(simple_strtol);
 
-unsigned long long simple_strtoull(const char *cp, char **endp, unsigned int base)
-{
-	unsigned long long result = 0, value;
-
-	if (*cp == '0') {
-		cp++;
-
-		if ((*cp == 'x') && isxdigit(cp[1])) {
-			base = 16;
-			cp++;
-		}
-
-		if (!base)
-			base = 8;
-	}
-
-	if (!base)
-		base = 10;
-
-	while (isxdigit(*cp) && (value = isdigit(*cp) ?
-	       *cp - '0' : toupper(*cp) - 'A' + 10) < base) {
-		result = result * base + value;
-		cp++;
-	}
-
-	if (endp)
-		*endp = (char *)cp;
-
-	return result;
-}
-EXPORT_SYMBOL(simple_strtoull);
-
+/**
+ * simple_strtoll - convert a string to a signed long long
+ * @cp: The start of the string
+ * @endp: A pointer to the end of the parsed string will be placed here
+ * @base: The number base to use
+ *
+ * This function is obsolete. Please use kstrtoll instead.
+ */
 long long simple_strtoll(const char *cp, char **endp, unsigned int base)
 {
 	if (*cp == '-')
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
