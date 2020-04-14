Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHXG-0007Zp-1I
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 09:07:15 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 14 Apr 2020 11:07:11 +0200
Message-Id: <20200414090711.10504-1-m.tretter@pengutronix.de>
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
Subject: [PATCH] mci: arasan: fix missing select on sdhci-helpers
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

The arasan driver uses the sdhci-helpers as well, but does not select
the sdhci-helpers.

Add the missing select to fix the compilation of the arasan driver.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mci/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 80b3a26002b4..9f56bed3abbc 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -141,6 +141,7 @@ config MCI_TEGRA
 
 config MCI_ARASAN
 	bool "Arasan SDHCI Controller"
+	select MCI_SDHCI
 	help
 	  Enable this to support SD and MMC card read/write on systems with
 	  the Arasan SD3.0 / SDIO3.0 / eMMC4.51 host controller.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
