Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uag3M-00007E-Dw
 for barebox@lists.infradead.org; Fri, 10 May 2013 05:39:37 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 10 May 2013 09:39:09 +0400
Message-Id: <1368164349-24479-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1368164349-24479-1-git-send-email-shc_work@mail.ru>
References: <1368164349-24479-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] MCI: Sort Makefile entries
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mci/Makefile | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 0fc31af..88e9665 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -1,9 +1,9 @@
-obj-$(CONFIG_MCI)	+= mci-core.o
-obj-$(CONFIG_MCI_MXS) += mxs.o
-obj-$(CONFIG_MCI_S3C) += s3c.o
-obj-$(CONFIG_MCI_IMX) += imx.o
-obj-$(CONFIG_MCI_IMX_ESDHC) += imx-esdhc.o
-obj-$(CONFIG_MCI_OMAP_HSMMC) += omap_hsmmc.o
-obj-$(CONFIG_MCI_PXA) += pxamci.o
-obj-$(CONFIG_MCI_ATMEL) += atmel_mci.o
-obj-$(CONFIG_MCI_SPI) += mci_spi.o
+obj-$(CONFIG_MCI)		+= mci-core.o
+obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o
+obj-$(CONFIG_MCI_IMX)		+= imx.o
+obj-$(CONFIG_MCI_IMX_ESDHC)	+= imx-esdhc.o
+obj-$(CONFIG_MCI_MXS)		+= mxs.o
+obj-$(CONFIG_MCI_OMAP_HSMMC)	+= omap_hsmmc.o
+obj-$(CONFIG_MCI_PXA)		+= pxamci.o
+obj-$(CONFIG_MCI_S3C)		+= s3c.o
+obj-$(CONFIG_MCI_SPI)		+= mci_spi.o
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
