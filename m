Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9CfZ-00006A-Nt
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 09:44:58 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 18 Mar 2012 13:50:44 +0400
Message-Id: <1332064244-5566-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] Remove duplicate voltage setup for imx-esdhc
To: barebox@lists.infradead.org

We are already setup voltages from capabilities register.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mci/imx-esdhc.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index c6f2d5c..6d0883c 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -548,8 +548,6 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host->mci.init = esdhc_init;
 	host->mci.hw_dev = dev;
 
-	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
-
 	host->mci.f_min = imx_get_mmcclk() >> 12;
 	if (host->mci.f_min < 200000)
 		host->mci.f_min = 200000;
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
