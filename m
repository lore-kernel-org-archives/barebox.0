Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tkcvk-0003zT-UB
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 15:48:39 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 17 Dec 2012 16:48:25 +0100
Message-Id: <1355759313-23329-4-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1355759313-23329-1-git-send-email-w.sang@pengutronix.de>
References: <1355759313-23329-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH V3 03/11] lib: update size_human_readable to latest version
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Copy over the latest version from u-boot which handles bigger sizes now
and does arithmetic with shifts instead of divisions.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 include/common.h      |    2 +-
 lib/display_options.c |   47 +++++++++++++++++++++++++++++++----------------
 2 files changed, 32 insertions(+), 17 deletions(-)

diff --git a/include/common.h b/include/common.h
index e30774a..1939427 100644
--- a/include/common.h
+++ b/include/common.h
@@ -105,7 +105,7 @@ void reginfo(void);
 void __noreturn hang (void);
 void __noreturn panic(const char *fmt, ...);
 
-char *size_human_readable(ulong size);
+char *size_human_readable(unsigned long long size);
 
 /* common/main.c */
 int	run_command	(const char *cmd, int flag);
diff --git a/lib/display_options.c b/lib/display_options.c
index a6050cb..0871552 100644
--- a/lib/display_options.c
+++ b/lib/display_options.c
@@ -21,35 +21,50 @@
 
 /*
  * return a pointer to a string containing the size
- * as "xxx kB", "xxx.y kB", "xxx MB" or "xxx.y MB" as needed;
+ *"as xxx KiB", "xxx.y KiB", "xxx MiB", "xxx.y MiB",
+ * xxx GiB, xxx.y GiB, etc as needed;
  */
-char *size_human_readable(ulong size)
+char *size_human_readable(unsigned long long size)
 {
 	static char buf[20];
-	ulong m, n;
-	ulong d = 1 << 20;		/* 1 MB */
-	char  c = 'M';
+	unsigned long m = 0, n;
+	unsigned long long f;
+	static const char names[] = {'E', 'P', 'T', 'G', 'M', 'K'};
+	unsigned long d = 10 * ARRAY_SIZE(names);
+	char c = 0;
+	unsigned int i;
 	char *ptr = buf;
 
-	if (size < d) {			/* print in kB */
-		c = 'k';
-		d = 1 << 10;
+	for (i = 0; i < ARRAY_SIZE(names); i++, d -= 10) {
+		if (size >> d) {
+			c = names[i];
+			break;
+		}
 	}
 
-	n = size / d;
+	if (!c) {
+		sprintf(buf, "%llu Bytes", size);
+		return buf;
+	}
+
+	n = size >> d;
+	f = size & ((1ULL << d) - 1);
 
-	m = (10 * (size - (n * d)) + (d / 2) ) / d;
+	/* If there's a remainder, deal with it */
+	if (f) {
+		m = (10ULL * f + (1ULL << (d - 1))) >> d;
 
-	if (m >= 10) {
-		m -= 10;
-		n += 1;
+		if (m >= 10) {
+			m -= 10;
+			n += 1;
+		}
 	}
 
-	ptr += sprintf(buf, "%2ld", n);
+	ptr += sprintf(buf, "%lu", n);
 	if (m) {
-		ptr += sprintf (ptr,".%ld", m);
+		ptr += sprintf(ptr, ".%ld", m);
 	}
-	sprintf(ptr, " %cB", c);
+	sprintf(ptr, " %ciB", c);
 
 	return buf;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
