Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kl8Cc-0006ux-Ba
 for barebox@lists.infradead.org; Fri, 04 Dec 2020 10:20:39 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  4 Dec 2020 11:20:33 +0100
Message-Id: <20201204102033.16490-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] ARM i.MX6Q: fix network configuration for Protonic PRTI6G
 board
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, david@protonic.nl

By default the iMX6UL is configured to output clock on the ENET1_TX_CLK
pin. Since on the Protonic PRTI6G board the PHY is actual refclock provider, we
should change the clock source to the external clock.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 25 +++++++++++++++++++++++++
 include/mfd/imx6q-iomuxc-gpr.h        | 18 ++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index daae9a527c..a718d54df4 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -11,8 +11,11 @@
 #include <i2c/i2c.h>
 #include <mach/bbu.h>
 #include <mach/imx6.h>
+#include <mfd/imx6q-iomuxc-gpr.h>
+#include <mfd/syscon.h>
 #include <net.h>
 #include <of_device.h>
+#include <regmap.h>
 #include <sys/mount.h>
 #include <sys/stat.h>
 #include <unistd.h>
@@ -577,6 +580,27 @@ static int prt_imx6_init_victgo(struct prt_imx6_priv *priv)
 	return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_NEW);
 }
 
+static int prt_imx6_init_prti6g(struct prt_imx6_priv *priv)
+{
+	struct regmap *gpr;
+
+	gpr = syscon_regmap_lookup_by_compatible("fsl,imx6ul-iomuxc-gpr");
+	if (!IS_ERR(gpr)) {
+		int ret;
+
+		/* Configure FEC1 to use 50MHz clock provided by the PHY */
+		ret = regmap_update_bits(gpr, IOMUXC_GPR1,
+			IMX6UL_GPR1_ENET1_CLK_DIR | IMX6UL_GPR1_ENET1_CLK_SEL,
+			IMX6UL_GPR1_ENET1_CLK_SEL);
+		if (ret)
+			dev_err(priv->dev, "regmap error\n");
+	} else {
+		dev_err(priv->dev, "failed to find fsl,imx6ul-iomux-gpr regmap\n");
+	}
+
+	return 0;
+}
+
 static int prt_imx6_init_kvg_new(struct prt_imx6_priv *priv)
 {
 	return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_NEW);
@@ -923,6 +947,7 @@ static const struct prt_machine_data prt_imx6_cfg_prti6g[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.init = prt_imx6_init_prti6g,
 		.flags = PRT_IMX6_BOOTSRC_EMMC,
 	}, {
 		.hw_id = UINT_MAX
diff --git a/include/mfd/imx6q-iomuxc-gpr.h b/include/mfd/imx6q-iomuxc-gpr.h
index b2c9da6579..2e7aa6dc7a 100644
--- a/include/mfd/imx6q-iomuxc-gpr.h
+++ b/include/mfd/imx6q-iomuxc-gpr.h
@@ -344,4 +344,22 @@
 #define IMX6Q_GPR13_SATA_PHY_1_MED		(0x1 << 0)
 #define IMX6Q_GPR13_SATA_PHY_1_SLOW		(0x2 << 0)
 
+/* For imx6ul iomux gpr register field define */
+/* IMX6UL_GPR1_ENET*_CLK_DIR:
+ * 0 - ENET1_TX_CLK output driver is disabled when configured for ALT1
+ * 1 - ENET1_TX_CLK output driver is enabled when configured for ALT1
+ */
+#define IMX6UL_GPR1_ENET2_CLK_DIR		(0x1 << 18)
+#define IMX6UL_GPR1_ENET1_CLK_DIR		(0x1 << 17)
+
+/* IMX6UL_GPR1_ENET*_CLK_SEL:
+ * 0 - ENET TX reference clock driven by ref_enetpll. This clock is also
+ * output to pins via the IOMUX. ENET_REF_CLK2 function.
+ * 1 - Gets ENET2 TX reference clk from the ENET2_TX_CLK pin. In this use case,
+ * an external OSC provides the clock for both the external PHY and the
+ * internal controller.
+ */
+#define IMX6UL_GPR1_ENET2_CLK_SEL		(0x1 << 14)
+#define IMX6UL_GPR1_ENET1_CLK_SEL		(0x1 << 13)
+
 #endif /* __LINUX_IMX6Q_IOMUXC_GPR_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
