Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1smk-0002u0-Pv
 for barebox@lists.infradead.org; Wed, 12 Feb 2020 14:14:40 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 12 Feb 2020 15:14:29 +0100
Message-Id: <20200212141430.8800-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] mci: stm32_sdmmc2: add High-Speed (26 & 52 MHz) support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The SDMMC2 doesn't need any special setup for High-Speed modes, except
for the clock changes. Thus set the cap flags if the max clock would
allow for the higher speed mode.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 695e61d1ccd7..0c26869b0378 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -631,6 +631,11 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
 
 	mci_of_parse(&priv->mci);
 
+	if (mci->f_max >= 26000000)
+		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED;
+	if (mci->f_max >= 52000000)
+		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
+
 	return mci_register(&priv->mci);
 
 priv_free:
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
