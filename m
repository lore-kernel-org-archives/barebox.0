Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDFc-00008F-8i
 for barebox@lists.infradead.org; Thu, 30 Jan 2020 17:05:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 30 Jan 2020 18:04:46 +0100
Message-Id: <20200130170449.9761-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200130170449.9761-1-a.fatoum@pengutronix.de>
References: <20200130170449.9761-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/5] mci: stm32_sdmmc2: don't reset before retrying failed
 operations
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The original U-Boot code doesn't do this and it wipes the configured
settings like clock rate, ensuring that we won't ever recover from the
error. Drop it.

Fixes: ce99d0c86b32ec ("mci: add support for stm32mp sd/mmc controller")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index eba079f1799b..7f22a90668e4 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -534,8 +534,6 @@ retry_cmd:
 		dev_warn(priv->dev, "%s: cmd %d failed, retrying ...\n",
 			 __func__, cmd->cmdidx);
 
-		stm32_sdmmc2_pwrcycle(priv);
-		stm32_sdmmc2_pwron(priv);
 		retry--;
 
 		goto retry_cmd;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
