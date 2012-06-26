Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjbqt-0006N7-Oy
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:55:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Jun 2012 21:54:57 +0200
Message-Id: <1340740503-7003-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
References: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/10] introduce strtoull_suffix function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/common.h |    1 +
 lib/misc.c       |   14 ++++++++++----
 lib/vsprintf.c   |    1 +
 3 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/include/common.h b/include/common.h
index d2347f8..328aa30 100644
--- a/include/common.h
+++ b/include/common.h
@@ -142,6 +142,7 @@ int parse_area_spec(const char *str, ulong *start, ulong *size);
 
 /* Just like simple_strtoul(), but this one honors a K/M/G suffix */
 unsigned long strtoul_suffix(const char *str, char **endp, int base);
+unsigned long long strtoull_suffix(const char *str, char **endp, int base);
 
 void start_barebox(void);
 void shutdown_barebox(void);
diff --git a/lib/misc.c b/lib/misc.c
index 549b960..cdf0185 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -27,15 +27,15 @@
 #include <linux/ctype.h>
 
 /*
- * Like simple_strtoul() but handles an optional G, M, K or k
+ * Like simple_strtoull() but handles an optional G, M, K or k
  * suffix for Gigabyte, Megabyte or Kilobyte
  */
-unsigned long strtoul_suffix(const char *str, char **endp, int base)
+unsigned long long strtoull_suffix(const char *str, char **endp, int base)
 {
-	unsigned long val;
+	unsigned long long val;
 	char *end;
 
-	val = simple_strtoul(str, &end, base);
+	val = simple_strtoull(str, &end, base);
 
 	switch (*end) {
 	case 'G':
@@ -55,6 +55,12 @@ unsigned long strtoul_suffix(const char *str, char **endp, int base)
 
 	return val;
 }
+EXPORT_SYMBOL(strtoull_suffix);
+
+unsigned long strtoul_suffix(const char *str, char **endp, int base)
+{
+	return strtoull_suffix(str, endp, base);
+}
 EXPORT_SYMBOL(strtoul_suffix);
 
 /*
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 9763515..17c1973 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -83,6 +83,7 @@ unsigned long long simple_strtoull (const char *cp, char **endp, unsigned int ba
 		*endp = (char *) cp;
 	return result;
 }
+EXPORT_SYMBOL(simple_strtoll);
 
 /* we use this so that we can do without the ctype library */
 #define is_digit(c)	((c) >= '0' && (c) <= '9')
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
