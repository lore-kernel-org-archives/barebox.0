Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdeQM-0002zd-Ld
 for barebox@lists.infradead.org; Wed, 28 Nov 2012 09:59:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Nov 2012 10:59:20 +0100
Message-Id: <1354096760-14409-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354096760-14409-1-git-send-email-s.hauer@pengutronix.de>
References: <1354096760-14409-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM i.MX esdctl: Use defines from exisiting header file
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c |   28 +++++++++-------------------
 1 file changed, 9 insertions(+), 19 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 567ecd6..4e83c7d 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -23,6 +23,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/memory.h>
 #include <mach/esdctl.h>
+#include <mach/esdctl-v4.h>
 #include <mach/imx1-regs.h>
 #include <mach/imx21-regs.h>
 #include <mach/imx25-regs.h>
@@ -112,34 +113,23 @@ static inline unsigned long imx_v3_sdram_size(void __iomem *esdctlbase, int num)
 	return size;
 }
 
-#define IMX_ESDCTL_V4_ESDCTL	0x0
-#define IMX_ESDCTL_V4_ESDMISC	0x18
-
-#define ESDCTL_V4_ESDCTL_DSIZ		(1 << 16)
-#define ESDCTL_V4_ESDMISC_DDR_4_BANK	(1 << 5)
-#define ESDCTL_V4_ESDMISC_ONECS		(1 << 20)
-
-#define ESDCTL_V4_ESDCTL_SDE_0		(1 << 31)
-#define ESDCTL_V4_ESDCTL_SDE_1		(1 << 30)
-#define ESDCTL_V4_ESDMISC_BI		(1 << 12)
-
 /*
  * v4 - found on i.MX53
  */
 static inline unsigned long imx_v4_sdram_size(void __iomem *esdctlbase, int cs)
 {
-	u32 ctlval = readl(esdctlbase + IMX_ESDCTL_V4_ESDCTL);
-	u32 esdmisc = readl(esdctlbase + IMX_ESDCTL_V4_ESDMISC);
+	u32 ctlval = readl(esdctlbase + ESDCTL_V4_ESDCTL0);
+	u32 esdmisc = readl(esdctlbase + ESDCTL_V4_ESDMISC);
 	unsigned long size;
 	int rows, cols, width = 2, banks = 8;
 
-	if (cs == 0 && !(ctlval & ESDCTL_V4_ESDCTL_SDE_0))
+	if (cs == 0 && !(ctlval & ESDCTL_V4_ESDCTLx_SDE0))
 		return 0;
-	if (cs == 1 && !(ctlval & ESDCTL_V4_ESDCTL_SDE_1))
+	if (cs == 1 && !(ctlval & ESDCTL_V4_ESDCTLx_SDE1))
 		return 0;
 
 	/* one 2GiB cs, memory is returned for cs0 only */
-	if (cs == 1 && (esdmisc & ESDCTL_V4_ESDMISC_ONECS))
+	if (cs == 1 && (esdmisc & ESDCTL_V4_ESDMISC_ONE_CS))
 		return 9;
 
 	rows = ((ctlval >> 24) & 0x7) + 11;
@@ -164,16 +154,16 @@ static inline unsigned long imx_v4_sdram_size(void __iomem *esdctlbase, int cs)
 		break;
 	}
 
-	if (ctlval & ESDCTL_V4_ESDCTL_DSIZ)
+	if (ctlval & ESDCTL_V4_ESDCTLx_DSIZ_32B)
 		width = 4;
 
-	if (esdmisc & ESDCTL_V4_ESDMISC_DDR_4_BANK)
+	if (esdmisc & ESDCTL_V4_ESDMISC_BANKS_4)
 		banks = 4;
 
 	size = (1 << cols) * (1 << rows) * banks * width;
 
 	/* bank interleaved, double size */
-	if (esdmisc & ESDCTL_V4_ESDMISC_BI)
+	if (esdmisc & ESDCTL_V4_ESDMISC_BI_ON)
 		return size * 2;
 
 	return size;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
