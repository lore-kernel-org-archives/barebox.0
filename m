Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp46.i.mail.ru ([94.100.177.106])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVfn0-0007aV-Ma
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 10:22:04 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 26 Apr 2013 14:21:54 +0400
Message-Id: <1366971714-32682-1-git-send-email-shc_work@mail.ru>
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
Subject: [RFC only] ARM: i.MX: Fix SDRAM size detect
To: barebox@lists.infradead.org

This is a trying to fix problem described in:
http://lists.infradead.org/pipermail/barebox/2013-April/014182.html

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/esdctl.c | 13 ++-----------
 arch/arm/mach-imx/imx51.c  | 21 +++++++++++++++++++++
 2 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index cb57d45..bde02fd 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -345,7 +345,7 @@ static int imx_esdctl_init(void)
 	return platform_driver_register(&imx_serial_driver);
 }
 
-mem_initcall(imx_esdctl_init);
+//mem_initcall(imx_esdctl_init);
 
 /*
  * The i.MX SoCs usually have two SDRAM chipselects. The following
@@ -435,16 +435,7 @@ void __naked __noreturn imx35_barebox_entry(uint32_t boarddata)
 
 void __naked __noreturn imx51_barebox_entry(uint32_t boarddata)
 {
-	unsigned long base;
-	unsigned long size;
-
-	base = MX51_CSD0_BASE_ADDR;
-
-	size = imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 0);
-	if (size == SZ_256M)
-		size += imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 1);
-
-	barebox_arm_entry(base, size, boarddata);
+	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, boarddata);
 }
 
 void __naked __noreturn imx53_barebox_entry(uint32_t boarddata)
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 54d99a4..6593b7d 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -21,6 +21,8 @@
 #include <mach/revision.h>
 #include <mach/clock-imx51_53.h>
 #include <mach/generic.h>
+#include <mach/esdctl.h>
+#include <asm/memory.h>
 
 #define SI_REV 0x48
 
@@ -76,6 +78,25 @@ static int imx51_init(void)
 }
 postcore_initcall(imx51_init);
 
+static int imx51_memory_init(void)
+{
+	void __iomem *esdctl = IOMEM(MX51_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
+	unsigned long add, size = SZ_128M;
+
+	add = get_ram_size((ulong *)(MX51_CSD0_BASE_ADDR + SZ_128M), SZ_128M);
+	if (add) {
+		size += add;
+		if (readl(esdctl) & ESDCTL0_SDE)
+			size += get_ram_size((ulong *)MX51_CSD1_BASE_ADDR, SZ_256M);
+
+	}
+
+	arm_add_mem_device("ram0", MX51_CSD0_BASE_ADDR, size);
+
+	return 0;
+}
+mem_initcall(imx51_memory_init);
+
 /*
  * Saves the boot source media into the $bootsource environment variable
  *
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
