Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28mC-0000KM-GN
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:42:30 +0000
Received: by mail-pg1-x544.google.com with SMTP id r1-v6so429430pgp.11
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:42:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:41:46 -0700
Message-Id: <20180918054148.8878-7-andrew.smirnov@gmail.com>
In-Reply-To: <20180918054148.8878-1-andrew.smirnov@gmail.com>
References: <20180918054148.8878-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/8] ARM: nxp-imx8mq-evk: Add FEC's PHY configuration code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add appropriate DT node and a fixup routine needed for i.MX8MQ EVK
board.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/nxp-imx8mq-evk/board.c | 24 ++++++++++++++++++++++++
 arch/arm/dts/imx8mq-evk.dts            | 11 +++++++++++
 2 files changed, 35 insertions(+)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
index 3645e5e71..aae6970d8 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
@@ -21,8 +21,30 @@
 #include <init.h>
 #include <asm/memory.h>
 #include <linux/sizes.h>
+#include <linux/phy.h>
 #include <mach/bbu.h>
 
+#include <envfs.h>
+
+#define PHY_ID_AR8031	0x004dd074
+#define AR_PHY_ID_MASK	0xffffffff
+
+static int ar8031_phy_fixup(struct phy_device *phydev)
+{
+	/*
+	 * Enable 1.8V(SEL_1P5_1P8_POS_REG) on
+	 * Phy control debug reg 0
+	 */
+	phy_write(phydev, 0x1d, 0x1f);
+	phy_write(phydev, 0x1e, 0x8);
+
+	/* rgmii tx clock delay enable */
+	phy_write(phydev, 0x1d, 0x05);
+	phy_write(phydev, 0x1e, 0x100);
+
+	return 0;
+}
+
 static int imx8mq_evk_mem_init(void)
 {
 	if (!of_machine_is_compatible("fsl,imx8mq-evk"))
@@ -45,6 +67,8 @@ static int nxp_imx8mq_evk_init(void)
 
 	imx8mq_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0", 0);
 
+	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
+				   ar8031_phy_fixup);
 	return 0;
 }
 device_initcall(nxp_imx8mq_evk_init);
diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
index 3ac13baa1..bdc340a8b 100644
--- a/arch/arm/dts/imx8mq-evk.dts
+++ b/arch/arm/dts/imx8mq-evk.dts
@@ -43,7 +43,18 @@
 	            <&pinctrl_fec1_data_tx>, <&pinctrl_fec1_data_rx>,
 	            <&pinctrl_fec1_phy_reset>;
 	phy-mode = "rgmii-id";
+	phy-handle = <&fec_phy>;
+	phy-reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
 	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fec_phy: ethernet-phy@1 {
+			reg = <1>;
+		};
+	};
 };
 
 &hdmi {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
