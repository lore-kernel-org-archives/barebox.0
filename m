Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXUNA-0003lg-KG
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:58:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 09:57:57 +0100
Message-Id: <1323075477-28567-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323075477-28567-1-git-send-email-s.hauer@pengutronix.de>
References: <1323075477-28567-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] mci imx-esdhc: do not overwrite probed host caps
To: barebox@lists.infradead.org

The caps are read from the hardware but overwritten afterwards.
Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 94b2738..d19b6da 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -485,7 +485,6 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host->mci.send_cmd = esdhc_send_cmd;
 	host->mci.set_ios = esdhc_set_ios;
 	host->mci.init = esdhc_init;
-	host->mci.host_caps = MMC_MODE_4BIT;
 	host->mci.hw_dev = dev;
 
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
