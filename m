Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9HT4-0006Hr-W3
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 13:15:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Oct 2010 15:15:23 +0200
Message-Id: <1287753331-7696-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/13] i.MX esdctl: Add register bits from redboot
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/esdctl.h |   88 +++++++++++++++++++++++++++++++
 1 files changed, 88 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index d15f52b..fe74cb6 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -18,9 +18,11 @@
 #define ESDCTL0_ROW13				(2 << 24)
 #define ESDCTL0_ROW14				(3 << 24)
 #define ESDCTL0_ROW15				(4 << 24)
+#define ESDCTL0_ROW_MASK			(7 << 24)
 #define ESDCTL0_COL8				(0 << 20)
 #define ESDCTL0_COL9				(1 << 20)
 #define ESDCTL0_COL10				(2 << 20)
+#define ESDCTL0_COL_MASK			(3 << 20)
 #define ESDCTL0_DSIZ_31_16			(0 << 16)
 #define ESDCTL0_DSIZ_15_0			(1 << 16)
 #define ESDCTL0_DSIZ_31_0			(2 << 16)
@@ -32,3 +34,89 @@
 #define ESDCTL0_FP				(1 << 8)
 #define ESDCTL0_BL				(1 << 7)
 
+#define ESDMISC_RST			0x00000002
+#define ESDMISC_MDDR_EN			0x00000004
+#define ESDMISC_MDDR_DIS		0x00000000
+#define ESDMISC_MDDR_DL_RST		0x00000008
+#define ESDMISC_MDDR_MDIS		0x00000010
+#define ESDMISC_LHD			0x00000020
+#define ESDMISC_SDRAMRDY		0x80000000
+
+#define	ESDCFGx_tXP_MASK 		0x00600000
+#define ESDCFGx_tXP_1			0x00000000
+#define ESDCFGx_tXP_2			0x00200000
+#define ESDCFGx_tXP_3			0x00400000
+#define ESDCFGx_tXP_4			0x00600000
+
+#define ESDCFGx_tWTR_MASK		0x00100000
+#define ESDCFGx_tWTR_1			0x00000000
+#define ESDCFGx_tWTR_2			0x00100000
+
+#define ESDCFGx_tRP_MASK		0x000c0000
+#define ESDCFGx_tRP_1			0x00000000
+#define ESDCFGx_tRP_2			0x00040000
+#define ESDCFGx_tRP_3			0x00080000
+#define ESDCFGx_tRP_4			0x000c0000
+
+
+#define ESDCFGx_tMRD_MASK		0x00030000
+#define ESDCFGx_tMRD_1			0x00000000
+#define ESDCFGx_tMRD_2			0x00010000
+#define ESDCFGx_tMRD_3			0x00020000
+#define ESDCFGx_tMRD_4			0x00030000
+
+
+#define ESDCFGx_tWR_MASK		0x00008000
+#define ESDCFGx_tWR_1_2			0x00000000
+#define ESDCFGx_tWR_2_3			0x00008000
+
+#define ESDCFGx_tRAS_MASK		0x00007000
+#define ESDCFGx_tRAS_1			0x00000000
+#define ESDCFGx_tRAS_2			0x00001000
+#define ESDCFGx_tRAS_3			0x00002000
+#define ESDCFGx_tRAS_4			0x00003000
+#define ESDCFGx_tRAS_5			0x00004000
+#define ESDCFGx_tRAS_6			0x00005000
+#define ESDCFGx_tRAS_7			0x00006000
+#define ESDCFGx_tRAS_8			0x00007000
+
+
+#define ESDCFGx_tRRD_MASK		0x00000c00
+#define ESDCFGx_tRRD_1			0x00000000
+#define ESDCFGx_tRRD_2			0x00000400
+#define ESDCFGx_tRRD_3			0x00000800
+#define ESDCFGx_tRRD_4			0x00000c00
+
+
+#define ESDCFGx_tCAS_MASK		0x00000300
+#define ESDCFGx_tCAS_2			0x00000200
+#define ESDCFGx_tCAS_3			0x00000300
+
+#define ESDCFGx_tRCD_MASK		0x00000070
+#define ESDCFGx_tRCD_1			0x00000000
+#define ESDCFGx_tRCD_2			0x00000010
+#define ESDCFGx_tRCD_3			0x00000020
+#define ESDCFGx_tRCD_4			0x00000030
+#define ESDCFGx_tRCD_5			0x00000040
+#define ESDCFGx_tRCD_6			0x00000050
+#define ESDCFGx_tRCD_7			0x00000060
+#define ESDCFGx_tRCD_8			0x00000070
+
+#define ESDCFGx_tRC_MASK		0x0000000f
+#define ESDCFGx_tRC_20			0x00000000
+#define ESDCFGx_tRC_2			0x00000001
+#define ESDCFGx_tRC_3			0x00000002
+#define ESDCFGx_tRC_4			0x00000003
+#define ESDCFGx_tRC_5			0x00000004
+#define ESDCFGx_tRC_6			0x00000005
+#define ESDCFGx_tRC_7			0x00000006
+#define ESDCFGx_tRC_8			0x00000007
+#define ESDCFGx_tRC_9			0x00000008
+#define ESDCFGx_tRC_10			0x00000009
+#define ESDCFGx_tRC_11			0x0000000a
+#define ESDCFGx_tRC_12			0x0000000b
+#define ESDCFGx_tRC_13			0x0000000c
+#define ESDCFGx_tRC_14			0x0000000d
+//#define ESDCFGx_tRC_14		0x0000000e	// 15 seems to not exist
+#define ESDCFGx_tRC_16			0x0000000f
+
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
