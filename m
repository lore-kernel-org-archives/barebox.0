Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1CrQ-0003X4-Cs
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 09:56:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 11:56:20 +0200
Message-Id: <1374486983-5263-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374486983-5263-1-git-send-email-s.hauer@pengutronix.de>
References: <1374486983-5263-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] mtd: nand: omap: do not set write callback if mtd write
 is disabled
To: barebox@lists.infradead.org

Saves a few bytes of binary space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index d448251..8168193 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -1049,7 +1049,8 @@ static int gpmc_nand_probe(struct device_d *pdev)
 	}
 
 	nand->read_buf   = omap_read_buf_pref;
-	nand->write_buf  = omap_write_buf_pref;
+	if (IS_ENABLED(CONFIG_MTD_WRITE))
+		nand->write_buf  = omap_write_buf_pref;
 
 	nand->options |= NAND_SKIP_BBTSCAN;
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
