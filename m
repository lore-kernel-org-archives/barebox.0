Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wfyf4-00035r-AU
 for barebox@lists.infradead.org; Thu, 01 May 2014 21:36:59 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Wfyef-0005Th-PR
 for barebox@lists.infradead.org; Thu, 01 May 2014 23:36:33 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 May 2014 23:36:36 +0200
Message-Id: <1398980196-19004-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: imx: move malloc area to upper memory bank by default
To: barebox@lists.infradead.org

If we have two discontinuous memory banks we want to move
the malloc area into the upper bank by default to leave as
much free space in the lower bank, where we have to place
kernel, oftree and initrd.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 115 ++++++++++++++++++++++++++-------------------
 1 file changed, 66 insertions(+), 49 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index c756c65f20d7..bb8fec2d4554 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -436,106 +436,123 @@ mem_initcall(imx_esdctl_init);
  * - cs0 enabled, cs1 enabled: The largest continuous region, that is, cs0 + cs1
  *                             if cs0 is taking the whole address space.
  */
-void __naked __noreturn imx1_barebox_entry(void *boarddata)
+static void
+upper_or_coalesced_range(unsigned long base0, unsigned long size0,
+                         unsigned long base1, unsigned long size1,
+                         unsigned long *res_base, unsigned long *res_size)
 {
-	unsigned long base;
-	unsigned long size;
+	/* if we have an upper range, use it */
+	if (size1) {
+		*res_base = base1;
+		*res_size = size1;
+	} else {
+		*res_base = base0;
+		*res_size = size0;
+	}
+
+	/*
+	 * if there is no hole between the two ranges, coalesce into a
+	 * single big one
+	 */
+	if ((base0 + size0) == base1) {
+		*res_base = base0;
+		*res_size = size0 + size1;
+	}
+}
 
-	base = MX1_CSD0_BASE_ADDR;
+void __naked __noreturn imx1_barebox_entry(void *boarddata)
+{
+	unsigned long base, size;
 
-	size = imx_v1_sdram_size((void *)MX1_SDRAMC_BASE_ADDR, 0);
-	if (size == SZ_64M)
-		size += imx_v1_sdram_size((void *)MX1_SDRAMC_BASE_ADDR, 1);
+	upper_or_coalesced_range(MX1_CSD0_BASE_ADDR,
+			imx_v1_sdram_size((void *)MX1_SDRAMC_BASE_ADDR, 0),
+			MX1_CSD1_BASE_ADDR,
+			imx_v1_sdram_size((void *)MX1_SDRAMC_BASE_ADDR, 1),
+			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
 }
 
 void __naked __noreturn imx25_barebox_entry(void *boarddata)
 {
-	unsigned long base;
-	unsigned long size;
-
-	base = MX25_CSD0_BASE_ADDR;
+	unsigned long base, size;
 
-	size = imx_v2_sdram_size((void *)MX25_ESDCTL_BASE_ADDR, 0);
-	if (size == SZ_256M)
-		size += imx_v2_sdram_size((void *)MX25_ESDCTL_BASE_ADDR, 1);
+	upper_or_coalesced_range(MX25_CSD0_BASE_ADDR,
+			imx_v2_sdram_size((void *)MX25_ESDCTL_BASE_ADDR, 0),
+			MX25_CSD1_BASE_ADDR,
+			imx_v2_sdram_size((void *)MX25_ESDCTL_BASE_ADDR, 1),
+			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
 }
 
 void __naked __noreturn imx27_barebox_entry(void *boarddata)
 {
-	unsigned long base;
-	unsigned long size;
+	unsigned long base, size;
 
 	imx_esdctl_v2_disable_default((void *)MX27_ESDCTL_BASE_ADDR);
 
-	base = MX27_CSD0_BASE_ADDR;
-
-	size = imx_v2_sdram_size((void *)MX27_ESDCTL_BASE_ADDR, 0);
-	if (size == SZ_256M)
-		size += imx_v2_sdram_size((void *)MX27_ESDCTL_BASE_ADDR, 1);
+	upper_or_coalesced_range(MX27_CSD0_BASE_ADDR,
+			imx_v2_sdram_size((void *)MX27_ESDCTL_BASE_ADDR, 0),
+			MX27_CSD1_BASE_ADDR,
+			imx_v2_sdram_size((void *)MX27_ESDCTL_BASE_ADDR, 1),
+			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
 }
 
 void __naked __noreturn imx31_barebox_entry(void *boarddata)
 {
-	unsigned long base;
-	unsigned long size;
+	unsigned long base, size;
 
 	imx_esdctl_v2_disable_default((void *)MX31_ESDCTL_BASE_ADDR);
 
-	base = MX31_CSD0_BASE_ADDR;
-
-	size = imx_v2_sdram_size((void *)MX31_ESDCTL_BASE_ADDR, 0);
-	if (size == SZ_256M)
-		size += imx_v2_sdram_size((void *)MX31_ESDCTL_BASE_ADDR, 1);
+	upper_or_coalesced_range(MX31_CSD0_BASE_ADDR,
+			imx_v2_sdram_size((void *)MX31_ESDCTL_BASE_ADDR, 0),
+			MX31_CSD1_BASE_ADDR,
+			imx_v2_sdram_size((void *)MX31_ESDCTL_BASE_ADDR, 1),
+			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
 }
 
 void __naked __noreturn imx35_barebox_entry(void *boarddata)
 {
-	unsigned long base;
-	unsigned long size;
+	unsigned long base, size;
 
 	imx_esdctl_v2_disable_default((void *)MX35_ESDCTL_BASE_ADDR);
 
-	base = MX35_CSD0_BASE_ADDR;
-
-	size = imx_v2_sdram_size((void *)MX35_ESDCTL_BASE_ADDR, 0);
-	if (size == SZ_256M)
-		size += imx_v2_sdram_size((void *)MX35_ESDCTL_BASE_ADDR, 1);
+	upper_or_coalesced_range(MX35_CSD0_BASE_ADDR,
+			imx_v2_sdram_size((void *)MX35_ESDCTL_BASE_ADDR, 0),
+			MX35_CSD1_BASE_ADDR,
+			imx_v2_sdram_size((void *)MX35_ESDCTL_BASE_ADDR, 1),
+			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
 }
 
 void __naked __noreturn imx51_barebox_entry(void *boarddata)
 {
-	unsigned long base;
-	unsigned long size;
-
-	base = MX51_CSD0_BASE_ADDR;
+	unsigned long base, size;
 
-	size = imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 0);
-	if (size == SZ_256M)
-		size += imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 1);
+	upper_or_coalesced_range(MX51_CSD0_BASE_ADDR,
+			imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 0),
+			MX51_CSD1_BASE_ADDR,
+			imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 1),
+			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
 }
 
 void __naked __noreturn imx53_barebox_entry(void *boarddata)
 {
-	unsigned long base;
-	unsigned long size;
-
-	base = MX53_CSD0_BASE_ADDR;
+	unsigned long base, size;
 
-	size = imx_v4_sdram_size((void *)MX53_ESDCTL_BASE_ADDR, 0);
-	if (size == SZ_1G)
-		size += imx_v4_sdram_size((void *)MX53_ESDCTL_BASE_ADDR, 1);
+	upper_or_coalesced_range(MX53_CSD0_BASE_ADDR,
+			imx_v3_sdram_size((void *)MX53_ESDCTL_BASE_ADDR, 0),
+			MX53_CSD1_BASE_ADDR,
+			imx_v3_sdram_size((void *)MX53_ESDCTL_BASE_ADDR, 1),
+			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
