Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxlXx-0001aj-Ea
 for barebox@lists.infradead.org; Tue, 21 Jul 2020 06:14:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Jul 2020 08:14:33 +0200
Message-Id: <20200721061433.26554-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] ARM: at91: pass along bootsource to netbooted barebox
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

ROM-Code passes boot source information in r4. First stage does likewise
when invoking second stage. When net booting second stage, r4 has no
definite value. Fix this and pass the original boot source along.

This gives us a valid $bootsource value in net booted barebox, which is
important, so the same environment is loaded.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Makefile                   |  2 +-
 arch/arm/mach-at91/bootm-barebox.c            | 46 +++++++++++++++++++
 arch/arm/mach-at91/include/mach/cpu.h         |  1 +
 .../mach-at91/include/mach/sama5_bootsource.h |  7 +++
 arch/arm/mach-at91/include/mach/xload.h       |  1 -
 arch/arm/mach-at91/sama5d2.c                  |  9 ++--
 arch/arm/mach-at91/setup.c                    |  3 ++
 arch/arm/mach-at91/xload-mmc.c                |  8 +---
 8 files changed, 63 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm/mach-at91/bootm-barebox.c

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 3b9f60a95af3..ba46c1a16edb 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,4 @@
-obj-y += setup.o aic.o
+obj-y += setup.o aic.o bootm-barebox.o
 lwl-y += at91_pmc_ll.o ddramc_ll.o matrix.o
 lwl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
 
diff --git a/arch/arm/mach-at91/bootm-barebox.c b/arch/arm/mach-at91/bootm-barebox.c
new file mode 100644
index 000000000000..1dccdb86a939
--- /dev/null
+++ b/arch/arm/mach-at91/bootm-barebox.c
@@ -0,0 +1,46 @@
+#define pr_fmt(fmt) "at91-bootm-barebox: " fmt
+
+#include <bootm.h>
+#include <common.h>
+#include <init.h>
+#include <memory.h>
+#include <mach/cpu.h>
+#include <mach/sama5_bootsource.h>
+
+static int do_bootm_at91_barebox_image(struct image_data *data)
+{
+	resource_size_t start, end;
+	int ret;
+
+	ret = memory_bank_first_find_space(&start, &end);
+	if (ret)
+		return ret;
+
+	ret = bootm_load_os(data, start);
+	if (ret)
+		return ret;
+
+	if (data->verbose)
+		printf("Loaded barebox image to 0x%08zx\n", start);
+
+	shutdown_barebox();
+
+	sama5_boot_xload((void *)start, at91_bootsource);
+
+	return -EIO;
+}
+
+static struct image_handler image_handler_at91_barebox_image = {
+	.name = "AT91 barebox image",
+	.bootm = do_bootm_at91_barebox_image,
+	.filetype = filetype_arm_barebox,
+};
+
+static int at91_register_barebox_image_handler(void)
+{
+	if (!of_machine_is_compatible("atmel,sama5d2"))
+	    return 0;
+
+	return register_image_handler(&image_handler_at91_barebox_image);
+}
+late_initcall(at91_register_barebox_image_handler);
diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index 6e0f25f32562..fa25a4783b31 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -167,6 +167,7 @@ struct at91_socinfo {
 extern struct at91_socinfo at91_soc_initdata;
 const char *at91_get_soc_type(struct at91_socinfo *c);
 const char *at91_get_soc_subtype(struct at91_socinfo *c);
+extern unsigned long at91_bootsource;
 
 static inline int at91_soc_is_detected(void)
 {
diff --git a/arch/arm/mach-at91/include/mach/sama5_bootsource.h b/arch/arm/mach-at91/include/mach/sama5_bootsource.h
index 0f90afe90232..8355c2eeb69d 100644
--- a/arch/arm/mach-at91/include/mach/sama5_bootsource.h
+++ b/arch/arm/mach-at91/include/mach/sama5_bootsource.h
@@ -46,4 +46,11 @@ static inline int sama5_bootsource_instance(u32 reg)
 #define __sama5d2_stashed_bootrom_r4 \
 	(*(volatile u32 *)(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE - 0x4))
 
+static inline void __noreturn sama5_boot_xload(void __noreturn (*bb)(void), u32 r4)
+{
+	asm volatile("mov r4, %0" : : "r"(r4) : );
+	asm volatile("bx  %0"     : : "r"(bb) : );
+	__builtin_unreachable();
+}
+
 #endif
diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
index f110236b0b10..338577c22174 100644
--- a/arch/arm/mach-at91/include/mach/xload.h
+++ b/arch/arm/mach-at91/include/mach/xload.h
@@ -9,4 +9,3 @@ void __noreturn sama5d2_sdhci_start_image(u32 r4);
 int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
 
 #endif /* __MACH_XLOAD_H */
-
diff --git a/arch/arm/mach-at91/sama5d2.c b/arch/arm/mach-at91/sama5d2.c
index 2ce6d7f36f56..a4aa8a23399d 100644
--- a/arch/arm/mach-at91/sama5d2.c
+++ b/arch/arm/mach-at91/sama5d2.c
@@ -8,6 +8,7 @@
 #include <asm/cache-l2x0.h>
 #include <mach/sama5_bootsource.h>
 #include <asm/mmu.h>
+#include <mach/cpu.h>
 
 #define SFR_CAN		0x48
 #define SFR_L2CC_HRAMC	0x58
@@ -56,15 +57,13 @@ postmmu_initcall(sama5d2_init);
 
 static int sama5d2_bootsource_init(void)
 {
-	u32 r4;
-
 	if (!of_machine_is_compatible("atmel,sama5d2"))
 		return 0;
 
-	r4 = __sama5d2_stashed_bootrom_r4;
+	at91_bootsource = __sama5d2_stashed_bootrom_r4;
 
-	bootsource_set(sama5_bootsource(r4));
-	bootsource_set_instance(sama5_bootsource_instance(r4));
+	bootsource_set(sama5_bootsource(at91_bootsource));
+	bootsource_set_instance(sama5_bootsource_instance(at91_bootsource));
 
 	return 0;
 }
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index b7a66aa0ae80..47247dc97cbc 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -403,3 +403,6 @@ void at91sam_phy_reset(void __iomem *rstc_base)
 	/* Restore NRST value */
 	writel(AT91_RSTC_KEY | (rstc) | AT91_RSTC_URSTEN, rstc_base + AT91_RSTC_MR);
 }
+
+unsigned long at91_bootsource;
+EXPORT_SYMBOL(at91_bootsource);
diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
index 42341fa54bcd..e9edeccb7f05 100644
--- a/arch/arm/mach-at91/xload-mmc.c
+++ b/arch/arm/mach-at91/xload-mmc.c
@@ -8,12 +8,6 @@
 #include <asm/cache.h>
 #include <pbl.h>
 
-static void __naked __noreturn xload_bb(void __noreturn (*bb)(void), u32 r4)
-{
-	asm volatile("mov r4, %0" : : "r"(r4) : );
-	asm volatile("bx  %0"     : : "r"(bb) : );
-}
-
 static void at91_fat_start_image(struct pbl_bio *bio,
 				 void *buf, unsigned int len,
 				 u32 r4)
@@ -31,7 +25,7 @@ static void at91_fat_start_image(struct pbl_bio *bio,
 
 	sync_caches_for_execution();
 
-	xload_bb(bb, r4);
+	sama5_boot_xload(bb, r4);
 }
 
 static const struct sdhci_instance {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
