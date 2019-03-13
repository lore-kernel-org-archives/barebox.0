Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h41Yt-0006Qb-DE
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 10:56:42 +0000
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 13 Mar 2019 11:56:35 +0100
Message-Id: <20190313105635.22055-6-l.stach@pengutronix.de>
In-Reply-To: <20190313105635.22055-1-l.stach@pengutronix.de>
References: <20190313105635.22055-1-l.stach@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: rdu2: patch DSA config
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

From: Andrey Smirnov <andrew.smirnov@gmail.com>

This patches the DSA switch config in the kernel DT if the unit is
a 12.1" one, which doesn't have the FEC wired up to the switch.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
[andrew.smirnov@gmail.com: Ported the patch to use p/n fixups]
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 46 ++++++++++++++++++++++++--
 1 file changed, 44 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index 1733897a1a40..344a654f23f1 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -38,6 +38,7 @@ enum rdu2_lvds_busformat {
 };
 
 #define RDU2_LRU_FLAG_EGALAX	BIT(0)
+#define RDU2_LRU_FLAG_NO_FEC	BIT(1)
 
 struct rdu2_lru_fixup {
 	struct zii_pn_fixup fixup;
@@ -269,6 +270,44 @@ static int rdu2_fixup_egalax_ts(struct device_node *root, void *context)
 	return 0;
 }
 
+static int rdu2_fixup_dsa(struct device_node *root, void *context)
+{
+	struct device_node *switch_np, *np;
+	phandle i210_handle;
+
+	/*
+	 * The 12.1" unit has no FEC connection, so we need to rewrite
+	 * the i210 port into the CPU port and delete the FEC port,
+	 * which is part of the common setup.
+	 */
+	pr_info("Rewriting i210 switch port into CPU port\n");
+
+	switch_np = of_find_compatible_node(root, NULL, "marvell,mv88e6085");
+	if (!switch_np)
+		return -ENODEV;
+
+	np = of_find_node_by_name(switch_np, "port@2");
+	if (!np)
+		return -ENODEV;
+
+	of_delete_node(np);
+
+	np = of_find_node_by_name(root, "i210@0");
+	if (!np)
+		return -ENODEV;
+
+	i210_handle = of_node_create_phandle(np);
+
+	np = of_find_node_by_name(switch_np, "port@0");
+	if (!np)
+		return -ENODEV;
+
+	of_property_write_u32(np, "ethernet", i210_handle);
+	of_property_write_string(np, "label", "cpu");
+
+	return 0;
+}
+
 static int rdu2_fixup_edp(struct device_node *root)
 {
 	const bool kernel_fixup = root != NULL;
@@ -391,6 +430,9 @@ static void rdu2_lru_fixup(const struct zii_pn_fixup *context)
 
 	if (fixup->flags & RDU2_LRU_FLAG_EGALAX)
 		of_register_fixup(rdu2_fixup_egalax_ts, NULL);
+
+	if (fixup->flags & RDU2_LRU_FLAG_NO_FEC)
+		of_register_fixup(rdu2_fixup_dsa, NULL);
 }
 
 #define RDU2_LRU_FIXUP(__pn, __flags, __panel)		\
@@ -409,8 +451,8 @@ static void rdu2_lru_fixup(const struct zii_pn_fixup *context)
 #define RDU2_PANEL_32P0	IT_DUAL_LVDS,   BF_SPWG,  "auo,p320hvn03"
 
 static const struct rdu2_lru_fixup rdu2_lru_fixups[] = {
-	RDU2_LRU_FIXUP("00-5122-01", 0, RDU2_PANEL_12P1),
-	RDU2_LRU_FIXUP("00-5122-02", 0, RDU2_PANEL_12P1),
+	RDU2_LRU_FIXUP("00-5122-01", RDU2_LRU_FLAG_NO_FEC, RDU2_PANEL_12P1),
+	RDU2_LRU_FIXUP("00-5122-02", RDU2_LRU_FLAG_NO_FEC, RDU2_PANEL_12P1),
 	RDU2_LRU_FIXUP("00-5120-01", 0, RDU2_PANEL_10P1),
 	RDU2_LRU_FIXUP("00-5120-02", 0, RDU2_PANEL_10P1),
 	RDU2_LRU_FIXUP("00-5120-51", 0, RDU2_PANEL_10P1),
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
