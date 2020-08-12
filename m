Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5mY6-0007VR-RW
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 08:55:55 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 12 Aug 2020 10:55:52 +0200
Message-Id: <20200812085552.12688-1-o.rempel@pengutronix.de>
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
Subject: [PATCH fixup v1] of: base: register DT root as device
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

A usual board file contains at least one of_machine_is_compatible().
Some of the have a rather long list with complicated version logic.

To avoid own implementation for driver management, register the root node
of device tree as platform device. So, the main platform bus can attach
proper board driver. After this patch a typical board.c file can reuse
existing driver infrastructure.

After this patch, you will be able to see all registered board drivers
with drvinfo as fallow:
...
board-embest-riot
board-protonic-imx6
    dt-root.of
...

With devinfo, you'll be able to get some board specific information,
if this is implemented:
barebox@Protonic PRTI6Q board:/ devinfo dt-root.of
Driver: board-protonic-imx6
Bus: platform
Parameters:
  boardid: 0 (type: uint32)
  boardrev: 1 (type: uint32)

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/of/base.c     | 2 ++
 drivers/of/platform.c | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4c633bcd49..6f6cdc9379 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2149,6 +2149,8 @@ int of_probe(void)
 	if (firmware)
 		of_platform_populate(firmware, NULL, NULL);
 
+	of_platform_device_create(root_node, NULL);
+
 	of_clk_init(root_node, NULL);
 	of_platform_populate(root_node, of_default_bus_match_table, NULL);
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ca84cede23..767beebe06 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -50,6 +50,11 @@ static void of_device_make_bus_id(struct device_d *dev)
 	const __be32 *reg;
 	u64 addr;
 
+	if (!node->parent) {
+		dev_set_name(dev, "dt-root.of");
+		return;
+	}
+
 	/* Construct the name, using parent nodes if necessary to ensure uniqueness */
 	while (node->parent) {
 		/*
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
