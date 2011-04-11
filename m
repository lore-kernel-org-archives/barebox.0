Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Hwy-000665-Ml
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:18:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:18:38 +0200
Message-Id: <1302531521-7439-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531521-7439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] move simple_itoa to libbb so that others can use it
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c   |   15 +--------------
 include/libbb.h |    2 ++
 lib/libbb.c     |   13 +++++++++++++
 3 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 77610bb..573bd3e 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -121,6 +121,7 @@
 #include <libbb.h>
 #include <glob.h>
 #include <getopt.h>
+#include <libbb.h>
 #include <linux/list.h>
 
 /*cmd_boot.c*/
@@ -361,20 +362,6 @@ static int b_addqchr(o_string *o, int ch, int quote)
 	return b_addchr(o, ch);
 }
 
-/* belongs in utility.c */
-static char *simple_itoa(unsigned int i)
-{
-	/* 21 digits plus null terminator, good for 64-bit or smaller ints */
-	static char local[22];
-	char *p = &local[21];
-	*p-- = '\0';
-	do {
-		*p-- = '0' + i % 10;
-		i /= 10;
-	} while (i > 0);
-	return p + 1;
-}
-
 static int b_adduint(o_string *o, unsigned int i)
 {
 	int r;
diff --git a/include/libbb.h b/include/libbb.h
index 4151230..0962969 100644
--- a/include/libbb.h
+++ b/include/libbb.h
@@ -30,4 +30,6 @@ int copy_file(const char *src, const char *dst);
 
 int process_escape_sequence(const char *source, char *dest, int destlen);
 
+char *simple_itoa(unsigned int i);
+
 #endif /* __LIBBB_H */
diff --git a/lib/libbb.c b/lib/libbb.c
index 4d532f6..3d02202 100644
--- a/lib/libbb.c
+++ b/lib/libbb.c
@@ -114,3 +114,16 @@ char * safe_strncpy(char *dst, const char *src, size_t size)
 }
 EXPORT_SYMBOL(safe_strncpy);
 
+char *simple_itoa(unsigned int i)
+{
+	/* 21 digits plus null terminator, good for 64-bit or smaller ints */
+	static char local[22];
+	char *p = &local[21];
+	*p-- = '\0';
+	do {
+		*p-- = '0' + i % 10;
+		i /= 10;
+	} while (i > 0);
+	return p + 1;
+}
+EXPORT_SYMBOL(simple_itoa);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
