Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvKK6-0005Oe-OI
 for barebox@lists.infradead.org; Tue, 14 Jul 2020 12:46:15 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 14 Jul 2020 14:46:10 +0200
Message-Id: <20200714124610.12655-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] drivers: of: register DT root as device
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, david@protonic.nl

A usual board file contains at least one of_machine_is_compatible().
Some of the have a rather ling list with complicated version logic.

To avoid own implementation for driver management, register the root node
of devicetree as platform device. So, the main platform bus can attach
proper board driver. After this patch a typical board.c file can reuse
existing driver infrastructure.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/of/platform.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ca84cede23..ab4329314e 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -348,6 +348,7 @@ int of_platform_populate(struct device_node *root,
 			struct device_d *parent)
 {
 	struct device_node *child;
+	struct device_d *dev;
 	int rc = 0;
 
 	if (!root)
@@ -355,6 +356,10 @@ int of_platform_populate(struct device_node *root,
 	if (!root)
 		return -EINVAL;
 
+	dev = of_platform_device_create(root, NULL);
+	if (dev)
+		dev_set_name(dev, "%s.of", "machine");
+
 	for_each_child_of_node(root, child) {
 		rc = of_platform_bus_create(child, matches, parent);
 		if (rc)
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
