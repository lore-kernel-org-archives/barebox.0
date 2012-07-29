Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvOEE-0004ni-L4
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 07:47:54 +0000
Received: by mail-pb0-f49.google.com with SMTP id rq13so8523245pbb.36
 for <barebox@lists.infradead.org>; Sun, 29 Jul 2012 00:47:52 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sun, 29 Jul 2012 17:41:53 +1000
Message-Id: <1343547714-32740-7-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/7] nand: Prevent drivers setting NAND_USE_FLASH_BBT if BBT
 config not enabled.
To: barebox@lists.infradead.org

This prevents drivers from setting the options flags to use the flash
bab block table when the BBT is not enabled in config.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 drivers/mtd/nand/atmel_nand.c   |    2 +-
 drivers/mtd/nand/nand_imx.c     |    2 +-
 drivers/mtd/nand/nand_s3c24xx.c |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 96624a1..cc62df9 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -407,7 +407,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
 		}
 	}
 
-	if (host->board->on_flash_bbt) {
+	if (IS_ENABLED(CONFIG_NAND_BBT) && host->board->on_flash_bbt) {
 		printk(KERN_INFO "atmel_nand: Use On Flash BBT\n");
 		nand_chip->options |= NAND_USE_FLASH_BBT;
 	}
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index e75ffbc..67b056b 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -1142,7 +1142,7 @@ static int __init imxnd_probe(struct device_d *dev)
 		imx_nand_set_layout(0, 16);
 	}
 
-	if (pdata->flash_bbt) {
+	if (IS_ENABLED(CONFIG_NAND_BBT) && pdata->flash_bbt) {
 		this->bbt_td = &bbt_main_descr;
 		this->bbt_md = &bbt_mirror_descr;
 		/* update flash based bbt */
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index c629701..63a3aac 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -469,7 +469,7 @@ static int s3c24x0_nand_probe(struct device_d *dev)
 		chip->ecc.layout = &nand_hw_eccoob;
 	}
 
-	if (pdata->flash_bbt) {
+	if (IS_ENABLED(CONFIG_NAND_BBT) && pdata->flash_bbt) {
 		/* use a flash based bbt */
 		chip->options |= NAND_USE_FLASH_BBT;
 	}
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
