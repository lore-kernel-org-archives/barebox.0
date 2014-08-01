Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XDCtw-0007YH-2I
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 13:29:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Aug 2014 15:29:14 +0200
Message-Id: <1406899755-8288-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
References: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] mtd: omap gpmc: fix bch8 nand-ecc-opt property
To: barebox@lists.infradead.org

We interpret the ECC option "bch8" as OMAP_ECC_BCH8_CODE_HW, but the
Kernel uses OMAP_ECC_BCH8_CODE_HW_ROMCODE in this case instead. To make
the interpretation of the ti,nand-ecc-opt property compatible to the
Kernel we have to use OMAP_ECC_BCH8_CODE_HW_ROMCODE for "bch8"

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/bus/omap-gpmc.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index ad21af2..d7b02cf 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -382,9 +382,6 @@ static struct dt_eccmode modes[] = {
 		.mode = OMAP_ECC_BCH4_CODE_HW,
 	}, {
 		.name = "bch8",
-		.mode = OMAP_ECC_BCH8_CODE_HW,
-	}, {
-		.name = "bch8-romcode",
 		.mode = OMAP_ECC_BCH8_CODE_HW_ROMCODE,
 	},
 };
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
