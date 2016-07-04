Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK0Ac-00061C-FQ
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 09:28:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Jul 2016 11:27:34 +0200
Message-Id: <1467624459-16448-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
References: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] ARM: i.MX53 Vincell: Reset phy consistently from device
 tree
To: Barebox List <barebox@lists.infradead.org>

The phy reset for the Vincell board is done from device tree whereas
the Vincell-LT resets the phy from board init code. Since both boards
share the same code base the regular Vincell board ends up with a
duplicated phy reset, with the second reset being done after the
FEC has been initialized.
Fix this by removing the phy reset from the board code and adding the
phy reset to the Vincell-LT dts file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-vincell/board.c   | 11 -----------
 arch/arm/dts/imx53-guf-vincell-lt.dts |  1 +
 2 files changed, 1 insertion(+), 11 deletions(-)

diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index 43c1952..ee5be10 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -29,15 +29,6 @@
 #include <mach/bbu.h>
 #include <mach/imx5.h>
 
-#define LOCO_FEC_PHY_RST		IMX_GPIO_NR(7, 6)
-
-static void vincell_fec_reset(void)
-{
-	gpio_direction_output(LOCO_FEC_PHY_RST, 0);
-	mdelay(1);
-	gpio_set_value(LOCO_FEC_PHY_RST, 1);
-}
-
 static int vincell_devices_init(void)
 {
 	if (!of_machine_is_compatible("guf,imx53-vincell") &&
@@ -49,8 +40,6 @@ static int vincell_devices_init(void)
 	clk_set_rate(clk_lookup("emi_slow_podf"), 133333334);
 	clk_set_rate(clk_lookup("nfc_podf"), 33333334);
 
-	vincell_fec_reset();
-
 	imx53_bbu_internal_nand_register_handler("nand",
 		BBU_HANDLER_FLAG_DEFAULT, SZ_512K);
 
diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
index bcc378d..67a4133 100644
--- a/arch/arm/dts/imx53-guf-vincell-lt.dts
+++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
@@ -136,6 +136,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_fec>;
 	phy-mode = "rmii";
+	phy-reset-gpios = <&gpio7 6 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 };
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
