Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x234.google.com ([2a00:1450:4008:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uozjs-0006ot-Pg
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 17:30:42 +0000
Received: by mail-bk0-f52.google.com with SMTP id d7so1922363bkh.25
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 10:30:18 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 18 Jun 2013 19:29:46 +0200
Message-Id: <1371576607-8090-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 01/22] lib: string: import case-insensitive string compare
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This imports strnicmp, strcasecmp, and strncasecmp from Linux to barebox.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 include/linux/string.h |    9 +++++++
 lib/string.c           |   60 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 69 insertions(+), 0 deletions(-)

diff --git a/include/linux/string.h b/include/linux/string.h
index afd0aa6..658264c 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -53,6 +53,15 @@ extern int strcmp(const char *,const char *);
 #ifndef __HAVE_ARCH_STRNCMP
 extern int strncmp(const char *,const char *,__kernel_size_t);
 #endif
+#ifndef __HAVE_ARCH_STRNICMP
+extern int strnicmp(const char *, const char *, __kernel_size_t);
+#endif
+#ifndef __HAVE_ARCH_STRCASECMP
+extern int strcasecmp(const char *s1, const char *s2);
+#endif
+#ifndef __HAVE_ARCH_STRNCASECMP
+extern int strncasecmp(const char *s1, const char *s2, size_t n);
+#endif
 #ifndef __HAVE_ARCH_STRCHR
 extern char * _strchr(const char *,int);
 #endif
diff --git a/lib/string.c b/lib/string.c
index db4f2ae..f544b23 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -22,6 +22,66 @@
 
 char * ___strtok;
 
+#ifndef __HAVE_ARCH_STRNICMP
+/**
+ * strnicmp - Case insensitive, length-limited string comparison
+ * @s1: One string
+ * @s2: The other string
+ * @len: the maximum number of characters to compare
+ */
+int strnicmp(const char *s1, const char *s2, size_t len)
+{
+	/* Yes, Virginia, it had better be unsigned */
+	unsigned char c1, c2;
+
+	if (!len)
+		return 0;
+
+	do {
+		c1 = *s1++;
+		c2 = *s2++;
+		if (!c1 || !c2)
+			break;
+		if (c1 == c2)
+			continue;
+		c1 = tolower(c1);
+		c2 = tolower(c2);
+		if (c1 != c2)
+			break;
+	} while (--len);
+	return (int)c1 - (int)c2;
+}
+EXPORT_SYMBOL(strnicmp);
+#endif
+
+#ifndef __HAVE_ARCH_STRCASECMP
+int strcasecmp(const char *s1, const char *s2)
+{
+	int c1, c2;
+
+	do {
+		c1 = tolower(*s1++);
+		c2 = tolower(*s2++);
+	} while (c1 == c2 && c1 != 0);
+	return c1 - c2;
+}
+EXPORT_SYMBOL(strcasecmp);
+#endif
+
+#ifndef __HAVE_ARCH_STRNCASECMP
+int strncasecmp(const char *s1, const char *s2, size_t n)
+{
+	int c1, c2;
+
+	do {
+		c1 = tolower(*s1++);
+		c2 = tolower(*s2++);
+	} while ((--n > 0) && c1 == c2 && c1 != 0);
+	return c1 - c2;
+}
+EXPORT_SYMBOL(strncasecmp);
+#endif
+
 #ifndef __HAVE_ARCH_STRCPY
 /**
  * strcpy - Copy a %NUL terminated string
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
