Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwZlz-0002ws-8U
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 15:24:12 +0000
Received: by mail-lb0-f172.google.com with SMTP id v20so4862510lbc.31
 for <barebox@lists.infradead.org>; Tue, 09 Jul 2013 08:23:45 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Tue,  9 Jul 2013 21:23:15 +0600
Message-Id: <1373383397-13205-2-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1373383397-13205-1-git-send-email-agalakhov@gmail.com>
References: <1373383397-13205-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 1/3] friendlyarm-tiny210: do not restart barebox twice
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

The old way to boot tiny210 was to restart barebox after loading stage2 image.
This turned out to be unstable and stopped working after barebox refactoring.
Now jump to the same position in the loaded code instead of starting it from
the very beginning.

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c |   31 ++++++++++++++++++------
 1 file changed, 23 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
index 3bd1379..0c7fbf3 100644
--- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
@@ -31,6 +31,8 @@
 #include <mach/s3c-clocks.h>
 #include <mach/s3c-generic.h>
 
+#define IRAM_CODE_BASE		0xD0020010
+
 /*
  * iROM boot from MMC
  * TODO: replace this by native boot
@@ -50,6 +52,19 @@ int __bare_init s5p_irom_load_mmc(void *dest, uint32_t start_block, uint16_t blo
 	return func(chan, start_block, block_count, (uint32_t*)dest, 0) ? 1 : 0;
 }
 
+static __bare_init __naked void jump_sdram(unsigned long offset)
+{
+	__asm__ __volatile__ (
+			"sub lr, lr, %0;"
+			"mov pc, lr;" : : "r"(offset)
+			);
+}
+
+static __bare_init bool load_stage2(void *dest, size_t size)
+{
+	/* TODO add other ways to boot */
+	return s5p_irom_load_mmc(dest, 1, (size+ 511) / 512);
+}
 
 void __bare_init barebox_arm_reset_vector(void)
 {
@@ -61,18 +76,18 @@ void __bare_init barebox_arm_reset_vector(void)
 	s5p_init_pll();
 #endif
 
-	if (get_pc() < 0xD0000000) /* Are we running from iRAM? */
+	if (get_pc() < IRAM_CODE_BASE) /* Are we running from iRAM? */
 		/* No, we don't. */
-		barebox_arm_entry(S3C_SDRAM_BASE, SZ_64M, 0);
+		goto boot;
 
 	s5p_init_dram_bank_ddr2(S5P_DMC0_BASE, 0x20E00323, 0, 0);
 
-	if (! s5p_irom_load_mmc((void*)TEXT_BASE - 16, 1,
-				(ld_var(_barebox_image_size) + 16 + 511) / 512))
+	if (! load_stage2((void*)(ld_var(_text) - 16),
+				ld_var(_barebox_image_size) + 16))
 		while (1) { } /* hang */
 
-	/* Jump to SDRAM */
-	r = (unsigned)TEXT_BASE;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
-	while (1) { } /* hang */
+	jump_sdram(IRAM_CODE_BASE - ld_var(_text));
+
+boot:
+	barebox_arm_entry(S3C_SDRAM_BASE, SZ_256M, 0);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
