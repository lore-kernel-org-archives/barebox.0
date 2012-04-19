Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKkT6-0003er-7u
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 06:03:52 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 823E2FF8ACB
 for <barebox@lists.infradead.org>; Thu, 19 Apr 2012 08:05:09 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Apr 2012 07:44:49 +0200
Message-Id: <1334814298-11468-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120419053846.GA20601@game.jcrosoft.org>
References: <20120419053846.GA20601@game.jcrosoft.org>
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
Subject: [PATCH 02/11] stringlist: implement string_list_add_asprintf
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Useful for allocating a string list entry on the fly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/stringlist.h |    1 +
 lib/stringlist.c     |   24 ++++++++++++++++++++++++
 2 files changed, 25 insertions(+), 0 deletions(-)

diff --git a/include/stringlist.h b/include/stringlist.h
index 4b3cbf3..dd3f623 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -9,6 +9,7 @@ struct string_list {
 };
 
 int string_list_add(struct string_list *sl, char *str);
+int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...);
 int string_list_add_sorted(struct string_list *sl, char *str);
 int string_list_contains(struct string_list *sl, char *str);
 void string_list_print_by_column(struct string_list *sl);
diff --git a/lib/stringlist.c b/lib/stringlist.c
index c8b835e..b965aa0 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <xfuncs.h>
 #include <malloc.h>
+#include <errno.h>
 #include <stringlist.h>
 
 static int string_list_compare(struct list_head *a, struct list_head *b)
@@ -24,6 +25,29 @@ int string_list_add(struct string_list *sl, char *str)
 	return 0;
 }
 
+int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...)
+{
+	struct string_list *new;
+	va_list args;
+
+	new = xmalloc(sizeof(*new));
+
+	va_start(args, fmt);
+
+	new->str = vasprintf(fmt, args);
+
+	va_end(args);
+
+	if (!new->str) {
+		free(new);
+		return -ENOMEM;
+	}
+
+	list_add_tail(&new->list, &sl->list);
+
+	return 0;
+}
+
 int string_list_add_sorted(struct string_list *sl, char *str)
 {
 	struct string_list *new;
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
