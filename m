Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIGPp-0002Ki-7L
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 13:20:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Jul 2015 15:19:38 +0200
Message-Id: <1437657578-17979-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ata: sata-imx: Add delay to prevent link timeout
To: Barebox List <barebox@lists.infradead.org>

On the Utilite board this delay is necessary to prevent a link timeout.
It seems the values written to GPR13 have to settle for some time before
further accesses may be made.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/sata-imx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
index 42a56dc..612762e 100644
--- a/drivers/ata/sata-imx.c
+++ b/drivers/ata/sata-imx.c
@@ -37,6 +37,8 @@ static int imx6_sata_init(struct imx_ahci *imx_ahci)
 	writel(val, base + IOMUXC_GPR13);
 	writel(val | 2, base + IOMUXC_GPR13);
 
+	udelay(100);
+
 	return 0;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
