Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1Cyo-0003q0-FC
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 10:04:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 12:04:06 +0200
Message-Id: <1374487450-13800-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374487450-13800-1-git-send-email-s.hauer@pengutronix.de>
References: <1374487450-13800-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] string: introduce memchr_inv
To: barebox@lists.infradead.org

Directly taken from Linux Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/string.h |  2 ++
 lib/string.c           | 59 ++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+)

diff --git a/include/linux/string.h b/include/linux/string.h
index 658264c..5df8c50 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -106,6 +106,8 @@ extern char * skip_spaces(const char *);
 
 extern char *strim(char *);
 
+void *memchr_inv(const void *start, int c, size_t bytes);
+
 #ifdef __cplusplus
 }
 #endif
diff --git a/lib/string.c b/lib/string.c
index f544b23..eeec137 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -666,3 +666,62 @@ char *strim(char *s)
 	return s;
 }
 EXPORT_SYMBOL(strim);
+
+static void *check_bytes8(const u8 *start, u8 value, unsigned int bytes)
+{
+	while (bytes) {
+		if (*start != value)
+			return (void *)start;
+		start++;
+		bytes--;
+	}
+	return NULL;
+}
+
+/**
+ * memchr_inv - Find an unmatching character in an area of memory.
+ * @start: The memory area
+ * @c: Find a character other than c
+ * @bytes: The size of the area.
+ *
+ * returns the address of the first character other than @c, or %NULL
+ * if the whole buffer contains just @c.
+ */
+void *memchr_inv(const void *start, int c, size_t bytes)
+{
+	u8 value = c;
+	u64 value64;
+	unsigned int words, prefix;
+
+	if (bytes <= 16)
+		return check_bytes8(start, value, bytes);
+
+	value64 = value;
+	value64 |= value64 << 8;
+	value64 |= value64 << 16;
+	value64 |= value64 << 32;
+
+	prefix = (unsigned long)start % 8;
+	if (prefix) {
+		u8 *r;
+
+		prefix = 8 - prefix;
+		r = check_bytes8(start, value, prefix);
+		if (r)
+			return r;
+		start += prefix;
+		bytes -= prefix;
+	}
+
+	words = bytes / 8;
+
+	while (words) {
+		if (*(u64 *)start != value64)
+			return check_bytes8(start, value, 8);
+		start += 8;
+		words--;
+	}
+
+	return check_bytes8(start, value, bytes % 8);
+}
+EXPORT_SYMBOL(memchr_inv);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
