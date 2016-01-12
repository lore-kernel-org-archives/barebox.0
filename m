Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIw0o-0004To-O4
 for barebox@lists.infradead.org; Tue, 12 Jan 2016 10:17:15 +0000
Received: by mail-wm0-x241.google.com with SMTP id b14so30546577wmb.1
 for <barebox@lists.infradead.org>; Tue, 12 Jan 2016 02:16:54 -0800 (PST)
From: yegorslists@googlemail.com
Date: Tue, 12 Jan 2016 11:16:38 +0100
Message-Id: <1452593799-21408-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH v2 1/2] of: rework of_node_cmp() to support short and full
 node names
To: barebox@lists.infradead.org
Cc: tpiepho@kymetacorp.com

From: Yegor Yefremov <yegorslists@googlemail.com>

Copy functionality of U-Boot's _fdt_nodename_eq() routine.

First it checks, if both node names are equal using the length
of the node in question and then it checks, if the in-tree
node has '@' as next character. This way following use cases are
possible:

If *.its file has following configurations:

        conf214@1 {
                description = "Boot Linux kernel with FDT blob (214)";
                kernel = "kernel@1";
                fdt = "fdt220@1";
        };
        conf214@2 {
                description = "Boot Linux kernel with FDT blob (214@2)";
                kernel = "kernel@1";
                fdt = "fdt210@1";
        };

Then:

> bootm /boot/kernel-fit.itb@conf214 - would select "conf214@1"
> bootm /boot/kernel-fit.itb@conf214@2 - would select "conf214@2"

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
Changes:
	v2: add of_node_cmp() description (Trent Piepho)

 drivers/of/base.c | 21 +++++++++++++++++++++
 include/of.h      |  2 +-
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index d12bfe3..971e27e 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -31,6 +31,27 @@
 #include <linux/err.h>
 
 /*
+ * Compare node names using the length of the node in question
+ * and then check, if the in-tree node has '@' as next character.
+ * This way both short names like 'name' and full like 'name@1' will
+ * be accepted.
+ */
+int of_node_cmp(const char *s1, const char *s2)
+{
+	int len = strlen(s2);
+
+	if (strncasecmp(s1, s2, len) != 0)
+		return 1;
+
+	if (s1[len] == '\0')
+		return 0;
+	else if (!memchr(s2, '@', len) && (s1[len] == '@'))
+		return 0;
+	else
+		return 1;
+}
+
+/*
  * Iterate over all nodes of a tree. As a devicetree does not
  * have a dedicated list head, the start node (usually the root
  * node) will not be iterated over.
diff --git a/include/of.h b/include/of.h
index 75cc3c1..3b18eef 100644
--- a/include/of.h
+++ b/include/of.h
@@ -10,7 +10,6 @@
 /* Default string compare functions */
 #define of_compat_cmp(s1, s2, l)	strcasecmp((s1), (s2))
 #define of_prop_cmp(s1, s2)		strcmp((s1), (s2))
-#define of_node_cmp(s1, s2)		strcasecmp((s1), (s2))
 
 #define OF_BAD_ADDR      ((u64)-1)
 
@@ -104,6 +103,7 @@ struct device_node *of_unflatten_dtb(const void *fdt);
 struct cdev;
 
 #ifdef CONFIG_OFTREE
+extern int of_node_cmp(const char *s1, const char *s2);
 extern int of_n_addr_cells(struct device_node *np);
 extern int of_n_size_cells(struct device_node *np);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
