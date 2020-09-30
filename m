Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNbbX-0003gf-O1
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 12:53:09 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 14:53:01 +0200
Message-Id: <20200930125303.14933-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200930125303.14933-1-a.fatoum@pengutronix.de>
References: <20200930125303.14933-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] of: implement of_property_write_strings for multiple
 strings
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The current way to set a property with multiple values (e.g. compatible
strings) is to have

  char properties[] = "st,stm32mp157c-dk2\0st,stm32mp157";
  of_set_property(np, "compatible", properties, sizeof(properties), 1);

Add a new helper to make this easier at the cost of one runtime
reallocation:

  of_property_write_strings(np, "compatible,
	"st,stm32mp157c-dk2", "st,stm32mp157", NULL);

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 48 +++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h      |  2 ++
 include/string.h  |  1 +
 lib/string.c      | 13 +++++++++++++
 4 files changed, 64 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4e88af7b22e2..f5aad268b2d0 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -23,6 +23,7 @@
 #include <memory.h>
 #include <linux/sizes.h>
 #include <of_graph.h>
+#include <string.h>
 #include <linux/ctype.h>
 #include <linux/amba/bus.h>
 #include <linux/err.h>
@@ -1182,6 +1183,53 @@ int of_property_write_u64_array(struct device_node *np,
 	return 0;
 }
 
+/**
+ * of_property_write_strings - Write strings to a property. If
+ * the property does not exist, it will be created and appended to the given
+ * device node.
+ *
+ * @np:		device node to which the property value is to be written.
+ * @propname:	name of the property to be written.
+ * @...:	pointers to strings to write
+ *
+ * Search for a property in a device node and write a string to
+ * it. If the property does not exist, it will be created and appended to
+ * the device node. Returns 0 on success, -ENOMEM if the property or array
+ * of elements cannot be created, -EINVAL if no strings specified.
+ */
+int of_property_write_strings(struct device_node *np,
+			      const char *propname, ...)
+{
+	const char *val;
+	char *buf = NULL, *next;
+	size_t len = 0;
+	va_list ap;
+	int ret = 0;
+
+	va_start(ap, propname);
+	for (val = va_arg(ap, char *); val; val = va_arg(ap, char *))
+		len += strlen(val) + 1;
+	va_end(ap);
+
+	if (!len)
+		return -EINVAL;
+
+	buf = malloc(len);
+	if (!buf)
+		return -ENOMEM;
+
+	next = buf;
+
+	va_start(ap, propname);
+	for (val = va_arg(ap, char *); val; val = va_arg(ap, char *))
+		next = stpcpy(next, val) + 1;
+	va_end(ap);
+
+	ret = of_set_property(np, propname, buf, len, 1);
+	free(buf);
+	return ret;
+}
+
 /**
  * of_property_write_string - Write a string to a property. If
  * the property does not exist, it will be created and appended to the given
diff --git a/include/of.h b/include/of.h
index fc36f7a21ac9..d5947fbaab56 100644
--- a/include/of.h
+++ b/include/of.h
@@ -231,6 +231,8 @@ extern int of_property_write_u64_array(struct device_node *np,
 				size_t sz);
 extern int of_property_write_string(struct device_node *np, const char *propname,
 				    const char *value);
+extern int of_property_write_strings(struct device_node *np, const char *propname,
+				    ...) __attribute__((__sentinel__));
 
 extern struct device_node *of_parse_phandle(const struct device_node *np,
 					    const char *phandle_name,
diff --git a/include/string.h b/include/string.h
index 063e85f62cf8..b51566fd002a 100644
--- a/include/string.h
+++ b/include/string.h
@@ -6,6 +6,7 @@
 
 int strtobool(const char *str, int *val);
 char *strsep_unescaped(char **, const char *);
+char *stpcpy(char *dest, const char *src);
 
 void *__default_memset(void *, int, __kernel_size_t);
 void *__nokasan_default_memset(void *, int, __kernel_size_t);
diff --git a/lib/string.c b/lib/string.c
index 003070fa53e0..d250e5864313 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -100,6 +100,19 @@ char * strcpy(char * dest,const char *src)
 #endif
 EXPORT_SYMBOL(strcpy);
 
+/**
+ * stpcpy - Copy a %NUL terminated string, but return pointer to %NUL
+ * @dest: Where to copy the string to
+ * @src: Where to copy the string from
+ */
+char *stpcpy(char *dest, const char *src)
+{
+	while ((*dest++ = *src++) != '\0')
+		/* nothing */;
+	return dest - 1;
+}
+EXPORT_SYMBOL(stpcpy);
+
 #ifndef __HAVE_ARCH_STRNCPY
 /**
  * strncpy - Copy a length-limited, %NUL-terminated string
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
