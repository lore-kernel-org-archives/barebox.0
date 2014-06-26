Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22f.google.com ([2a00:1450:400c:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X05NX-0004fz-Qc
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 08:50:00 +0000
Received: by mail-wg0-f47.google.com with SMTP id k14so3225741wgh.6
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 01:49:37 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Thu, 26 Jun 2014 10:49:15 +0200
Message-Id: <1403772557-28482-3-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 2/4] sandbox: only access of_add_memory_bank if it's defined
To: barebox@lists.infradead.org

... and it's defined only when CONFIG_OFTREE_MEM_GENERIC is on.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 drivers/of/base.c |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index c440a69..818d76e 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1697,6 +1697,7 @@ int of_set_property(struct device_node *np, const char *name, const void *val, i
 	return 0;
 }
 
+#ifdef CONFIG_OFTREE_MEM_GENERIC
 int of_add_memory(struct device_node *node, bool dump)
 {
 	const char *device_type;
@@ -1720,6 +1721,7 @@ int of_add_memory(struct device_node *node, bool dump)
 
 	return 0;
 }
+#endif
 
 static struct device_node *of_chosen;
 static const char *of_model;
@@ -1739,7 +1741,9 @@ const struct of_device_id of_default_bus_match_table[] = {
 
 int of_probe(void)
 {
+#ifdef CONFIG_OFTREE_MEM_GENERIC
 	struct device_node *memory;
+#endif
 
 	if(!root_node)
 		return -ENODEV;
@@ -1750,9 +1754,11 @@ int of_probe(void)
 	if (of_model)
 		barebox_set_model(of_model);
 
+#ifdef CONFIG_OFTREE_MEM_GENERIC
 	memory = of_find_node_by_path("/memory");
 	if (memory)
 		of_add_memory(memory, false);
+#endif
 
 	of_platform_populate(root_node, of_default_bus_match_table, NULL);
 	of_clk_init(root_node, NULL);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
