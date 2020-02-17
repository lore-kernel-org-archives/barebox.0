Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fn9-0007rC-To
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:56 +0100
Message-Id: <20200217124623.14520-16-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/42] mci: imx-esdhc-pbl: Add instance 2 for i.MX8MM
To: Barebox List <barebox@lists.infradead.org>

Unlike the i.MX8MQ the i.MX8MM has three SDHCI controllers. Add support
for picking the base address of the third controller from the instance
number. While at it use the IMX8M_ base addresses rather than the
IMX8MQ_ base addresses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 6610cee3b5..caaf1ac9b5 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -22,6 +22,7 @@
 #include <mach/atf.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx8mq-regs.h>
+#include <mach/imx8mm-regs.h>
 #include <mach/imx-header.h>
 #endif
 #include "sdhci.h"
@@ -207,10 +208,14 @@ static int imx8m_esdhc_init(struct fsl_esdhc_host *host,
 {
 	switch (instance) {
 	case 0:
-		host->regs = IOMEM(MX8MQ_USDHC1_BASE_ADDR);
+		host->regs = IOMEM(MX8M_USDHC1_BASE_ADDR);
 		break;
 	case 1:
-		host->regs = IOMEM(MX8MQ_USDHC2_BASE_ADDR);
+		host->regs = IOMEM(MX8M_USDHC2_BASE_ADDR);
+		break;
+	case 2:
+		/* Only exists on i.MX8MM, not on i.MX8MQ */
+		host->regs = IOMEM(MX8MM_USDHC3_BASE_ADDR);
 		break;
 	default:
 		return -EINVAL;
@@ -283,7 +288,7 @@ int imx8m_esdhc_load_image(int instance, bool start)
 	if (ret)
 		return ret;
 
-	return esdhc_load_image(&host, MX8MQ_DDR_CSD1_BASE_ADDR,
+	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
 				MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K, start);
 }
 #endif
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
