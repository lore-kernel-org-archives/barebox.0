Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFSj3-00064u-0q
 for barebox@lists.infradead.org; Wed, 24 Oct 2018 23:38:10 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23994573AbeJXXhznUxt1 (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Thu, 25 Oct 2018 01:37:55 +0200
Date: Thu, 25 Oct 2018 01:37:54 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181024233754.GA17799@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 1/3] mtd: atmel_nand: replace printk with dev_info
To: barebox@lists.infradead.org

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 drivers/mtd/nand/atmel_nand.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 0b9071c9b..4bc944d24 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -1429,14 +1429,14 @@ static int __init atmel_nand_probe(struct device_d *dev)
 		}
 
 		if (gpio_get_value(host->board->det_pin)) {
-			printk("No SmartMedia card inserted.\n");
+			dev_info(dev, "No SmartMedia card inserted.\n");
 			res = -ENXIO;
 			goto err_no_card;
 		}
 	}
 
 	if (host->board->on_flash_bbt) {
-		printk(KERN_INFO "atmel_nand: Use On Flash BBT\n");
+		dev_info(dev, "Use On Flash BBT\n");
 		nand_chip->bbt_options |= NAND_BBT_USE_FLASH;
 	}
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
