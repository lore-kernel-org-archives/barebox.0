Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCk7-0003nA-Mr
 for barebox@lists.infradead.org; Mon, 28 Oct 2019 21:40:05 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 28 Oct 2019 22:39:38 +0100
Message-Id: <20191028213943.32071-2-ahmad@a3f.at>
In-Reply-To: <20191028213943.32071-1-ahmad@a3f.at>
References: <20191028213943.32071-1-ahmad@a3f.at>
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
Subject: [PATCH v2 1/6] mci: stm32_sdmmc2: parse generic MCI oftree properties
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

mci_of_parse takes care of the generic oftree bits, like removable flag,
aliases and max-frequency. Insert it, so we can start to refer to the
controller's block devices by a fixed name.

Sticking in the mci_of_parse shows that the SD/MMC2 driver in barebox
doesn't play nicely with the device tree specification of the SD/MMC2
for the dk2 board, however:

Specifying the bus-width = <4> property in the device tree now made mmc
usage fail when reading the environment:

  ERROR: error SDMMC_STA_DCRCFAIL (0x81042) for cmd 18
  ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12
  WARNING: stm32_sdmmc2_send_cmd: cmd 12 failed, retrying ...
  ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12
  WARNING: stm32_sdmmc2_send_cmd: cmd 12 failed, retrying ...
  ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12
  WARNING: stm32_sdmmc2_send_cmd: cmd 12 failed, retrying ...
  ERROR: stm32_sdmmc2_end_cmd: error SDMMC_STA_CTIMEOUT (0x4) for cmd 12

We'll want to fix this eventually, but for now force the bus width to 1.
So we don't forget about this, print a notice to the console that we've
done so.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 7346c8a3f5d6..1a41c34d24e2 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -632,6 +632,13 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
 	mci->f_max = 208000000;
 	mci->voltages = MMC_VDD_32_33 | MMC_VDD_33_34 | MMC_VDD_165_195;
 
+	mci_of_parse(&priv->mci);
+
+	if (mci->host_caps & (MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)) {
+		dev_notice(dev, "Fixing bus-width to 1 due to driver limitation\n");
+		mci->host_caps &= ~(MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA);
+	}
+
 	return mci_register(&priv->mci);
 
 priv_free:
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
