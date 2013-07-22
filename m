Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1GlA-0003gy-1f
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 14:06:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 16:06:20 +0200
Message-Id: <1374501981-27403-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374501981-27403-1-git-send-email-s.hauer@pengutronix.de>
References: <1374501981-27403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: i.MX6 sabre: register MAC address from dt
To: barebox@lists.infradead.org

Use DT description to register the fec MAC address.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c | 23 -----------------------
 arch/arm/boards/freescale-mx6-sabresd/board.c   | 22 ----------------------
 arch/arm/dts/imx6q-sabrelite.dts                |  4 ++++
 arch/arm/dts/imx6qdl-sabresd.dtsi               |  4 ++++
 4 files changed, 8 insertions(+), 45 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index ff27b05..39f465b 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -106,26 +106,6 @@ static int sabrelite_ksz9021rn_setup(void)
  */
 fs_initcall(sabrelite_ksz9021rn_setup);
 
-static inline int imx6_iim_register_fec_ethaddr(void)
-{
-	u32 value;
-	u8 buf[6];
-
-	value = readl(MX6_OCOTP_BASE_ADDR + 0x630);
-	buf[0] = (value >> 8);
-	buf[1] = value;
-
-	value = readl(MX6_OCOTP_BASE_ADDR + 0x620);
-	buf[2] = value >> 24;
-	buf[3] = value >> 16;
-	buf[4] = value >> 8;
-	buf[5] = value;
-
-	eth_register_ethaddr(0, buf);
-
-	return 0;
-}
-
 static void sabrelite_ehci_init(void)
 {
 	imx6_usb_phy2_disable_oc();
@@ -157,9 +137,6 @@ static int sabrelite_coredevices_init(void)
 {
 	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
 					   ksz9021rn_phy_fixup);
-
-	imx6_iim_register_fec_ethaddr();
-
 	return 0;
 }
 coredevice_initcall(sabrelite_coredevices_init);
diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index 033a253..422c0d9 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -80,26 +80,6 @@ static void sabresd_phy_reset(void)
 	gpio_set_value(IMX_GPIO_NR(1, 25), 1);
 }
 
-static inline int imx6_iim_register_fec_ethaddr(void)
-{
-	u32 value;
-	u8 buf[6];
-
-	value = readl(MX6_OCOTP_BASE_ADDR + 0x630);
-	buf[0] = (value >> 8);
-	buf[1] = value;
-
-	value = readl(MX6_OCOTP_BASE_ADDR + 0x620);
-	buf[2] = value >> 24;
-	buf[3] = value >> 16;
-	buf[4] = value >> 8;
-	buf[5] = value;
-
-	eth_register_ethaddr(0, buf);
-
-	return 0;
-}
-
 static int sabresd_devices_init(void)
 {
 	armlinux_set_bootparams((void *)0x10000100);
@@ -118,8 +98,6 @@ static int sabresd_coredevices_init(void)
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
 			ar8031_phy_fixup);
 
-	imx6_iim_register_fec_ethaddr();
-
 	return 0;
 }
 /*
diff --git a/arch/arm/dts/imx6q-sabrelite.dts b/arch/arm/dts/imx6q-sabrelite.dts
index 483a39d..e1e967d 100644
--- a/arch/arm/dts/imx6q-sabrelite.dts
+++ b/arch/arm/dts/imx6q-sabrelite.dts
@@ -108,6 +108,10 @@
 	};
 };
 
+&ocotp1 {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
 &usbotg {
 	vbus-supply = <&reg_usb_otg_vbus>;
 	pinctrl-names = "default";
diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
index e21f6a8..0d32278 100644
--- a/arch/arm/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -52,6 +52,10 @@
 	status = "okay";
 };
 
+&ocotp1 {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1_1>;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
