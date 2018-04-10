Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6356-0001jE-Tt
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:53:46 +0000
Received: by mail-pf0-x241.google.com with SMTP id c78so28338pfj.6
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:53:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:53:16 -0700
Message-Id: <20180410235323.5440-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/10] ARM: i.MX6: esdctl: Share memory size calculation code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Code for calculating total amount of memory found in
imx6_mmdc_add_mem(), imx6q_barebox_entry() and imx6ul_barebox_entry()
is exaclty the same, so refactor the code to avoid duplication.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/esdctl.c | 35 ++++++++++++++++-------------------
 1 file changed, 16 insertions(+), 19 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 1d6fa2995..a7114effa 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -171,7 +171,7 @@ static inline unsigned long imx_v4_sdram_size(void __iomem *esdctlbase, int cs)
  * MMDC - found on i.MX6
  */
 
-static inline u64 imx6_mmdc_sdram_size(void __iomem *mmdcbase, int cs)
+static inline u64 __imx6_mmdc_sdram_size(void __iomem *mmdcbase, int cs)
 {
 	u32 ctlval = readl(mmdcbase + MDCTL);
 	u32 mdmisc = readl(mmdcbase + MDMISC);
@@ -286,7 +286,7 @@ static void imx_esdctl_v4_add_mem(void *esdctlbase, struct imx_esdctl_data *data
  */
 #define IMX6_MAX_SDRAM_SIZE 0xF0000000
 
-static void imx6_mmdc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+static inline resource_size_t imx6_mmdc_sdram_size(void __iomem *mmdcbase)
 {
 	/*
 	 * It is possible to have a configuration in which both chip
@@ -296,14 +296,19 @@ static void imx6_mmdc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 	 * IMX6_MAX_SDRAM_SIZE bytes of memory available.
 	 */
 
-	u64 size_cs0 = imx6_mmdc_sdram_size(mmdcbase, 0);
-	u64 size_cs1 = imx6_mmdc_sdram_size(mmdcbase, 1);
+	u64 size_cs0 = __imx6_mmdc_sdram_size(mmdcbase, 0);
+	u64 size_cs1 = __imx6_mmdc_sdram_size(mmdcbase, 1);
 	u64 total    = size_cs0 + size_cs1;
 
 	resource_size_t size = min(total, (u64)IMX6_MAX_SDRAM_SIZE);
 
+	return size;
+}
+
+static void imx6_mmdc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
+{
 	arm_add_mem_device("ram0", data->base0,
-			size);
+			   imx6_mmdc_sdram_size(mmdcbase));
 }
 
 static int imx_esdctl_probe(struct device_d *dev)
@@ -592,22 +597,14 @@ void __noreturn imx53_barebox_entry(void *boarddata)
 
 void __noreturn imx6q_barebox_entry(void *boarddata)
 {
-	u64 size_cs0 = imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR), 0);
-	u64 size_cs1 = imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR), 1);
-	u64 total    = size_cs0 + size_cs1;
-
-	resource_size_t size = min(total, (u64)IMX6_MAX_SDRAM_SIZE);
-
-	barebox_arm_entry(0x10000000, size, boarddata);
+	barebox_arm_entry(0x10000000,
+			  imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR)),
+			  boarddata);
 }
 
 void __noreturn imx6ul_barebox_entry(void *boarddata)
 {
-	u64 size_cs0 = imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR), 0);
-	u64 size_cs1 = imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR), 1);
-	u64 total    = size_cs0 + size_cs1;
-
-	resource_size_t size = min(total, (u64)IMX6_MAX_SDRAM_SIZE);
-
-	barebox_arm_entry(0x80000000, size, boarddata);
+	barebox_arm_entry(0x80000000,
+			  imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR)),
+			  boarddata);
 }
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
