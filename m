Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.mail.ru ([94.100.176.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SF7Km-0000Fy-T9
 for barebox@lists.infradead.org; Tue, 03 Apr 2012 17:15:58 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue,  3 Apr 2012 21:16:24 +0400
Message-Id: <1333473384-6741-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1333473384-6741-1-git-send-email-shc_work@mail.ru>
References: <1333473384-6741-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/3] i.MX5x: Unused pll definitions removed
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/clock-imx51_53.h |   39 -----------------------
 1 files changed, 0 insertions(+), 39 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/clock-imx51_53.h b/arch/arm/mach-imx/include/mach/clock-imx51_53.h
index 2525ccd..6004a6d 100644
--- a/arch/arm/mach-imx/include/mach/clock-imx51_53.h
+++ b/arch/arm/mach-imx/include/mach/clock-imx51_53.h
@@ -584,45 +584,6 @@
 #define MX5_SRPGC_EMI_PUPSCR	(MX5_SRPGC_EMI_BASE + 0x4)
 #define MX5_SRPGC_EMI_PDNSCR	(MX5_SRPGC_EMI_BASE + 0x8)
 
-
-/* Assuming 24MHz input clock with doubler ON */
-/*                            MFI         PDF */
-#define MX5_PLL_DP_OP_1000	((10 << 4) + ((1 - 1)  << 0))
-#define MX5_PLL_DP_MFD_1000	(12 - 1)
-#define MX5_PLL_DP_MFN_1000	5
-
-#define MX5_PLL_DP_OP_850	((8 << 4) + ((1 - 1)  << 0))
-#define MX5_PLL_DP_MFD_850	(48 - 1)
-#define MX5_PLL_DP_MFN_850	41
-
-#define MX5_PLL_DP_OP_800	((8 << 4) + ((1 - 1)  << 0))
-#define MX5_PLL_DP_MFD_800	(3 - 1)
-#define MX5_PLL_DP_MFN_800	1
-
-#define MX5_PLL_DP_OP_700	((7 << 4) + ((1 - 1)  << 0))
-#define MX5_PLL_DP_MFD_700	(24 - 1)
-#define MX5_PLL_DP_MFN_700	7
-
-#define MX5_PLL_DP_OP_665	((6 << 4) + ((1 - 1)  << 0))
-#define MX5_PLL_DP_MFD_665	(96 - 1)
-#define MX5_PLL_DP_MFN_665	89
-
-#define MX5_PLL_DP_OP_600	((6 << 4) + ((1 - 1)  << 0))
-#define MX5_PLL_DP_MFD_600	(4 - 1)
-#define MX5_PLL_DP_MFN_600	1
-
-#define MX5_PLL_DP_OP_532	((5 << 4) + ((1 - 1)  << 0))
-#define MX5_PLL_DP_MFD_532	(24 - 1)
-#define MX5_PLL_DP_MFN_532	13
-
-#define MX5_PLL_DP_OP_400	((8 << 4) + ((2 - 1)  << 0))
-#define MX5_PLL_DP_MFD_400	(3 - 1)
-#define MX5_PLL_DP_MFN_400	1
-
-#define MX5_PLL_DP_OP_216	((6 << 4) + ((3 - 1)  << 0))
-#define MX5_PLL_DP_MFD_216	(4 - 1)
-#define MX5_PLL_DP_MFN_216	3
-
 #endif				/* __ARCH_ARM_MACH_MX51_CRM_REGS_H__ */
 
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
