Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4ivg-0004zv-Bi
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:15:06 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:41 +0100
Message-Id: <20190315091453.22393-3-jbe@pengutronix.de>
In-Reply-To: <20190315091453.22393-1-jbe@pengutronix.de>
References: <20190315091453.22393-1-jbe@pengutronix.de>
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
Subject: [PATCH 03/15] ramoops: use DT reserved-memory bindings
To: barebox@lists.infradead.org
Cc: Kees Cook <keescook@chromium.org>

From: Kees Cook <keescook@chromium.org>

Instead of a ramoops-specific node, use a child node of /reserved-memory.
This requires that of_platform_device_create() be explicitly called
for the node, though, since "/reserved-memory" does not have its own
"compatible" property.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
[p.zabel@pengutronix.de: ported to Barebox from Linux commit 529182e204db]
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 fs/pstore/ram.c | 22 +++++++---------------
 1 file changed, 7 insertions(+), 15 deletions(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 98c11e456d..8dc583ea86 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -377,27 +377,19 @@ static int ramoops_parse_dt(struct device_d *dev,
 			    struct ramoops_platform_data *pdata)
 {
 	struct device_node *of_node = dev->device_node;
-	struct device_node *mem_region;
-	struct resource res;
+	struct resource *res;
 	u32 value;
 	int ret;
 
-	mem_region = of_parse_phandle(of_node, "memory-region", 0);
-	if (!mem_region) {
-		dev_err(dev, "no memory-region phandle\n");
-		return -ENODEV;
-	}
-
-	ret = of_address_to_resource(mem_region, 0, &res);
-	if (ret) {
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (!res) {
 		dev_err(dev,
-			"failed to translate memory-region to resource: %d\n",
-			ret);
-		return ret;
+			"failed to locate DT /reserved-memory resource\n");
+		return -EINVAL;
 	}
 
-	pdata->mem_size = resource_size(&res);
-	pdata->mem_address = res.start;
+	pdata->mem_size = resource_size(res);
+	pdata->mem_address = res->start;
 	pdata->mem_type = of_property_read_bool(of_node, "unbuffered");
 	pdata->dump_oops = !of_property_read_bool(of_node, "no-dump-oops");
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
