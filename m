Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zujpy-00034p-B7
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 16:26:07 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1Zujpb-0000Eo-KI
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 17:25:39 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  6 Nov 2015 17:25:38 +0100
Message-Id: <1446827139-339-6-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
References: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 6/7] ARM: microsom: make ETH work on production modules
To: barebox@lists.infradead.org

The pre-production modules had an external crystal to generate the PHY
reference clock. Production modules rely on the i.MX6 to output the
correct clock.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/solidrun-microsom/board.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/solidrun-microsom/board.c b/arch/arm/boards/solidrun-microsom/board.c
index 280653f5b8d1..28a60b9e8c79 100644
--- a/arch/arm/boards/solidrun-microsom/board.c
+++ b/arch/arm/boards/solidrun-microsom/board.c
@@ -25,6 +25,7 @@
 #include <mach/imx6-regs.h>
 #include <mach/imx6.h>
 #include <mfd/imx6q-iomuxc-gpr.h>
+#include <linux/clk.h>
 #include <linux/sizes.h>
 #include <linux/phy.h>
 
@@ -61,13 +62,26 @@ static int ar8035_phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
+static void microsom_eth_init(void)
+{
+	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
+	u32 val;
+
+	clk_set_rate(clk_lookup("enet_ref"), 25000000);
+
+	val = readl(iomux + IOMUXC_GPR1);
+	val |= IMX6Q_GPR1_ENET_CLK_SEL_ANATOP;
+	writel(val, iomux + IOMUXC_GPR1);
+
+	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
+}
 static int hummingboard_device_init(void)
 {
 	if (!of_machine_is_compatible("solidrun,hummingboard/dl") &&
 	    !of_machine_is_compatible("solidrun,hummingboard/q"))
 		return 0;
 
-	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
+	microsom_eth_init();
 
 	/* enable USB VBUS */
 	gpio_direction_output(IMX_GPIO_NR(3, 22), 1);
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
