Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7aMl-0004I3-1m
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 08:19:46 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 17 Aug 2020 10:19:23 +0200
Message-Id: <20200817081929.2329-2-o.rempel@pengutronix.de>
In-Reply-To: <20200817081929.2329-1-o.rempel@pengutronix.de>
References: <20200817081929.2329-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v4 1/7] of: base: register DT root as device
To: barebox@lists.infradead.org, david@protonic.nl
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
    machine.of
...

With devinfo, you'll be able to get some board specific information,
if this is implemented:
barebox@Protonic PRTI6Q board:/ devinfo machine.of
Driver: board-protonic-imx6
Bus: platform
Parameters:
  boardid: 0 (type: uint32)
  boardrev: 1 (type: uint32)

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/of/base.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 2fc87528eb..9e49158e61 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2136,6 +2136,21 @@ static int of_probe_memory(void)
 }
 mem_initcall(of_probe_memory);
 
+static void of_platform_device_create_root(struct device_node *np)
+{
+	struct device_d *dev;
+	int ret;
+
+	dev = xzalloc(sizeof(*dev));
+	dev->id = DEVICE_ID_SINGLE;
+	dev->device_node = np;
+	dev_set_name(dev, "machine.of");
+
+	ret = platform_device_register(dev);
+	if (ret)
+		free(dev);
+}
+
 int of_probe(void)
 {
 	struct device_node *firmware;
@@ -2153,6 +2168,8 @@ int of_probe(void)
 	if (firmware)
 		of_platform_populate(firmware, NULL, NULL);
 
+	of_platform_device_create_root(root_node);
+
 	of_clk_init(root_node, NULL);
 	of_platform_populate(root_node, of_default_bus_match_table, NULL);
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
