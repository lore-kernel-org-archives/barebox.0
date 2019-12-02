Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnUq-0004aJ-D1
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:21 +0000
Received: by mail-pj1-x1041.google.com with SMTP id n96so5817759pjc.3
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:20 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:46 -0800
Message-Id: <20191202151954.16032-5-andrew.smirnov@gmail.com>
In-Reply-To: <20191202151954.16032-1-andrew.smirnov@gmail.com>
References: <20191202151954.16032-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/12] mci: imx-esdhc-pbl: Don't setup DMA registers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

PBL code is PIO only, so setting up DMA related registers shouldn't be
necessary.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc-pbl.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 5e3157e6c..2afb55af9 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -139,13 +139,7 @@ esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
 	__udelay(1);
 
 	if (data) {
-		unsigned long dest = (unsigned long)data->dest;
-
-		if (dest > 0xffffffff)
-			return -EINVAL;
-
 		/* Set up for a data transfer if we have one */
-		esdhc_write32(esdhc, SDHCI_DMA_ADDRESS, (u32)dest);
 		esdhc_write32(esdhc, SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | SECTOR_SIZE);
 	}
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
