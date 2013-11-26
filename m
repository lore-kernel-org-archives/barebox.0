Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLmR-0000cj-HX
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:46:03 +0100
Message-Id: <1385484367-15366-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/17] ARM: OMAP: Safe boot info in fixed SRAM address
To: barebox@lists.infradead.org

Storing the boot information in the image itself and passing a pointer
around between images is cumbersome and doesn't fit well with multiimage
support where the pointer we pass around is already occupied by the
devicetree.
Do the same as U-Boot does and store the boot information at the bottom
of the SRAM public stack.
To maintain the compatibility between new xloaders and older barebox
binaries we still pass the boot information to the next stage via pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Makefile                      |  4 ++--
 arch/arm/mach-omap/am33xx_generic.c              |  3 ++-
 arch/arm/mach-omap/include/mach/am33xx-generic.h |  3 ++-
 arch/arm/mach-omap/include/mach/am33xx-silicon.h |  1 +
 arch/arm/mach-omap/include/mach/generic.h        |  2 --
 arch/arm/mach-omap/include/mach/omap3-generic.h  |  2 +-
 arch/arm/mach-omap/include/mach/omap3-silicon.h  |  1 +
 arch/arm/mach-omap/include/mach/omap4-generic.h  |  2 +-
 arch/arm/mach-omap/include/mach/omap4-silicon.h  |  3 +--
 arch/arm/mach-omap/omap3_generic.c               |  3 ++-
 arch/arm/mach-omap/omap4_generic.c               |  3 ++-
 arch/arm/mach-omap/omap_bootinfo.S               | 25 ------------------------
 arch/arm/mach-omap/omap_generic.c                | 17 ++++++++++++----
 13 files changed, 28 insertions(+), 41 deletions(-)
 delete mode 100644 arch/arm/mach-omap/omap_bootinfo.S

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 0d5428d..81a771e 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -15,8 +15,8 @@
 # GNU General Public License for more details.
 #
 #
-obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_generic.o omap_fb.o omap_bootinfo.o
-pbl-$(CONFIG_ARCH_OMAP) += syslib.o omap_bootinfo.o
+obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_generic.o omap_fb.o
+pbl-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_DMTIMER0) += dmtimer0.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 68dc933..c227918 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -124,8 +124,9 @@ static int am33xx_bootsource(void)
 {
 	enum bootsource src;
 	int instance = 0;
+	uint32_t *am33xx_bootinfo = (void *)AM33XX_SRAM_SCRATCH_SPACE;
 
-	switch (omap_bootinfo[2] & 0xFF) {
+	switch (am33xx_bootinfo[2] & 0xFF) {
 	case 0x05:
 		src = BOOTSOURCE_NAND;
 		break;
diff --git a/arch/arm/mach-omap/include/mach/am33xx-generic.h b/arch/arm/mach-omap/include/mach/am33xx-generic.h
index e74a666..8472d07 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-generic.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-generic.h
@@ -11,6 +11,7 @@ u32 am33xx_get_cpu_rev(void);
 static inline void am33xx_save_bootinfo(uint32_t *info)
 {
 	unsigned long i = (unsigned long)info;
+	uint32_t *scratch = (void *)AM33XX_SRAM_SCRATCH_SPACE;
 
 	if (i & 0x3)
 		return;
@@ -19,7 +20,7 @@ static inline void am33xx_save_bootinfo(uint32_t *info)
 	if (i > AM33XX_SRAM0_START + AM33XX_SRAM0_SIZE)
 		return;
 
-	omap_save_bootinfo(info);
+	memcpy(scratch, info, 3 * sizeof(uint32_t));
 }
 
 u32 am33xx_running_in_flash(void);
diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index 30b605a..16e665f 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -120,6 +120,7 @@
 /* OCMC */
 #define AM33XX_SRAM0_START			0x402f0400
 #define AM33XX_SRAM0_SIZE			(SZ_128K - SZ_1K)
+#define AM33XX_SRAM_SCRATCH_SPACE		0x4030b800 /* start of public stack */
 #define AM33XX_SRAM_GPMC_STACK_SIZE		(0x40)
 
 /* DDR offsets */
diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
index f4e18f3..a2a48cc 100644
--- a/arch/arm/mach-omap/include/mach/generic.h
+++ b/arch/arm/mach-omap/include/mach/generic.h
@@ -73,8 +73,6 @@ static inline int omap_set_mmc_dev(const char *mmcdev)
 }
 #endif
 
-extern uint32_t omap_bootinfo[3];
-void omap_save_bootinfo(void *data);
 void __noreturn omap_start_barebox(void *barebox);
 
 void omap_set_bootmmc_devname(const char *devname);
diff --git a/arch/arm/mach-omap/include/mach/omap3-generic.h b/arch/arm/mach-omap/include/mach/omap3-generic.h
index 2210d87..5e29bac 100644
--- a/arch/arm/mach-omap/include/mach/omap3-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap3-generic.h
@@ -16,7 +16,7 @@ static inline void omap3_save_bootinfo(uint32_t *info)
 	if (i > OMAP3_SRAM_BASE + SZ_64K)
 		return;
 
-	omap_save_bootinfo(info);
+	memcpy((void *)OMAP3_SRAM_SCRATCH_SPACE, info, 3 * sizeof(uint32_t));
 }
 
 u32 omap3_running_in_flash(void);
diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/arch/arm/mach-omap/include/mach/omap3-silicon.h
index 9138057..b4de045 100644
--- a/arch/arm/mach-omap/include/mach/omap3-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap3-silicon.h
@@ -100,6 +100,7 @@
 
 /** Interrupt Vector base address */
 #define OMAP3_SRAM_BASE		0x40200000
+#define OMAP3_SRAM_SCRATCH_SPACE	0x4020f000 /* start of public stack */
 #define OMAP3_SRAM_INTVECT	0x4020F800
 #define OMAP3_SRAM_INTVECT_COPYSIZE	0x64
 
diff --git a/arch/arm/mach-omap/include/mach/omap4-generic.h b/arch/arm/mach-omap/include/mach/omap4-generic.h
index 85c92e1..e246e36 100644
--- a/arch/arm/mach-omap/include/mach/omap4-generic.h
+++ b/arch/arm/mach-omap/include/mach/omap4-generic.h
@@ -15,7 +15,7 @@ static inline void omap4_save_bootinfo(uint32_t *info)
 	if (i > OMAP44XX_SRAM_BASE + SZ_64K)
 		return;
 
-	omap_save_bootinfo(info);
+	memcpy((void *)OMAP44XX_SRAM_SCRATCH_SPACE, info, 3 * sizeof(uint32_t));
 }
 
 void __noreturn omap4_reset_cpu(unsigned long addr);
diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index 336415c..202da93 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -40,8 +40,7 @@
 #define OMAP44XX_L4_PER_BASE		0x48000000
 
 #define OMAP44XX_SRAM_BASE		0x40300000
-
-#define OMAP44XX_SRAM_BASE		0x40300000
+#define OMAP44XX_SRAM_SCRATCH_SPACE	0x4030c000 /* start of public stack */
 
 /* EMIF and DMM registers */
 #define OMAP44XX_EMIF1_BASE		0x4c000000
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index d36d63b..dbb0b5f 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -469,8 +469,9 @@ void omap3_core_init(void)
 static int omap3_bootsource(void)
 {
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	uint32_t *omap3_bootinfo = (void *)OMAP3_SRAM_SCRATCH_SPACE;
 
-	switch (omap_bootinfo[1] & 0xFF) {
+	switch (omap3_bootinfo[1] & 0xFF) {
 	case 0x02:
 		src = BOOTSOURCE_NAND;
 		break;
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 5dde51a..0b683da 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -505,8 +505,9 @@ static int omap_vector_init(void)
 static int omap4_bootsource(void)
 {
 	enum bootsource src;
+	uint32_t *omap4_bootinfo = (void *)OMAP44XX_SRAM_SCRATCH_SPACE;
 
-	switch (omap_bootinfo[2] & 0xFF) {
+	switch (omap4_bootinfo[2] & 0xFF) {
 	case OMAP44XX_SAR_BOOT_NAND:
 		src = BOOTSOURCE_NAND;
 		break;
diff --git a/arch/arm/mach-omap/omap_bootinfo.S b/arch/arm/mach-omap/omap_bootinfo.S
deleted file mode 100644
index ffd0a3d..0000000
--- a/arch/arm/mach-omap/omap_bootinfo.S
+++ /dev/null
@@ -1,25 +0,0 @@
-#include <config.h>
-#include <linux/linkage.h>
-#include <asm/assembler.h>
-
-.section ".text_bare_init","ax"
-.globl omap_bootinfo
-omap_bootinfo:
-	.word 0x0
-	.word 0x0
-	.word 0x0
-
-.section ".text_bare_init","ax"
-ENTRY(omap_save_bootinfo)
-	/*
-	* save data from rom boot loader
-	*/
-	adr     r2, omap_bootinfo
-	ldr     r1, [r0, #0x00]
-	str     r1, [r2, #0x00]
-	ldr     r1, [r0, #0x04]
-	str     r1, [r2, #0x04]
-	ldr     r1, [r0, #0x08]
-	str     r1, [r2, #0x08]
-	mov	pc, lr
-ENDPROC(omap_save_bootinfo)
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 47fa9ba..3d302f3 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -45,15 +45,24 @@ static void *omap_sram_start(void)
 	return NULL;
 }
 
+static void *omap_scratch_space_start(void)
+{
+	if (cpu_is_am33xx())
+		return (void *)AM33XX_SRAM_SCRATCH_SPACE;
+	if (cpu_is_omap3())
+		return (void *)OMAP3_SRAM_SCRATCH_SPACE;
+	if (cpu_is_omap4())
+		return (void *)OMAP44XX_SRAM_SCRATCH_SPACE;
+	return NULL;
+}
+
 void __noreturn omap_start_barebox(void *barebox)
 {
 	int (*func)(void *) = barebox;
-	uint32_t *arg;
 	void *sramadr = omap_sram_start();
+	void *scratch = omap_scratch_space_start();
 
-	arg = (uint32_t *)&omap_bootinfo;
-
-	memcpy(sramadr, &omap_bootinfo, sizeof(uint32_t) * 3);
+	memcpy(sramadr, scratch, sizeof(uint32_t) * 3);
 
 	shutdown_barebox();
 	func(sramadr);
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
