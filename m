Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC3p-0005Pi-7e
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:54:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2010 15:53:50 +0100
Message-Id: <1289400839-5937-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
References: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/13] imx nand: remove unnecessary register write
To: barebox@lists.infradead.org

NFC_SP_EN is cleared in probe and never set again, so we do not
need to clear it in other functions again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c |   13 +------------
 1 files changed, 1 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index b49b7db..4b74974 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -321,16 +321,10 @@ static void send_page(struct imx_nand_host *host,
 static void send_read_id(struct imx_nand_host *host)
 {
 	struct nand_chip *this = &host->nand;
-	u16 tmp;
 
 	/* NANDFC buffer 0 is used for device ID output */
 	writew(0x0, host->regs + NFC_BUF_ADDR);
 
-	/* Read ID into main buffer */
-	tmp = readw(host->regs + NFC_CONFIG1);
-	tmp &= ~NFC_SP_EN;
-	writew(tmp, host->regs + NFC_CONFIG1);
-
 	writew(NFC_ID, host->regs + NFC_CONFIG2);
 
 	/* Wait for operation to complete */
@@ -362,7 +356,7 @@ static u16 get_dev_status(struct imx_nand_host *host)
 {
 	void *main_buf = host->main_area0;
 	u32 store;
-	u16 ret, tmp;
+	u16 ret;
 
 	writew(0x0, host->regs + NFC_BUF_ADDR);
 
@@ -373,11 +367,6 @@ static u16 get_dev_status(struct imx_nand_host *host)
 	 */
 	store = readl(main_buf);
 
-	/* Read status into main buffer */
-	tmp = readw(host->regs + NFC_CONFIG1);
-	tmp &= ~NFC_SP_EN;
-	writew(tmp, host->regs + NFC_CONFIG1);
-
 	writew(NFC_STATUS, host->regs + NFC_CONFIG2);
 
 	/* Wait for operation to complete */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
