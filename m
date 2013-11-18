Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViMfb-0007iL-V7
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 11:07:08 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Mon, 18 Nov 2013 12:06:35 +0100
Message-Id: <1384772798-3297-4-git-send-email-p.zabel@pengutronix.de>
In-Reply-To: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
References: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 4/6] ARM i.MX6: sabrelite: usb is probed from device tree
To: barebox@lists.infradead.org
Cc: Philipp Zabel <p.zabel@pengutronix.de>

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c | 5 -----
 arch/arm/dts/imx6q-sabrelite.dts                | 6 ++++++
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index a8fe7c0..3584951 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -107,15 +107,10 @@ fs_initcall(sabrelite_ksz9021rn_setup);
 
 static void sabrelite_ehci_init(void)
 {
-	imx6_usb_phy2_disable_oc();
-	imx6_usb_phy2_enable();
-
 	/* hub reset */
 	gpio_direction_output(204, 0);
 	udelay(2000);
 	gpio_set_value(204, 1);
-
-	add_generic_usb_ehci_device(1, MX6_USBOH3_USB_BASE_ADDR + 0x200, NULL);
 }
 
 static int sabrelite_devices_init(void)
diff --git a/arch/arm/dts/imx6q-sabrelite.dts b/arch/arm/dts/imx6q-sabrelite.dts
index 1368ef1..97372dd 100644
--- a/arch/arm/dts/imx6q-sabrelite.dts
+++ b/arch/arm/dts/imx6q-sabrelite.dts
@@ -117,10 +117,16 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usbotg_1>;
 	disable-over-current;
+	phy-mode = "utmi";
+	barebox,phy_type = "utmi";
+	dr_mode = "host";
 	status = "okay";
 };
 
 &usbh1 {
+	phy-mode = "utmi";
+	barebox,phy_type = "utmi";
+	dr_mode = "host";
 	status = "okay";
 };
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
