Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5KFG-0007g3-68
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 20:47:40 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 17 Jun 2015 22:47:01 +0200
Message-Id: <1434574023-20556-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1434574023-20556-1-git-send-email-mkl@pengutronix.de>
References: <1434574023-20556-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v3 2/4] xfuncs: import xstrndup() from busybox
To: barebox@lists.infradead.org

This function is needed for the fixed length string feature in the state
framework.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/xfuncs.h |  1 +
 lib/xfuncs.c     | 22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/include/xfuncs.h b/include/xfuncs.h
index 8efc99dbc455..940a1d67ed1c 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -7,6 +7,7 @@ void *xmalloc(size_t size);
 void *xrealloc(void *ptr, size_t size);
 void *xzalloc(size_t size);
 char *xstrdup(const char *s);
+char *xstrndup(const char *s, size_t size);
 void* xmemalign(size_t alignment, size_t bytes);
 void* xmemdup(const void *orig, size_t size);
 
diff --git a/lib/xfuncs.c b/lib/xfuncs.c
index 0e78b670a5d4..f0219c43a5ec 100644
--- a/lib/xfuncs.c
+++ b/lib/xfuncs.c
@@ -63,6 +63,28 @@ char *xstrdup(const char *s)
 }
 EXPORT_SYMBOL(xstrdup);
 
+char *xstrndup(const char *s, size_t n)
+{
+	int m;
+	char *t;
+
+	/* We can just xmalloc(n+1) and strncpy into it, */
+	/* but think about xstrndup("abc", 10000) wastage! */
+	m = n;
+	t = (char*) s;
+	while (m) {
+		if (!*t) break;
+		m--;
+		t++;
+	}
+	n -= m;
+	t = xmalloc(n + 1);
+	t[n] = '\0';
+
+	return memcpy(t, s, n);
+}
+EXPORT_SYMBOL(xstrndup);
+
 void* xmemalign(size_t alignment, size_t bytes)
 {
 	void *p = memalign(alignment, bytes);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
