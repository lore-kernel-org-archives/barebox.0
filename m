Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxpT4-0002WU-6g
 for barebox@lists.infradead.org; Tue, 11 Apr 2017 06:40:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Apr 2017 08:39:33 +0200
Message-Id: <20170411063934.20613-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] lib/strtox: whitespace cleanup
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/strtox.c | 53 +++++++++++++++++++++++++++++++----------------------
 1 file changed, 31 insertions(+), 22 deletions(-)

diff --git a/lib/strtox.c b/lib/strtox.c
index cfe61240cc..45aa06bacc 100644
--- a/lib/strtox.c
+++ b/lib/strtox.c
@@ -1,67 +1,76 @@
 #include <common.h>
 #include <linux/ctype.h>
 
-unsigned long simple_strtoul(const char *cp,char **endp,unsigned int base)
+unsigned long simple_strtoul(const char *cp, char **endp, unsigned int base)
 {
-	unsigned long result = 0,value;
+	unsigned long result = 0, value;
 
 	if (*cp == '0') {
 		cp++;
+
 		if ((*cp == 'x') && isxdigit(cp[1])) {
 			base = 16;
 			cp++;
 		}
-		if (!base) {
+
+		if (!base)
 			base = 8;
-		}
 	}
-	if (!base) {
+
+	if (!base)
 		base = 10;
-	}
-	while (isxdigit(*cp) && (value = isdigit(*cp) ? *cp-'0' : (islower(*cp)
-	    ? toupper(*cp) : *cp)-'A'+10) < base) {
-		result = result*base + value;
+
+	while (isxdigit(*cp) && (value = isdigit(*cp) ? *cp - '0' : (islower(*cp)
+	    ? toupper(*cp) : *cp) - 'A' + 10) < base) {
+		result = result * base + value;
 		cp++;
 	}
+
 	if (endp)
 		*endp = (char *)cp;
+
 	return result;
 }
 EXPORT_SYMBOL(simple_strtoul);
 
-long simple_strtol(const char *cp,char **endp,unsigned int base)
+long simple_strtol(const char *cp, char **endp, unsigned int base)
 {
-	if(*cp=='-')
-		return -simple_strtoul(cp+1,endp,base);
-	return simple_strtoul(cp,endp,base);
+	if (*cp == '-')
+		return -simple_strtoul(cp + 1, endp, base);
+
+	return simple_strtoul(cp, endp, base);
 }
 EXPORT_SYMBOL(simple_strtol);
 
-unsigned long long simple_strtoull (const char *cp, char **endp, unsigned int base)
+unsigned long long simple_strtoull(const char *cp, char **endp, unsigned int base)
 {
 	unsigned long long result = 0, value;
 
 	if (*cp == '0') {
 		cp++;
-		if ((*cp == 'x') && isxdigit (cp[1])) {
+
+		if ((*cp == 'x') && isxdigit(cp[1])) {
 			base = 16;
 			cp++;
 		}
-		if (!base) {
+
+		if (!base)
 			base = 8;
-		}
 	}
-	if (!base) {
+
+	if (!base)
 		base = 10;
-	}
-	while (isxdigit (*cp) && (value = isdigit (*cp)
+
+	while (isxdigit(*cp) && (value = isdigit(*cp)
 				? *cp - '0'
-				: (islower (*cp) ? toupper (*cp) : *cp) - 'A' + 10) < base) {
+				: (islower(*cp) ? toupper(*cp) : *cp) - 'A' + 10) < base) {
 		result = result * base + value;
 		cp++;
 	}
+
 	if (endp)
-		*endp = (char *) cp;
+		*endp = (char *)cp;
+
 	return result;
 }
 EXPORT_SYMBOL(simple_strtoull);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
