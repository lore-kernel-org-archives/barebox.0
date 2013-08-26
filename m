Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqix-0006bm-17
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:55:45 +0200
Message-Id: <1377500163-28962-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/22] mci: omap: Allow to set mmc devname via platformdata
To: barebox@lists.infradead.org

To be able to get persistent names for the sd/mmc devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/omap_hsmmc.h |  1 +
 drivers/mci/omap_hsmmc.c                     | 14 ++++++++++----
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap_hsmmc.h b/arch/arm/mach-omap/include/mach/omap_hsmmc.h
index 2055ccc..19942df 100644
--- a/arch/arm/mach-omap/include/mach/omap_hsmmc.h
+++ b/arch/arm/mach-omap/include/mach/omap_hsmmc.h
@@ -21,5 +21,6 @@
 /** omapmmc platform data structure */
 struct omap_hsmmc_platform_data {
 	unsigned f_max;         /* host interface upper limit */
+	char *devname;		/* The mci device name, optional */
 };
 #endif /* __ASM_OMAP_HSMMC_H */
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index bb976e1..a2cd3fe 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -611,10 +611,16 @@ static int omap_mmc_probe(struct device_d *dev)
 	hsmmc->mci.f_min = 400000;
 
 	pdata = (struct omap_hsmmc_platform_data *)dev->platform_data;
-	if (pdata && pdata->f_max)
-		hsmmc->mci.f_max = pdata->f_max;
-	else
-		hsmmc->mci.f_max = 52000000;
+	if (pdata) {
+		if (pdata->f_max)
+			hsmmc->mci.f_max = pdata->f_max;
+		else
+			hsmmc->mci.f_max = 52000000;
+
+		if (pdata->devname)
+			hsmmc->mci.devname = pdata->devname;
+	}
+
 
 	dev->priv = hsmmc;
 	dev->detect = omap_mmc_detect,
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
