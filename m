Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCfmE-00066N-Ft
 for barebox@lists.infradead.org; Thu, 18 Feb 2021 09:39:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Feb 2021 10:39:02 +0100
Message-Id: <20210218093902.15354-5-a.fatoum@pengutronix.de>
In-Reply-To: <20210218093902.15354-1-a.fatoum@pengutronix.de>
References: <20210218093902.15354-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 5/5] drivers: replaces references to <asm-generic/*.h>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With <linux/math64.h> included for do_div instead of
<asm-generic/div.h>, there remains only 3 references to asm-generic
headers in drivers/. Fix them up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - reinstated
v1 -> v2:
  - dropped by mistake
---
 drivers/mci/dw_mmc.c            | 2 +-
 drivers/mci/imx-esdhc-pbl.c     | 2 +-
 drivers/mtd/nand/nand_s3c24xx.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 8249403eb7d6..7979568841fc 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -19,7 +19,7 @@
 #include <linux/bitops.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <asm-generic/errno.h>
+#include <errno.h>
 #include "dw_mmc.h"
 
 
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 0cb32b46f19e..c3a8b377e2b7 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -6,7 +6,7 @@
 #include <io.h>
 #include <mci.h>
 #include <linux/sizes.h>
-#include <asm-generic/sections.h>
+#include <asm/sections.h>
 #include <asm/cache.h>
 #include <mach/xload.h>
 #ifdef CONFIG_ARCH_IMX
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index 59bd6c9fed4c..f1d1441f509f 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -32,7 +32,7 @@
 #include <mach/s3c-iomap.h>
 #include <mach/s3c24xx-nand.h>
 #include <io.h>
-#include <asm-generic/errno.h>
+#include <errno.h>
 #include <asm/sections.h>
 
 #ifdef CONFIG_S3C_NAND_BOOT
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
