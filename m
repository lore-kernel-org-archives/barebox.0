Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTVqA-00081c-CV
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 12:57:11 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9E0CFA0042B
 for <barebox@lists.infradead.org>; Mon, 15 Sep 2014 14:56:45 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Mon, 15 Sep 2014 14:56:29 +0200
Message-Id: <1410785791-27053-2-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1410785791-27053-1-git-send-email-c.hemp@phytec.de>
References: <1410785791-27053-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 2/4] ARM:phyFLEX-iMX6: Remove eth phy reset form board
To: barebox@lists.infradead.org

Remove ethernet phy reset from board file. The reset is now made by the fec
driver since commit:

	|commit 5c1846b625247f4b99eb429dcd5b0854699a4298
	|Author: Rostislav Lisovy <lisovy@gmail.com>
	|Date:   Wed Nov 20 22:22:25 2013 +0100
	|
	|	ARM: i.mx53: Parse Reset GPIO pin in FEC driver from Devicetree
	|
	|	Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
	|	Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c |   13 -------------
 1 files changed, 0 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index fe3d1b2..131861d 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -32,8 +32,6 @@
 #include <mach/iomux-mx6.h>
 #include <mach/imx6.h>
 
-#define ETH_PHY_RST	IMX_GPIO_NR(3, 23)
-
 #define GPIO_2_11_PD_CTL	MX6_PAD_CTL_PUS_100K_DOWN | MX6_PAD_CTL_PUE | MX6_PAD_CTL_PKE | \
 				MX6_PAD_CTL_SPEED_MED | MX6_PAD_CTL_DSE_40ohm | MX6_PAD_CTL_HYS
 
@@ -65,16 +63,6 @@ static void phyflex_err006282_workaround(void)
 	gpio_direction_input(MX6_PHYFLEX_ERR006282);
 }
 
-static int eth_phy_reset(void)
-{
-	gpio_request(ETH_PHY_RST, "phy reset");
-	gpio_direction_output(ETH_PHY_RST, 0);
-	mdelay(1);
-	gpio_set_value(ETH_PHY_RST, 1);
-
-	return 0;
-}
-
 static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
 {
 	phy_write(dev, 0x0d, device);
@@ -99,7 +87,6 @@ static int phytec_pfla02_init(void)
 
 	phyflex_err006282_workaround();
 
-	eth_phy_reset();
 	phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
 					   ksz9031rn_phy_fixup);
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
