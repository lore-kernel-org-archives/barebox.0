Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDU9n-00074l-AU
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 05:13:52 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id C4DD2FF82C7
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 07:14:18 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:58:44 +0200
Message-Id: <1333083528-24289-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330045639.GZ444@game.jcrosoft.org>
References: <20120330045639.GZ444@game.jcrosoft.org>
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
Subject: [PATCH 5/9] atmel_nand: add on_flash_btt option to enable bbt option
To: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/nand/atmel_nand.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 0533759..96624a1 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -407,6 +407,12 @@ static int __init atmel_nand_probe(struct device_d *dev)
 		}
 	}
 
+	if (host->board->on_flash_bbt) {
+		printk(KERN_INFO "atmel_nand: Use On Flash BBT\n");
+		nand_chip->options |= NAND_USE_FLASH_BBT;
+	}
+
+
 	/* first scan to find the device and get the page size */
 	if (nand_scan_ident(mtd, 1)) {
 		res = -ENXIO;
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
