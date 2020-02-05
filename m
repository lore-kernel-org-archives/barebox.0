Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKpy-0002xn-Gs
 for barebox@lists.infradead.org; Wed, 05 Feb 2020 13:35:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  5 Feb 2020 14:35:21 +0100
Message-Id: <20200205133521.29951-3-s.hauer@pengutronix.de>
In-Reply-To: <20200205133521.29951-1-s.hauer@pengutronix.de>
References: <20200205133521.29951-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] mtd: nand-imx: make sure the just created BBT is used
To: Barebox List <barebox@lists.infradead.org>
Cc: ukl@pengutronix.de

When we create a new BBT we write it to the flash, but the currently
running barebox doesn't use it yet, only after a reboot the BBT is
actually used. Call nand_default_bbt() to make sure the current barebox
also used the newly created BBT.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index cb5b7ee151..d69a012f01 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1205,6 +1205,10 @@ static int imxnd_create_bbt(struct mtd_info *mtd)
 	if (ret)
 		return ret;
 
+	ret = nand_default_bbt(mtd);
+	if (ret)
+		return ret;
+
 	ret = 0;
 out:
 	free(bbt);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
