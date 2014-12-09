Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyPMO-0003f6-UE
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 18:18:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 19:17:38 +0100
Message-Id: <1418149064-26448-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
References: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] printf: move simple_strto*() functions to separate file
To: barebox@lists.infradead.org

These are not needed in the PBL, so move them to a separate file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/Makefile   |  1 +
 lib/strtox.c   | 68 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/vsprintf.c | 66 --------------------------------------------------------
 3 files changed, 69 insertions(+), 66 deletions(-)
 create mode 100644 lib/strtox.c

diff --git a/lib/Makefile b/lib/Makefile
index a6c7dfb..604d934 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -4,6 +4,7 @@ obj-y			+= ctype.o
 obj-y			+= rbtree.o
 obj-y			+= display_options.o
 obj-y			+= string.o
+obj-y			+= strtox.o
 obj-y			+= vsprintf.o
 obj-y			+= div64.o
 obj-y			+= misc.o
diff --git a/lib/strtox.c b/lib/strtox.c
new file mode 100644
index 0000000..882865b
--- /dev/null
+++ b/lib/strtox.c
@@ -0,0 +1,68 @@
+#include <common.h>
+#include <linux/ctype.h>
+
+unsigned long simple_strtoul(const char *cp,char **endp,unsigned int base)
+{
+	unsigned long result = 0,value;
+
+	if (*cp == '0') {
+		cp++;
+		if ((*cp == 'x') && isxdigit(cp[1])) {
+			base = 16;
+			cp++;
+		}
+		if (!base) {
+			base = 8;
+		}
+	}
+	if (!base) {
+		base = 10;
+	}
+	while (isxdigit(*cp) && (value = isdigit(*cp) ? *cp-'0' : (islower(*cp)
+	    ? toupper(*cp) : *cp)-'A'+10) < base) {
+		result = result*base + value;
+		cp++;
+	}
+	if (endp)
+		*endp = (char *)cp;
+	return result;
+}
+EXPORT_SYMBOL(simple_strtoul);
+
+long simple_strtol(const char *cp,char **endp,unsigned int base)
+{
+	if(*cp=='-')
+		return -simple_strtoul(cp+1,endp,base);
+	return simple_strtoul(cp,endp,base);
+}
+EXPORT_SYMBOL(simple_strtol);
+
+unsigned long long simple_strtoull (const char *cp, char **endp, unsigned int base)
+{
+	unsigned long long result = 0, value;
+
+	if (*cp == '0') {
+		cp++;
+		if ((*cp == 'x') && isxdigit (cp[1])) {
+			base = 16;
+			cp++;
+		}
+		if (!base) {
+			base = 8;
+		}
+	}
+	if (!base) {
+		base = 10;
+	}
+	while (isxdigit (*cp) && (value = isdigit (*cp)
+				? *cp - '0'
+				: (islower (*cp) ? toupper (*cp) : *cp) - 'A' + 10) < base) {
+		result = result * base + value;
+		cp++;
+	}
+	if (endp)
+		*endp = (char *) cp;
+	return result;
+}
+EXPORT_SYMBOL(simple_strtoull);
+
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index a1f95fe..b474202 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -18,72 +18,6 @@
 #include <kallsyms.h>
 
 #include <common.h>
-#include <led.h>
-
-unsigned long simple_strtoul(const char *cp,char **endp,unsigned int base)
-{
-	unsigned long result = 0,value;
-
-	if (*cp == '0') {
-		cp++;
-		if ((*cp == 'x') && isxdigit(cp[1])) {
-			base = 16;
-			cp++;
-		}
-		if (!base) {
-			base = 8;
-		}
-	}
-	if (!base) {
-		base = 10;
-	}
-	while (isxdigit(*cp) && (value = isdigit(*cp) ? *cp-'0' : (islower(*cp)
-	    ? toupper(*cp) : *cp)-'A'+10) < base) {
-		result = result*base + value;
-		cp++;
-	}
-	if (endp)
-		*endp = (char *)cp;
-	return result;
-}
-EXPORT_SYMBOL(simple_strtoul);
-
-long simple_strtol(const char *cp,char **endp,unsigned int base)
-{
-	if(*cp=='-')
-		return -simple_strtoul(cp+1,endp,base);
-	return simple_strtoul(cp,endp,base);
-}
-EXPORT_SYMBOL(simple_strtol);
-
-unsigned long long simple_strtoull (const char *cp, char **endp, unsigned int base)
-{
-	unsigned long long result = 0, value;
-
-	if (*cp == '0') {
-		cp++;
-		if ((*cp == 'x') && isxdigit (cp[1])) {
-			base = 16;
-			cp++;
-		}
-		if (!base) {
-			base = 8;
-		}
-	}
-	if (!base) {
-		base = 10;
-	}
-	while (isxdigit (*cp) && (value = isdigit (*cp)
-				? *cp - '0'
-				: (islower (*cp) ? toupper (*cp) : *cp) - 'A' + 10) < base) {
-		result = result * base + value;
-		cp++;
-	}
-	if (endp)
-		*endp = (char *) cp;
-	return result;
-}
-EXPORT_SYMBOL(simple_strtoull);
 
 /* we use this so that we can do without the ctype library */
 #define is_digit(c)	((c) >= '0' && (c) <= '9')
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
