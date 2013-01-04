Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tr9tX-0007Tz-5z
 for barebox@lists.infradead.org; Fri, 04 Jan 2013 16:13:21 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Fri, 4 Jan 2013 17:13:12 +0100
Message-Id: <1357315992-18896-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] ARM omap hsmmc: Fix adding iobase for OMAP3
To: barebox@lists.infradead.org

Only the OMAP4 hsmmc module has an offset of 0x100 from its register
base address. With commit 416a991 the offset was added for all SOCs
which use the omap_hsmmc driver.
This has broken the driver for OMAP3/AM33xx platforms.

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 drivers/mci/omap_hsmmc.c |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 6471ea6..68fb3e1 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -577,8 +577,12 @@ static int omap_mmc_probe(struct device_d *dev)
 	hsmmc->mci.hw_dev = dev;
 
 	hsmmc->iobase = dev_request_mem_region(dev, 0);
-	hsmmc->base = hsmmc->iobase + 0x100;
 
+#if defined(CONFIG_ARCH_OMAP4)
+	hsmmc->base = hsmmc->iobase + 0x100;
+#else
+	hsmmc->base = hsmmc->iobase;
+#endif
 	hsmmc->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
 	hsmmc->mci.f_min = 400000;
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
