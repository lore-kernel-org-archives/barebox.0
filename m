Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnHzl-0006no-02
 for barebox@lists.infradead.org; Mon, 22 Jun 2020 08:40:55 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jun 2020 10:39:43 +0200
Message-Id: <20200622083943.21737-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200622083943.21737-1-a.fatoum@pengutronix.de>
References: <20200622083943.21737-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] mci: sdhci: atmel: avoid buggy SDHCI_RESET_ALL
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

On the sama5d27, currently only the MCI used for boot is operational.
The other one errors out when failing to reset the card.

Changing the RESET_ALL to RESET_CMD | RESET_DATA fixes this.
This might be due to the SoC's "11.1   Software 'Reset For all'
command may not execute properly" erratum[1]:
> The software 'Reset For All' command may not execute properly, and, as
> a result, some registers of the host controller may not reset properly.
> The setting of the different registers must be checked beforere
> initializing the SD card.

[1]: DS80000827A

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/atmel-sdhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/atmel-sdhci.c b/drivers/mci/atmel-sdhci.c
index 70d3cd4091ff..59cd002aae9e 100644
--- a/drivers/mci/atmel-sdhci.c
+++ b/drivers/mci/atmel-sdhci.c
@@ -48,7 +48,7 @@ static int at91_sdhci_mci_init(struct mci_host *mci, struct device_d *dev)
 
 	priv->host.dev = dev;
 
-	ret = sdhci_reset(sdhci, SDHCI_RESET_ALL);
+	ret = sdhci_reset(sdhci, SDHCI_RESET_CMD | SDHCI_RESET_DATA);
 	if (ret)
 		return ret;
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
