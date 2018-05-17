Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJQSt-00059L-AB
 for barebox@lists.infradead.org; Thu, 17 May 2018 21:29:36 +0000
Received: by mail-pl0-x241.google.com with SMTP id az12-v6so3284429plb.8
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 14:29:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 May 2018 14:29:16 -0700
Message-Id: <20180517212917.3628-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180517212917.3628-1-andrew.smirnov@gmail.com>
References: <20180517212917.3628-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 3/4] common: oftree: Pass bootsource and bootsource
 instance to kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Pass barebox-detected bootsource to Linux to make it availible to
Linux userspace. That information is passed as full path to the node
corresponding to the bootsource and is placed under /chosen/bootsource
and it can be read under Linux in

/sys/firmware/devicetree/base/chosen/bootsource

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/oftree.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/common/oftree.c b/common/oftree.c
index 8a2ede4c6..a38dfff29 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -11,6 +11,7 @@
 #include <getopt.h>
 #include <init.h>
 #include <boot.h>
+#include <bootsource.h>
 #include <i2c/i2c.h>
 
 #define MAX_LEVEL	32		/* how deeply nested we will go */
@@ -114,6 +115,29 @@ void of_print_cmdline(struct device_node *root)
 	printf("commandline: %s\n", cmdline);
 }
 
+static int of_fixup_bootargs_bootsource(struct device_node *root,
+					struct device_node *chosen)
+{
+	char *alias_name = bootsource_get_alias_name();
+	struct device_node *bootsource;
+	int ret = 0;
+
+	if (!alias_name)
+		return 0;
+
+	bootsource = of_find_node_by_alias(root, alias_name);
+	/*
+	 * If kernel DTB doesn't have the appropriate alias set up,
+	 * give up and exit early. No error is reported.
+	 */
+	if (bootsource)
+		ret = of_set_property(chosen, "bootsource", bootsource->full_name,
+				      strlen(bootsource->full_name) + 1, true);
+
+	free(alias_name);
+	return ret;
+}
+
 static int of_fixup_bootargs(struct device_node *root, void *unused)
 {
 	struct device_node *node;
@@ -131,8 +155,10 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 	of_property_write_string(node, "barebox-version", release_string);
 
 	err = of_property_write_string(node, "bootargs", str);
+	if (err)
+		return err;
 
-	return err;
+	return of_fixup_bootargs_bootsource(root, node);
 }
 
 static int of_register_bootargs_fixup(void)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
