Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFeOK-0000J9-Av
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 13:10:05 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed,  2 Oct 2019 15:09:59 +0200
Message-Id: <20191002130959.2856-1-m.felsch@pengutronix.de>
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
Subject: [PATCH v2] ARM: i.MX: phytec-som-imx6: phycore: fix updating pmic
 regulators
To: barebox@lists.infradead.org, s.christ@phytec.de, j.remmet@phytec.de, s.riedmueller@phytec.de, c.hemp@phytec.de
Cc: mfe@pengutronix.de

Currently the fixup code assumes that only one i2c bus is active. If we
reuse the board code for other boards this isn't always true. Fix that
by using of_find_i2c_adapter_by_node() to address both cases.

Fixes: b6bebb7aca ("ARM: i.MX: phytec-som-imx6: phycore: Set BUCK mode to SYNC")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:

v2:
- Make use of of_find_i2c_adapter_by_node() to get the right adapter.
---
 arch/arm/boards/phytec-som-imx6/board.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 730115702b..27a1ad4f66 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -115,12 +115,16 @@ static int ksz8081_phy_fixup(struct phy_device *phydev)
 static int phycore_da9062_setup_buck_mode(void)
 {
 	struct i2c_adapter *adapter = NULL;
+	struct device_node *pmic_np = NULL;
 	struct i2c_client client;
 	unsigned char value;
-	int bus = 0;
 	int ret;
 
-	adapter = i2c_get_adapter(bus);
+	pmic_np = of_find_node_by_name(NULL, "pmic@58");
+	if (!pmic_np)
+		return -ENODEV;
+
+	adapter = of_find_i2c_adapter_by_node(pmic_np->parent);
 	if (!adapter)
 		return -ENODEV;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
