Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RjTH1-0004VA-49
 for barebox@lists.infradead.org; Sat, 07 Jan 2012 10:13:15 +0000
Received: from mail412.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 8BB0EFFB904
 for <barebox@lists.infradead.org>; Sat,  7 Jan 2012 11:04:48 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  7 Jan 2012 10:57:08 +0100
Message-Id: <1325930228-10935-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [RESEND PATCH] atmel_nand: add on_flash_btt option to enable bbt
 option
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/nand/atmel_nand.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
index 3213de2..3e00226 100644
--- a/drivers/mtd/nand/atmel_nand.c
+++ b/drivers/mtd/nand/atmel_nand.c
@@ -406,6 +406,12 @@ static int __init atmel_nand_probe(struct device_d *dev)
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
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
