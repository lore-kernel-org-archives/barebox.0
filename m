Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJHY-0005iC-5v
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:46:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:46:21 +0200
Message-Id: <1349725584-20509-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349725584-20509-1-git-send-email-s.hauer@pengutronix.de>
References: <1349725584-20509-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] of: find and register memory during probe
To: barebox@lists.infradead.org

This automatically registers the memory nodes in the devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |   49 ++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index fd152d6..09785fb 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -23,6 +23,7 @@
 #include <libfdt.h>
 #include <malloc.h>
 #include <init.h>
+#include <memory.h>
 #include <linux/ctype.h>
 
 /**
@@ -612,9 +613,51 @@ static struct device_d *add_of_device(struct device_node *node)
 }
 EXPORT_SYMBOL(add_of_device);
 
+u64 dt_mem_next_cell(int s, const __be32 **cellp)
+{
+	const __be32 *p = *cellp;
+
+	*cellp = p + s;
+	return of_read_number(p, s);
+}
+
+static int of_add_memory(struct device_node *node)
+{
+	int na, nc;
+	const __be32 *reg, *endp;
+	int len, r = 0;
+	static char str[6];
+
+	of_bus_count_cells(node, &na, &nc);
+
+	reg = of_get_property(node, "reg", &len);
+	if (!reg)
+		return 0;
+
+	endp = reg + (len / sizeof(__be32));
+
+	while ((endp - reg) >= (na + nc)) {
+		u64 base, size;
+
+		base = dt_mem_next_cell(na, &reg);
+		size = dt_mem_next_cell(nc, &reg);
+
+		if (size == 0)
+			continue;
+
+		sprintf(str, "ram%d", r);
+
+                barebox_add_memory_bank(str, base, size);
+
+		r++;
+        }
+
+	return 0;
+}
+
 static int add_of_device_resource(struct device_node *node)
 {
-	struct property *reg;
+	struct property *reg, *type;
 	u64 address, size;
 	struct resource *res;
 	struct device_d *dev;
@@ -627,6 +670,10 @@ static int add_of_device_resource(struct device_node *node)
 		list_add_tail(&node->phandles, &phandle_list);
 	}
 
+	type = of_find_property(node, "device_type");
+	if (type)
+		return of_add_memory(node);
+
 	reg = of_find_property(node, "reg");
 	if (!reg)
 		return -ENODEV;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
