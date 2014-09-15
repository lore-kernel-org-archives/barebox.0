Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTVqA-00081K-CL
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 12:57:11 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B0319A003F1
 for <barebox@lists.infradead.org>; Mon, 15 Sep 2014 14:56:42 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Mon, 15 Sep 2014 14:56:30 +0200
Message-Id: <1410785791-27053-3-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 3/4] ARM:phyFLEX-iMX6: Remove mmd_write_reg from board
To: barebox@lists.infradead.org

Remove mmd_write_reg function from board file and use phy_write_mmd_indirect.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c |   10 +---------
 1 files changed, 1 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index 131861d..09a5c79 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -63,17 +63,9 @@ static void phyflex_err006282_workaround(void)
 	gpio_direction_input(MX6_PHYFLEX_ERR006282);
 }
 
-static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
-{
-	phy_write(dev, 0x0d, device);
-	phy_write(dev, 0x0e, reg);
-	phy_write(dev, 0x0d, (1 << 14) | device);
-	phy_write(dev, 0x0e, val);
-}
-
 static int ksz9031rn_phy_fixup(struct phy_device *dev)
 {
-	mmd_write_reg(dev, 2, 8, 0x039F);
+	phy_write_mmd_indirect(dev, 8, 2, 0x039F);
 
 	return 0;
 }
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
