Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grHxk-0001qT-E5
 for barebox@lists.infradead.org; Wed, 06 Feb 2019 07:49:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Feb 2019 08:49:16 +0100
Message-Id: <20190206074921.11115-4-s.hauer@pengutronix.de>
In-Reply-To: <20190206074921.11115-1-s.hauer@pengutronix.de>
References: <20190206074921.11115-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] mci: imx-esdhc: move platform_data
To: Barebox List <barebox@lists.infradead.org>

move platform_data from mach-imx/include/mach/ to include/platform_data
where it's available for other architectures aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/devices.h                        | 2 +-
 drivers/mci/imx-esdhc.c                                         | 2 +-
 .../mach/esdhc.h => include/platform_data/mmc-esdhc-imx.h       | 0
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename arch/arm/mach-imx/include/mach/esdhc.h => include/platform_data/mmc-esdhc-imx.h (100%)

diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index b0e1fd1f3c..4754b92a6f 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -6,7 +6,7 @@
 #include <mach/imx-nand.h>
 #include <mach/imxfb.h>
 #include <mach/imx-ipu-fb.h>
-#include <mach/esdhc.h>
+#include <platform_data/mmc-esdhc-imx.h>
 #include <usb/chipidea-imx.h>
 
 struct device_d *imx_add_fec_imx27(void *base, struct fec_platform_data *pdata);
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 7ff431a66f..8027f46262 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -33,7 +33,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <mach/generic.h>
-#include <mach/esdhc.h>
+#include <platform_data/mmc-esdhc-imx.h>
 #include <gpio.h>
 #include <of_device.h>
 
diff --git a/arch/arm/mach-imx/include/mach/esdhc.h b/include/platform_data/mmc-esdhc-imx.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/esdhc.h
rename to include/platform_data/mmc-esdhc-imx.h
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
