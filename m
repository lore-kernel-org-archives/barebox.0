Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6354-0001j2-RC
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:53:44 +0000
Received: by mail-pf0-x244.google.com with SMTP id y66so28008pfi.7
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:53:32 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:53:14 -0700
Message-Id: <20180410235323.5440-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/10] ARM: i.MX: esdctl: Use IOMEM instead of (void *)
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/esdctl.c | 42 +++++++++++++++++++++---------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 1eebc77b6..895761e73 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -498,9 +498,9 @@ void __noreturn imx1_barebox_entry(void *boarddata)
 	unsigned long base, size;
 
 	upper_or_coalesced_range(MX1_CSD0_BASE_ADDR,
-			imx_v1_sdram_size((void *)MX1_SDRAMC_BASE_ADDR, 0),
+			imx_v1_sdram_size(IOMEM(MX1_SDRAMC_BASE_ADDR), 0),
 			MX1_CSD1_BASE_ADDR,
-			imx_v1_sdram_size((void *)MX1_SDRAMC_BASE_ADDR, 1),
+			imx_v1_sdram_size(IOMEM(MX1_SDRAMC_BASE_ADDR), 1),
 			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
@@ -511,9 +511,9 @@ void __noreturn imx25_barebox_entry(void *boarddata)
 	unsigned long base, size;
 
 	upper_or_coalesced_range(MX25_CSD0_BASE_ADDR,
-			imx_v2_sdram_size((void *)MX25_ESDCTL_BASE_ADDR, 0),
+			imx_v2_sdram_size(IOMEM(MX25_ESDCTL_BASE_ADDR), 0),
 			MX25_CSD1_BASE_ADDR,
-			imx_v2_sdram_size((void *)MX25_ESDCTL_BASE_ADDR, 1),
+			imx_v2_sdram_size(IOMEM(MX25_ESDCTL_BASE_ADDR), 1),
 			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
@@ -523,12 +523,12 @@ void __noreturn imx27_barebox_entry(void *boarddata)
 {
 	unsigned long base, size;
 
-	imx_esdctl_v2_disable_default((void *)MX27_ESDCTL_BASE_ADDR);
+	imx_esdctl_v2_disable_default(IOMEM(MX27_ESDCTL_BASE_ADDR));
 
 	upper_or_coalesced_range(MX27_CSD0_BASE_ADDR,
-			imx_v2_sdram_size((void *)MX27_ESDCTL_BASE_ADDR, 0),
+			imx_v2_sdram_size(IOMEM(MX27_ESDCTL_BASE_ADDR), 0),
 			MX27_CSD1_BASE_ADDR,
-			imx_v2_sdram_size((void *)MX27_ESDCTL_BASE_ADDR, 1),
+			imx_v2_sdram_size(IOMEM(MX27_ESDCTL_BASE_ADDR), 1),
 			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
@@ -538,12 +538,12 @@ void __noreturn imx31_barebox_entry(void *boarddata)
 {
 	unsigned long base, size;
 
-	imx_esdctl_v2_disable_default((void *)MX31_ESDCTL_BASE_ADDR);
+	imx_esdctl_v2_disable_default(IOMEM(MX31_ESDCTL_BASE_ADDR));
 
 	upper_or_coalesced_range(MX31_CSD0_BASE_ADDR,
-			imx_v2_sdram_size((void *)MX31_ESDCTL_BASE_ADDR, 0),
+			imx_v2_sdram_size(IOMEM(MX31_ESDCTL_BASE_ADDR), 0),
 			MX31_CSD1_BASE_ADDR,
-			imx_v2_sdram_size((void *)MX31_ESDCTL_BASE_ADDR, 1),
+			imx_v2_sdram_size(IOMEM(MX31_ESDCTL_BASE_ADDR), 1),
 			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
@@ -553,12 +553,12 @@ void __noreturn imx35_barebox_entry(void *boarddata)
 {
 	unsigned long base, size;
 
-	imx_esdctl_v2_disable_default((void *)MX35_ESDCTL_BASE_ADDR);
+	imx_esdctl_v2_disable_default(IOMEM(MX35_ESDCTL_BASE_ADDR));
 
 	upper_or_coalesced_range(MX35_CSD0_BASE_ADDR,
-			imx_v2_sdram_size((void *)MX35_ESDCTL_BASE_ADDR, 0),
+			imx_v2_sdram_size(IOMEM(MX35_ESDCTL_BASE_ADDR), 0),
 			MX35_CSD1_BASE_ADDR,
-			imx_v2_sdram_size((void *)MX35_ESDCTL_BASE_ADDR, 1),
+			imx_v2_sdram_size(IOMEM(MX35_ESDCTL_BASE_ADDR), 1),
 			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
@@ -569,9 +569,9 @@ void __noreturn imx51_barebox_entry(void *boarddata)
 	unsigned long base, size;
 
 	upper_or_coalesced_range(MX51_CSD0_BASE_ADDR,
-			imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 0),
+			imx_v3_sdram_size(IOMEM(MX51_ESDCTL_BASE_ADDR), 0),
 			MX51_CSD1_BASE_ADDR,
-			imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 1),
+			imx_v3_sdram_size(IOMEM(MX51_ESDCTL_BASE_ADDR), 1),
 			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
@@ -582,9 +582,9 @@ void __noreturn imx53_barebox_entry(void *boarddata)
 	unsigned long base, size;
 
 	upper_or_coalesced_range(MX53_CSD0_BASE_ADDR,
-			imx_v4_sdram_size((void *)MX53_ESDCTL_BASE_ADDR, 0),
+			imx_v4_sdram_size(IOMEM(MX53_ESDCTL_BASE_ADDR), 0),
 			MX53_CSD1_BASE_ADDR,
-			imx_v4_sdram_size((void *)MX53_ESDCTL_BASE_ADDR, 1),
+			imx_v4_sdram_size(IOMEM(MX53_ESDCTL_BASE_ADDR), 1),
 			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
@@ -592,8 +592,8 @@ void __noreturn imx53_barebox_entry(void *boarddata)
 
 void __noreturn imx6q_barebox_entry(void *boarddata)
 {
-	u64 size_cs0 = imx6_mmdc_sdram_size((void *)MX6_MMDC_P0_BASE_ADDR, 0);
-	u64 size_cs1 = imx6_mmdc_sdram_size((void *)MX6_MMDC_P0_BASE_ADDR, 1);
+	u64 size_cs0 = imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR), 0);
+	u64 size_cs1 = imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR), 1);
 	u64 total    = size_cs0 + size_cs1;
 
 	resource_size_t size = min(total, (u64)IMX6_MAX_SDRAM_SIZE);
@@ -603,8 +603,8 @@ void __noreturn imx6q_barebox_entry(void *boarddata)
 
 void __noreturn imx6ul_barebox_entry(void *boarddata)
 {
-	u64 size_cs0 = imx6_mmdc_sdram_size((void *)MX6_MMDC_P0_BASE_ADDR, 0);
-	u64 size_cs1 = imx6_mmdc_sdram_size((void *)MX6_MMDC_P0_BASE_ADDR, 1);
+	u64 size_cs0 = imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR), 0);
+	u64 size_cs1 = imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR), 1);
 	u64 total    = size_cs0 + size_cs1;
 
 	resource_size_t size = min(total, (u64)IMX6_MAX_SDRAM_SIZE);
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
