Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUB9q-0008Ck-G9
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 07:27:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Apr 2013 09:27:20 +0200
Message-Id: <1366615643-22213-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
References: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] of: Allow multiple resources in 'reg' property
To: barebox@lists.infradead.org

Some devices need multiple resources in the reg property. This patch
adds support for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 55 ++++++++++++++++++++++++++++++++++++++-----------------
 include/of.h      |  1 +
 2 files changed, 39 insertions(+), 17 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index c086f7e..b8c2e89 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -828,7 +828,7 @@ static struct device_d *add_of_platform_device(struct device_node *node)
 
 	dev->id = DEVICE_ID_SINGLE;
 	dev->resource = node->resource;
-	dev->num_resources = 1;
+	dev->num_resources = node->num_resource;
 	dev->device_node = node;
 	node->device = dev;
 
@@ -915,25 +915,44 @@ int of_add_memory(struct device_node *node, bool dump)
 
 static int add_of_device_resource(struct device_node *node)
 {
-	struct property *reg;
-	u64 address, size;
-	struct resource *res;
+	u64 address = 0, size;
+	struct resource *res, *resp;
 	struct device_d *dev;
-	int ret;
+	const __be32 *endp, *reg;
+	int na, nc, n_resources;
+	int ret, len;
 
 	ret = of_add_memory(node, false);
 	if (ret != -ENXIO)
 		return ret;
 
-	reg = of_find_property(node, "reg");
+	reg = of_get_property(node, "reg", &len);
 	if (!reg)
-		return -ENODEV;
-
-	address = of_translate_address(node, reg->value);
-	if (address == OF_BAD_ADDR)
 		return -EINVAL;
 
-	size = be32_to_cpu(((u32 *)reg->value)[1]);
+	of_bus_count_cells(node, &na, &nc);
+
+	n_resources = (len / sizeof(__be32)) / (na + nc);
+
+	res = resp = xzalloc(sizeof(*res) * n_resources);
+
+	endp = reg + (len / sizeof(__be32));
+
+	while ((endp - reg) >= (na + nc)) {
+		address = of_translate_address(node, reg);
+		if (address == OF_BAD_ADDR) {
+			ret =  -EINVAL;
+			goto err_free;
+		}
+
+		reg += na;
+		size = dt_mem_next_cell(nc, &reg);
+
+		resp->start = address;
+		resp->end = address + size - 1;
+		resp->flags = IORESOURCE_MEM;
+		resp++;
+        }
 
 	/*
 	 * A device may already be registered as platform_device.
@@ -948,20 +967,22 @@ static int add_of_device_resource(struct device_node *node)
 			node->device = dev;
 			dev->device_node = node;
 			node->resource = dev->resource;
-			return 0;
+			ret = 0;
+			goto err_free;
 		}
 	}
 
-	res = xzalloc(sizeof(*res));
-	res->start = address;
-	res->end = address + size - 1;
-	res->flags = IORESOURCE_MEM;
-
 	node->resource = res;
+	node->num_resource = n_resources;
 
 	add_of_device(node);
 
 	return 0;
+
+err_free:
+	free(res);
+
+	return ret;
 }
 
 void of_free(struct device_node *node)
diff --git a/include/of.h b/include/of.h
index 852231e..9349e6a 100644
--- a/include/of.h
+++ b/include/of.h
@@ -26,6 +26,7 @@ struct device_node {
 	struct list_head parent_list;
 	struct list_head list;
 	struct resource *resource;
+	int num_resource;
 	struct device_d *device;
 	struct list_head phandles;
 	phandle phandle;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
