Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5ZFs-0008Ky-Cw
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 10:07:59 +0000
Received: from mail239.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 2381AFFA3A6
 for <barebox@lists.infradead.org>; Wed, 13 Feb 2013 11:23:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 13 Feb 2013 11:06:40 +0100
Message-Id: <1360750004-17713-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360750004-17713-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130213100249.GL19322@game.jcrosoft.org>
 <1360750004-17713-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/6] of: make of_add_memory available for other board
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

so when the first stage booloader of firmware provide the dtb
we can use it to probe the memory

also allow to print what we probe

Cc: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/of/base.c |   20 ++++++++++++++------
 include/of.h      |    6 ++++++
 2 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1f32bfb..f2986ab 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -734,18 +734,23 @@ u64 dt_mem_next_cell(int s, const __be32 **cellp)
 	return of_read_number(p, s);
 }
 
-static int of_add_memory(struct device_node *node)
+int of_add_memory(struct device_node *node, bool dump)
 {
 	int na, nc;
 	const __be32 *reg, *endp;
 	int len, r = 0;
 	static char str[6];
+	struct property *type;
+
+	type = of_find_property(node, "device_type");
+	if (!type)
+		return -ENXIO;
 
 	of_bus_count_cells(node, &na, &nc);
 
 	reg = of_get_property(node, "reg", &len);
 	if (!reg)
-		return 0;
+		return -EINVAL;
 
 	endp = reg + (len / sizeof(__be32));
 
@@ -762,6 +767,9 @@ static int of_add_memory(struct device_node *node)
 
                 barebox_add_memory_bank(str, base, size);
 
+		if (dump)
+			pr_info("%s: %s: 0x%llx@0x%llx\n", node->name, str, size, base);
+
 		r++;
         }
 
@@ -770,7 +778,7 @@ static int of_add_memory(struct device_node *node)
 
 static int add_of_device_resource(struct device_node *node)
 {
-	struct property *reg, *type;
+	struct property *reg;
 	u64 address, size;
 	struct resource *res;
 	struct device_d *dev;
@@ -783,9 +791,9 @@ static int add_of_device_resource(struct device_node *node)
 		list_add_tail(&node->phandles, &phandle_list);
 	}
 
-	type = of_find_property(node, "device_type");
-	if (type)
-		return of_add_memory(node);
+	ret = of_add_memory(node, false);
+	if (ret != -ENXIO)
+		return ret;
 
 	reg = of_find_property(node, "reg");
 	if (!reg)
diff --git a/include/of.h b/include/of.h
index d413d72..4dc5b6c 100644
--- a/include/of.h
+++ b/include/of.h
@@ -132,6 +132,7 @@ int of_alias_get_id(struct device_node *np, const char *stem);
 int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
 void *of_flatten_dtb(void);
+int of_add_memory(struct device_node *node, bool dump);
 #else
 static inline int of_parse_partitions(const char *cdevname,
 					  struct device_node *node)
@@ -163,6 +164,11 @@ static inline void *of_flatten_dtb(void)
 {
 	return NULL;
 }
+
+static inline int of_add_memory(struct device_node *node, bool dump)
+{
+	return -EINVAL;
+}
 #endif
 
 #endif /* __OF_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
