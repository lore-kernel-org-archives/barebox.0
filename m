Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI9W8-00043L-AR
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 11:53:01 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Tue, 15 Sep 2020 13:52:47 +0200
Message-Id: <20200915115247.30015-1-rhi@pengutronix.de>
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
Subject: [PATCH] mci: bcm2835: depend on sdhci
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

The driver uses functions defined in sdhci.o, and will fail to build
otherwise:

    drivers/mci/mci-bcm2835.o: in function `bcm2835_mci_request':
    drivers/mci/mci-bcm2835.c:134: undefined reference to `sdhci_set_cmd_xfer_mode'
    arm-v5te-linux-gnueabi-ld: drivers/mci/mci-bcm2835.c:169: undefined reference to `sdhci_read_response'
    arm-v5te-linux-gnueabi-ld: drivers/mci/mci-bcm2835.c:175: undefined reference to `sdhci_transfer_data'

Fixes: f8dffc9338dc2c7ae830 (2019-11-19, "mci: bcm2835: Use sdhci_set_cmd_xfer_mode()")
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 drivers/mci/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index f7dc5c508912..09c056928627 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -69,6 +69,7 @@ config MCI_S3C
 config MCI_BCM283X
 	bool "MCI support for BCM283X"
 	depends on ARCH_BCM283X || COMPILE_TEST
+	select MCI_SDHCI
 
 config MCI_BCM283X_SDHOST
 	bool "BCM283X sdhost"
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
