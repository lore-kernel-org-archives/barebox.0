Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjkJx-0004Io-Jf
 for barebox@lists.infradead.org; Mon, 12 May 2014 07:06:46 +0000
Received: from tellur.localdomain (p4FE65757.dip0.t-ipconnect.de
 [79.230.87.87]) by lynxeye.de (Postfix) with ESMTPA id 1432418B427A
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 09:04:59 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 12 May 2014 09:07:55 +0200
Message-Id: <1399878486-16086-15-git-send-email-dev@lynxeye.de>
In-Reply-To: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
References: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 14/25] mci: tegra: don't set 8bit mode unconditionally
To: barebox@lists.infradead.org

Those flags should be set from the DT parsing code.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/mci/tegra-sdmmc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 6345157..62cf730 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -470,8 +470,7 @@ static int tegra_sdmmc_probe(struct device_d *dev)
 	mci->set_ios = tegra_sdmmc_set_ios;
 	mci->send_cmd = tegra_sdmmc_send_cmd;
 	mci->voltages = MMC_VDD_32_33 | MMC_VDD_33_34 | MMC_VDD_165_195;
-	mci->host_caps |= MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA |
-	                  MMC_CAP_MMC_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED_52MHZ |
+	mci->host_caps |= MMC_CAP_MMC_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED_52MHZ |
 	                  MMC_CAP_SD_HIGHSPEED;
 
 	dev->priv = host;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
