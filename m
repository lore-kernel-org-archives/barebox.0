Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dFR4D-0008Dj-PW
 for barebox@lists.infradead.org; Mon, 29 May 2017 20:15:07 +0000
Received: from tellur.fritz.box (a89-183-58-206.net-htp.de [89.183.58.206])
 by lynxeye.de (Postfix) with ESMTPA id 3FA68E74222
 for <barebox@lists.infradead.org>; Mon, 29 May 2017 22:02:46 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 29 May 2017 22:02:42 +0200
Message-Id: <20170529200242.17934-2-dev@lynxeye.de>
In-Reply-To: <20170529200242.17934-1-dev@lynxeye.de>
References: <20170529200242.17934-1-dev@lynxeye.de>
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
Subject: [PATCH 2/2] ARM: imx6: gw54xx: fixup watchdog nodes on pre rev E
 boards
To: barebox@lists.infradead.org

Older boards before revision E don't have the external watchdog signal
wired up to the PMIC, so they must use watchdog 1, which is able to
reset the SoC internally.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/gateworks-ventana/board.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boards/gateworks-ventana/board.c b/arch/arm/boards/gateworks-ventana/board.c
index 82dba7c..3ff142e 100644
--- a/arch/arm/boards/gateworks-ventana/board.c
+++ b/arch/arm/boards/gateworks-ventana/board.c
@@ -24,6 +24,19 @@
 
 #include "gsc.h"
 
+static int gw54xx_wdog_of_fixup(struct device_node *root, void *context)
+{
+	struct device_node *np;
+
+	/* switch to the watchdog with internal reset capabilities */
+	np = of_find_node_by_name(root, "wdog@020c0000");
+	of_device_disable(np);
+	np = of_find_node_by_name(root, "wdog@020bc000");
+	of_device_enable(np);
+
+	return 0;
+}
+
 static int gw54xx_devices_init(void)
 {
 	struct i2c_client client;
@@ -60,6 +73,10 @@ static int gw54xx_devices_init(void)
 		of_eth_register_ethaddr(dnode, mac);
 	}
 
+	/* boards before rev E don't have the external watchdog signal */
+	if (gsc_get_rev(&client) < 'E')
+		of_register_fixup(gw54xx_wdog_of_fixup, NULL);
+
 	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
 
 	barebox_set_hostname("gw54xx");
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
