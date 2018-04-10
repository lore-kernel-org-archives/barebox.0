Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f635B-0001jO-5n
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:53:50 +0000
Received: by mail-pl0-x243.google.com with SMTP id 59-v6so14531plc.13
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:53:39 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:53:20 -0700
Message-Id: <20180410235323.5440-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180410235323.5440-1-andrew.smirnov@gmail.com>
References: <20180410235323.5440-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/10] ARM: i.MX: esdctl: Introduce memory_sdram_size()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Introduce memory_sdram_size() - subroutine to calculate size of SDRAM
chip base on its parameters such as # or rows, columns, banks and bus
width.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/esdctl.c | 14 ++++----------
 include/memory.h           |  8 ++++++++
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index a4eb3f196..b8f048ee6 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -75,7 +75,7 @@ static inline unsigned long imx_v1_sdram_size(void __iomem *esdctlbase, int num)
 	if (ctlval & (1 << 17))
 		width = 4;
 
-	size = (1 << cols) * (1 << rows) * banks * width;
+	size = memory_sdram_size(cols, rows, banks, width);
 
 	return min_t(unsigned long, size, SZ_64M);
 }
@@ -100,7 +100,7 @@ static inline unsigned long imx_v2_sdram_size(void __iomem *esdctlbase, int num)
 	if ((ctlval & ESDCTL0_DSIZ_MASK) == ESDCTL0_DSIZ_31_0)
 		width = 4;
 
-	size = (1 << cols) * (1 << rows) * banks * width;
+	size = memory_sdram_size(cols, rows, banks, width);
 
 	return min_t(unsigned long, size, SZ_256M);
 }
@@ -127,7 +127,6 @@ static inline unsigned long imx_v4_sdram_size(void __iomem *esdctlbase, int cs)
 {
 	u32 ctlval = readl(esdctlbase + ESDCTL_V4_ESDCTL0);
 	u32 esdmisc = readl(esdctlbase + ESDCTL_V4_ESDMISC);
-	unsigned long size;
 	int rows, cols, width = 2, banks = 8;
 
 	if (cs == 0 && !(ctlval & ESDCTL_V4_ESDCTLx_SDE0))
@@ -153,9 +152,7 @@ static inline unsigned long imx_v4_sdram_size(void __iomem *esdctlbase, int cs)
 	if (esdmisc & ESDCTL_V4_ESDMISC_BANKS_4)
 		banks = 4;
 
-	size = (1 << cols) * (1 << rows) * banks * width;
-
-	return size;
+	return memory_sdram_size(cols, rows, banks, width);
 }
 
 /*
@@ -166,7 +163,6 @@ static inline u64 __imx6_mmdc_sdram_size(void __iomem *mmdcbase, int cs)
 {
 	u32 ctlval = readl(mmdcbase + MDCTL);
 	u32 mdmisc = readl(mmdcbase + MDMISC);
-	u64 size;
 	int rows, cols, width = 2, banks = 8;
 
 	if (cs == 0 && !(ctlval & MMDCx_MDCTL_SDE0))
@@ -192,9 +188,7 @@ static inline u64 __imx6_mmdc_sdram_size(void __iomem *mmdcbase, int cs)
 	if (mdmisc & MMDCx_MDMISC_DDR_4_BANKS)
 		banks = 4;
 
-	size = (u64)(1 << cols) * (1 << rows) * banks * width;
-
-	return size;
+	return memory_sdram_size(cols, rows, banks, width);
 }
 
 static void add_mem(unsigned long base0, unsigned long size0,
diff --git a/include/memory.h b/include/memory.h
index 56d16d20c..73ee7661e 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -32,4 +32,12 @@ void memory_bank_find_space(struct memory_bank *bank, resource_size_t *retstart,
 int memory_bank_first_find_space(resource_size_t *retstart,
 				 resource_size_t *retend);
 
+static inline u64 memory_sdram_size(unsigned int cols,
+				    unsigned int rows,
+				    unsigned int banks,
+				    unsigned int width)
+{
+	return (u64)banks * width << (rows + cols);
+}
+
 #endif
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
