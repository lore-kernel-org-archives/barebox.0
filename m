Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4iva-0004sF-4y
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:15:01 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:39 +0100
Message-Id: <20190315091453.22393-1-jbe@pengutronix.de>
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
Subject: [PATCH 01/15] ramoops: probe from device tree if OFTREE is enabled
To: barebox@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

Switch to a device driver probed from device tree if CONFIG_OFTREE is
enabled. Also switch from postcore_initcall to device_initcall, to make
sure that memory banks have been initialized before request_sdram_region
is called.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 fs/pstore/ram.c | 36 ++++++++++++++++++++++++++++++++----
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index fdd92a60a5..fe65959791 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -349,8 +349,9 @@ static int ramoops_init_prz(struct ramoops_context *cxt,
 	return 0;
 }
 
-static int ramoops_probe(struct ramoops_platform_data *pdata)
+static int ramoops_probe(struct device_d *dev)
 {
+	struct ramoops_platform_data *pdata = dummy_data;
 	struct ramoops_context *cxt = &oops_cxt;
 	size_t dump_mem_sz;
 	phys_addr_t paddr;
@@ -498,12 +499,39 @@ static void ramoops_register_dummy(void)
 	 */
 	dummy_data->ecc_info.ecc_size = ramoops_ecc == 1 ? 16 : ramoops_ecc;
 
-	ramoops_probe(dummy_data);
+	if (!IS_ENABLED(CONFIG_OFTREE))
+		ramoops_probe(NULL);
 }
 
+static const struct of_device_id ramoops_dt_ids[] = {
+	{ .compatible = "ramoops" },
+	{ },
+};
+
+static struct driver_d ramoops_driver = {
+	.name = "ramoops",
+	.probe = ramoops_probe,
+	.of_compatible = DRV_OF_COMPAT(ramoops_dt_ids),
+};
+
 static int __init ramoops_init(void)
 {
+	if (IS_ENABLED(CONFIG_OFTREE)) {
+		struct device_node *node;
+
+		node = of_get_root_node();
+		if (!node)
+			return 0;
+
+		node = of_get_child_by_name(node, "reserved-memory");
+		if (!node)
+			return 0;
+
+		for_each_matching_node(node, ramoops_dt_ids)
+			of_platform_device_create(node, NULL);
+	}
+
 	ramoops_register_dummy();
-	return 0;
+	return platform_driver_register(&ramoops_driver);
 }
-postcore_initcall(ramoops_init);
+device_initcall(ramoops_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
