Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBcs-0000E3-FD
 for barebox@lists.infradead.org; Mon, 11 May 2020 16:50:00 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1jYBcr-0004op-Bv
 for barebox@lists.infradead.org; Mon, 11 May 2020 18:49:57 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 11 May 2020 18:49:57 +0200
Message-Id: <20200511164957.21930-2-l.stach@pengutronix.de>
In-Reply-To: <20200511164957.21930-1-l.stach@pengutronix.de>
References: <20200511164957.21930-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] mci: stm32_sdmmc2: move command timeout errors to debug
 level
To: barebox@lists.infradead.org

Command timeouts are sometimes a normal operating condition
(for example when probing whether the connected card is SD or MMC),
so we don't want to print an error message for all of them. Move
those messages to the debug level, the MCI core will print some
more meaningful messages on most command errors anyways.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index de96f0974489..3ce3bb0f89d2 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -367,7 +367,7 @@ static int stm32_sdmmc2_end_cmd(struct stm32_sdmmc2_priv *priv,
 
 	/* Check status */
 	if (status & SDMMC_STA_CTIMEOUT) {
-		dev_err(priv->dev, "%s: error SDMMC_STA_CTIMEOUT (0x%x) for cmd %d\n",
+		dev_dbg(priv->dev, "%s: error SDMMC_STA_CTIMEOUT (0x%x) for cmd %d\n",
 			__func__, status, cmd->cmdidx);
 		return -ETIMEDOUT;
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
