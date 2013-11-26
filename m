Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlHaM-0001ek-0D
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 12:17:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 13:17:18 +0100
Message-Id: <1385468240-3915-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385468240-3915-1-git-send-email-s.hauer@pengutronix.de>
References: <1385468240-3915-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] string: Add (x)memdup
To: barebox@lists.infradead.org

It's a common task to duplicate some memory. Add (x)memdup functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/string.h |  2 ++
 include/xfuncs.h |  1 +
 lib/string.c     | 14 ++++++++++++++
 lib/xfuncs.c     | 10 ++++++++++
 4 files changed, 27 insertions(+)

diff --git a/include/string.h b/include/string.h
index b906e15..a833da1 100644
--- a/include/string.h
+++ b/include/string.h
@@ -3,4 +3,6 @@
 
 #include <linux/string.h>
 
+void *memdup(const void *, size_t);
+
 #endif /* __STRING_H */
diff --git a/include/xfuncs.h b/include/xfuncs.h
index 261aaa5..8efc99d 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -8,5 +8,6 @@ void *xrealloc(void *ptr, size_t size);
 void *xzalloc(size_t size);
 char *xstrdup(const char *s);
 void* xmemalign(size_t alignment, size_t bytes);
+void* xmemdup(const void *orig, size_t size);
 
 #endif /* __XFUNCS_H */
diff --git a/lib/string.c b/lib/string.c
index eeec137..ceced7f 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -725,3 +725,17 @@ void *memchr_inv(const void *start, int c, size_t bytes)
 	return check_bytes8(start, value, bytes % 8);
 }
 EXPORT_SYMBOL(memchr_inv);
+
+void *memdup(const void *orig, size_t size)
+{
+	void *buf;
+
+	buf = malloc(size);
+	if (!buf)
+		return NULL;
+
+	memcpy(buf, orig, size);
+
+	return buf;
+}
+EXPORT_SYMBOL(memdup);
diff --git a/lib/xfuncs.c b/lib/xfuncs.c
index db85720..86d0013 100644
--- a/lib/xfuncs.c
+++ b/lib/xfuncs.c
@@ -75,3 +75,13 @@ void* xmemalign(size_t alignment, size_t bytes)
 	return p;
 }
 EXPORT_SYMBOL(xmemalign);
+
+void *xmemdup(const void *orig, size_t size)
+{
+	void *buf = xmalloc(size);
+
+	memcpy(buf, orig, size);
+
+	return buf;
+}
+EXPORT_SYMBOL(xmemdup);
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
