Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aw56J-0002JL-9a
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 09:52:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Apr 2016 11:52:01 +0200
Message-Id: <1461923525-6356-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461923525-6356-1-git-send-email-s.hauer@pengutronix.de>
References: <1461923525-6356-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] string: Introduce strtobool
To: Barebox List <barebox@lists.infradead.org>

We have at least two places which convert a string to a boolean type,
so create a common function for this. strtobool treats

- any positive (nonzero) number as true
- "0" as false
- "true" (case insensitive) as true
- "false" (case insensitive) as false

Every other value results in an error and the input *val is not
modified. The caller is expected to initialize *val with the correct
default before calling strtobool.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/string.h |  1 +
 lib/string.c     | 43 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/include/string.h b/include/string.h
index a833da1..0c557d6 100644
--- a/include/string.h
+++ b/include/string.h
@@ -4,5 +4,6 @@
 #include <linux/string.h>
 
 void *memdup(const void *, size_t);
+int strtobool(const char *str, int *val);
 
 #endif /* __STRING_H */
diff --git a/lib/string.c b/lib/string.c
index 6a39eb5..a3e9fd8 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -739,3 +739,46 @@ void *memdup(const void *orig, size_t size)
 	return buf;
 }
 EXPORT_SYMBOL(memdup);
+
+/**
+ * strtobool - convert a string to a boolean value
+ * @str - The string
+ * @val - The boolean value returned.
+ *
+ * This function treats
+ * - any positive (nonzero) number as true
+ * - "0" as false
+ * - "true" (case insensitive) as true
+ * - "false" (case insensitive) as false
+ *
+ * Every other value results in an error and the @val is not
+ * modified. The caller is expected to initialize @val with the
+ * correct default before calling strtobool.
+ *
+ * Returns 0 for success or negative error code if the variable does
+ * not exist or contains something this function does not recognize
+ * as true or false.
+ */
+int strtobool(const char *str, int *val)
+{
+	if (!str || !*str)
+		return -EINVAL;
+
+	if (simple_strtoul(str, NULL, 0) > 0) {
+		*val = true;
+		return 0;
+	}
+
+	if (!strcmp(str, "0") || !strcasecmp(str, "false")) {
+		*val = false;
+		return 0;
+	}
+
+	if (!strcasecmp(str, "true")) {
+		*val = true;
+		return 0;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL(strtobool);
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
