Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5V1-0007E8-Oe
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:20:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:19:36 +0200
Message-Id: <1400674777-7626-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] net: fec_imx: mask mii register reads correctly
To: barebox@lists.infradead.org

mii registers are 16bit wide, so mask out the higher bits.
The higher bits confuse mii-tool.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 72e689d..714f8f2 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -89,7 +89,7 @@ static int fec_miibus_read(struct mii_bus *bus, int phyAddr, int regAddr)
 	/*
 	 * it's now safe to read the PHY's register
 	 */
-	return readl(fec->regs + FEC_MII_DATA);
+	return readl(fec->regs + FEC_MII_DATA) & 0xffff;
 }
 
 static int fec_miibus_write(struct mii_bus *bus, int phyAddr,
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
