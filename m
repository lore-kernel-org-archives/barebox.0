Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaG7s-0003O7-II
 for barebox@lists.infradead.org; Thu, 28 Nov 2019 09:30:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Nov 2019 10:30:13 +0100
Message-Id: <20191128093013.5504-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: fsl-fman: Disable unused network interfaces
To: Barebox List <barebox@lists.infradead.org>

The Linux dts files have all network interfaces enabled. We have
to disable the ones that are unused.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fsl-fman.c | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 4e6bb2ecfd..153d4f9ed2 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -1333,3 +1333,41 @@ static struct driver_d fman_driver = {
 	.of_compatible = DRV_OF_COMPAT(fsl_fman_dt_ids),
 };
 device_platform_driver(fman_driver);
+
+static int fman_of_fixup(struct device_node *root, void *context)
+{
+	struct device_node *fman, *fman_bb;
+	struct device_node *child, *child_bb;
+
+	fman_bb = of_find_compatible_node(NULL, NULL, "fsl,fman");
+	fman = of_find_compatible_node(root, NULL, "fsl,fman");
+
+	/*
+	 * The dts files in the Linux tree have all network interfaces
+	 * enabled. Disable the ones that are disabled under barebox
+	 * as well.
+	 */
+	for_each_child_of_node(fman, child) {
+		if (!of_device_is_compatible(child, "fsl,fman-memac"))
+			continue;
+
+		child_bb = of_get_child_by_name(fman_bb, child->name);
+		if (!child_bb)
+			continue;
+
+		if (of_device_is_available(child_bb))
+			of_device_enable(child);
+		else
+			of_device_disable(child);
+	}
+
+	return 0;
+}
+
+static int fman_register_of_fixup(void)
+{
+	of_register_fixup(fman_of_fixup, NULL);
+
+	return 0;
+}
+late_initcall(fman_register_of_fixup);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
