Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8aZ-0001ZU-7m
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:31:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:30:23 +0100
Message-Id: <1323945034-19687-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] oftree: add of_fix_tree()
To: barebox@lists.infradead.org

Currently we have of_get_fixed_tree() which assumes that
there is a global variable holding a oftree. This seems
not very flexible, so for now introduce a of_fix_tree()
which takes an fdt_header as argument and walks the
list of registered of fixup functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c |   22 +++++++++++++++-------
 include/of.h    |    1 +
 2 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/common/oftree.c b/common/oftree.c
index 2a2f464..a657d31 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -293,20 +293,28 @@ int of_register_fixup(int (*fixup)(struct fdt_header *))
 	return 0;
 }
 
-struct fdt_header *of_get_fixed_tree(void)
+int of_fix_tree(struct fdt_header *fdt)
 {
 	struct of_fixup *of_fixup;
 	int ret;
 
-	if (!barebox_fdt)
-		return NULL;
-
 	list_for_each_entry(of_fixup, &of_fixup_list, list) {
-		ret = of_fixup->fixup(barebox_fdt);
+		ret = of_fixup->fixup(fdt);
 		if (ret)
-			return NULL;
+			return ret;
 	}
 
-	return barebox_fdt;
+	return 0;
 }
 
+struct fdt_header *of_get_fixed_tree(void)
+{
+	int ret;
+
+	if (!barebox_fdt)
+		return NULL;
+	ret = of_fix_tree(barebox_fdt);
+	if (ret)
+		return NULL;
+	return barebox_fdt;
+}
diff --git a/include/of.h b/include/of.h
index c2661ef..609b3b5 100644
--- a/include/of.h
+++ b/include/of.h
@@ -8,6 +8,7 @@ extern struct fdt_header *barebox_fdt;
 int fdt_print(struct fdt_header *working_fdt, const char *pathp);
 
 struct fdt_header *of_get_fixed_tree(void);
+int of_fix_tree(struct fdt_header *fdt);
 int of_register_fixup(int (*fixup)(struct fdt_header *));
 
 int fdt_find_and_setprop(struct fdt_header *fdt, const char *node, const char *prop,
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
