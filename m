Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QUvfP-0001hK-So
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 06:58:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jun 2011 08:57:53 +0200
Message-Id: <1307689073-9559-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1307689073-9559-1-git-send-email-s.hauer@pengutronix.de>
References: <1307689073-9559-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] stringlist: implement string_list_asprintf
To: barebox@lists.infradead.org

Useful for allocating a string list entry on the fly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/stringlist.h |    1 +
 lib/stringlist.c     |   22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+), 0 deletions(-)

diff --git a/include/stringlist.h b/include/stringlist.h
index 86edcf0..1e2616d 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -9,6 +9,7 @@ struct string_list {
 };
 
 int string_list_add(struct string_list *sl, char *str);
+int string_list_asprintf(struct string_list *sl, const char *fmt, ...);
 void string_list_print_by_column(struct string_list *sl);
 
 static inline void string_list_init(struct string_list *sl)
diff --git a/lib/stringlist.c b/lib/stringlist.c
index 3c8ecec..1015cac 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <xfuncs.h>
 #include <malloc.h>
+#include <errno.h>
 #include <xfuncs.h>
 #include <stringlist.h>
 
@@ -16,6 +17,27 @@ int string_list_add(struct string_list *sl, char *str)
 	return 0;
 }
 
+int string_list_asprintf(struct string_list *sl, const char *fmt, ...)
+{
+	struct string_list *new;
+	va_list args;
+
+	new = xmalloc(sizeof(*new));
+
+	va_start(args, fmt);
+
+	new->str = asprintf(fmt, args);
+
+	va_end(args);
+
+	if (!new->str) {
+		free(new);
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
 void string_list_print_by_column(struct string_list *sl)
 {
 	int len = 0, num, i;
-- 
1.7.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
