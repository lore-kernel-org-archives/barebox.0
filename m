Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP1-00088a-B7
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:37:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:14 +0200
Message-Id: <1269855383-22716-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] nand_imx: Speed up sequential read
To: barebox@lists.infradead.org

When reading a page from nand prefetch the next page afterwards to
keep the controller busy. This way we can improve sequential reading
from NAND which is the common case for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nand/nand_imx.c |   60 ++++++++++++++++++++++++++++++++++++----------
 1 files changed, 47 insertions(+), 13 deletions(-)

diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
index da9b2d5..5f92e2f 100644
--- a/drivers/nand/nand_imx.c
+++ b/drivers/nand/nand_imx.c
@@ -295,7 +295,7 @@ static void __nand_boot_init noinline send_addr(struct imx_nand_host *host, u16
  * @param       spare_only    set true if only the spare area is transferred
  */
 static void __nand_boot_init send_page(struct imx_nand_host *host,
-		unsigned int ops)
+		unsigned int ops, int wait)
 {
 	int bufs, i;
 
@@ -311,7 +311,8 @@ static void __nand_boot_init send_page(struct imx_nand_host *host,
 		writew(ops, host->regs + NFC_CONFIG2);
 
 		/* Wait for operation to complete */
-		wait_op_done(host);
+		if (wait)
+			wait_op_done(host);
 	}
 }
 
@@ -671,11 +672,17 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 {
 	struct nand_chip *nand_chip = mtd->priv;
 	struct imx_nand_host *host = nand_chip->priv;
+	static int cached = -1;
 
 	MTD_DEBUG(MTD_DEBUG_LEVEL3,
 	      "imx_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\n",
 	      command, column, page_addr);
 
+	if (cached != -1)
+		wait_op_done(host);
+	if (command != NAND_CMD_READ0)
+		cached = -1;
+
 	/*
 	 * Reset command state information
 	 */
@@ -702,17 +709,44 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 
 		command = NAND_CMD_READ0;
 
-		send_cmd(host, command);
-		mxc_do_addr_cycle(mtd, column, page_addr);
+		if (cached == page_addr) {
+			memcpy32(host->data_buf, host->main_area0, mtd->writesize);
+			copy_spare(mtd, 1);
 
-		if (host->pagesize_2k)
-			/* send read confirm command */
-			send_cmd(host, NAND_CMD_READSTART);
+			send_cmd(host, command);
+			mxc_do_addr_cycle(mtd, column, page_addr + 1);
+
+			if (host->pagesize_2k)
+				/* send read confirm command */
+				send_cmd(host, NAND_CMD_READSTART);
+
+			send_page(host, NFC_OUTPUT, 0);
 
-		send_page(host, NFC_OUTPUT);
+			cached = page_addr + 1;
+		} else {
+			host->buf_start = column;
+			send_cmd(host, command);
+			mxc_do_addr_cycle(mtd, column, page_addr);
+
+			if (host->pagesize_2k)
+				/* send read confirm command */
+				send_cmd(host, NAND_CMD_READSTART);
+
+			send_page(host, NFC_OUTPUT, 1);
+			memcpy32(host->data_buf, host->main_area0, mtd->writesize);
+			copy_spare(mtd, 1);
+
+			send_cmd(host, command);
+			mxc_do_addr_cycle(mtd, column, page_addr + 1);
+
+			if (host->pagesize_2k)
+				/* send read confirm command */
+				send_cmd(host, NAND_CMD_READSTART);
+
+			send_page(host, NFC_OUTPUT, 0);
+			cached = page_addr + 1;
+		}
 
-		memcpy32(host->data_buf, host->main_area0, mtd->writesize);
-		copy_spare(mtd, 1);
 		break;
 
 	case NAND_CMD_SEQIN:
@@ -749,7 +783,7 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 	case NAND_CMD_PAGEPROG:
 		memcpy32(host->main_area0, host->data_buf, mtd->writesize);
 		copy_spare(mtd, 0);
-		send_page(host, NFC_INPUT);
+		send_page(host, NFC_INPUT, 1);
 		send_cmd(host, command);
 		mxc_do_addr_cycle(mtd, column, page_addr);
 		break;
@@ -850,7 +884,7 @@ static int __init imxnd_probe(struct device_d *dev)
 #endif
 	/* Allocate memory for MTD device structure and private data */
 	host = kzalloc(sizeof(struct imx_nand_host) + NAND_MAX_PAGESIZE +
-			NAND_MAX_OOBSIZE, GFP_KERNEL);
+			NAND_MAX_OOBSIZE * 2, GFP_KERNEL);
 	if (!host)
 		return -ENOMEM;
 
@@ -1137,7 +1171,7 @@ void __nand_boot_init imx_nand_load_image(void *dest, int size)
 					page * pagesize);
 			if (host.pagesize_2k)
 				send_cmd(&host, NAND_CMD_READSTART);
-			send_page(&host, NFC_OUTPUT);
+			send_page(&host, NFC_OUTPUT, 1);
 			page++;
 
 			if (host.pagesize_2k) {
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
