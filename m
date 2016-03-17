Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agVna-0000SA-7e
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 11:09:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Mar 2016 12:08:37 +0100
Message-Id: <1458212919-30507-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458212919-30507-1-git-send-email-s.hauer@pengutronix.de>
References: <1458212919-30507-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] mtd: nand-imx: remove/replace debug print
To: Barebox List <barebox@lists.infradead.org>

The relevant informations which command is sent for which page
is already contained in the informations imx_nand_command() prints, so
remove the debug prints in send_cmd and send_addr (which only exist for
v1/v2 controllers, not for v3). Also use dev_dbg to print debug
informations instead of MTD_DEBUG.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 77c0ad8..590d7fe 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -261,8 +261,6 @@ static void send_cmd_v3(struct imx_nand_host *host, uint16_t cmd)
 
 static void send_cmd_v1_v2(struct imx_nand_host *host, u16 cmd)
 {
-	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_cmd(host, 0x%x)\n", cmd);
-
 	writew(cmd, host->regs + NFC_V1_V2_FLASH_CMD);
 	writew(NFC_CMD, host->regs + NFC_V1_V2_CONFIG2);
 
@@ -301,8 +299,6 @@ static void send_addr_v3(struct imx_nand_host *host, uint16_t addr)
 
 static void send_addr_v1_v2(struct imx_nand_host *host, u16 addr)
 {
-	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_addr(host, 0x%x %d)\n", addr, islast);
-
 	writew(addr, host->regs + NFC_V1_V2_FLASH_ADDR);
 	writew(NFC_ADDR, host->regs + NFC_V1_V2_CONFIG2);
 
@@ -891,7 +887,7 @@ static void imx_nand_command(struct mtd_info *mtd, unsigned command,
 	struct nand_chip *nand_chip = mtd->priv;
 	struct imx_nand_host *host = nand_chip->priv;
 
-	MTD_DEBUG(MTD_DEBUG_LEVEL3,
+	dev_dbg(host->dev,
 	      "imx_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\n",
 	      command, column, page_addr);
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
