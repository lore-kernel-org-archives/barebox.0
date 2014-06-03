Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvPG-00055z-La
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:34:04 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 2C93A18B426D
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:26 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:34:54 +0200
Message-Id: <1401827717-6420-8-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 07/30] tegra: lowlevel: fix ODMdata fetch on Tegra124
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 50 ++++++++++++++++++++---------
 1 file changed, 35 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index 662508a..c65be0b 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -31,8 +31,9 @@
 
 /* Bootinfotable */
 
-#define NV_BIT_BCTSIZE		0x38	/* size of the BCT in IRAM */
-#define NV_BIT_BCTPTR		0x3C	/* location of the BCT in IRAM */
+/* location of the BCT in IRAM */
+#define NV_BIT_BCTPTR_T20	0x3c
+#define NV_BIT_BCTPTR_T114	0x4c
 
 /* ODM data */
 #define BCT_ODMDATA_OFFSET	12	/* offset from the _end_ of the BCT */
@@ -45,19 +46,6 @@
 #define T20_ODMDATA_UARTID_SHIFT	15
 #define T20_ODMDATA_UARTID_MASK		(7 << T20_ODMDATA_UARTID_SHIFT)
 
-static __always_inline
-u32 tegra_get_odmdata(void)
-{
-	u32 bctsize, bctptr, odmdata;
-
-	bctsize = cpu_readl(TEGRA_IRAM_BASE + NV_BIT_BCTSIZE);
-	bctptr = cpu_readl(TEGRA_IRAM_BASE + NV_BIT_BCTPTR);
-
-	odmdata = cpu_readl(bctptr + bctsize - BCT_ODMDATA_OFFSET);
-
-	return odmdata;
-}
-
 /* chip ID */
 #define APB_MISC_HIDREV			0x804
 #define HIDREV_CHIPID_SHIFT		8
@@ -97,6 +85,38 @@ enum tegra_chiptype tegra_get_chiptype(void)
 }
 
 static __always_inline
+u32 tegra_get_odmdata(void)
+{
+	u32 bctptr_offset, bctptr, odmdata_offset;
+	enum tegra_chiptype chiptype = tegra_get_chiptype();
+
+	switch(chiptype) {
+	case TEGRA20:
+		bctptr_offset = NV_BIT_BCTPTR_T20;
+		odmdata_offset = 4068;
+		break;
+	case TEGRA30:
+		bctptr_offset = NV_BIT_BCTPTR_T20;
+		odmdata_offset = 6116;
+		break;
+	case TEGRA114:
+		bctptr_offset = NV_BIT_BCTPTR_T114;
+		odmdata_offset = 1752;
+		break;
+	case TEGRA124:
+		bctptr_offset = NV_BIT_BCTPTR_T114;
+		odmdata_offset = 1704;
+		break;
+	default:
+		return 0;
+	}
+
+	bctptr = cpu_readl(TEGRA_IRAM_BASE + bctptr_offset);
+
+	return cpu_readl(bctptr + odmdata_offset);
+}
+
+static __always_inline
 int tegra_get_num_cores(void)
 {
 	switch (tegra_get_chiptype()) {
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
