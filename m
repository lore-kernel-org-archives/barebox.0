Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAtHo-0000oR-2v
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 09:31:27 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 11:31:02 +0200
Message-Id: <20190401093106.4595-7-a.fatoum@pengutronix.de>
In-Reply-To: <20190401093106.4595-1-a.fatoum@pengutronix.de>
References: <20190401093106.4595-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 06/10] ARM: at91: remove at91sam9g45_get_ddram_size helper
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

Substitute the current #ifdefery in at91sam9_ddrsdr.h by
open-coding at91sam9g45_get_ddram_size wherever it was called.

Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |  5 +++--
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |  5 +++--
 arch/arm/boards/pm9g45/lowlevel.c             |  5 +++--
 arch/arm/mach-at91/at91sam9g45_devices.c      |  2 +-
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  | 20 -------------------
 5 files changed, 10 insertions(+), 27 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
index 1d83cdf0bfe1..d5deedfc37b5 100644
--- a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -19,6 +19,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE - 16);
 
-	barebox_arm_entry(AT91_CHIPSELECT_6, at91sam9g45_get_ddram_size(1),
-	                  NULL);
+	barebox_arm_entry(AT91_CHIPSELECT_6, 
+			at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC1), false),
+			NULL);
 }
diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
index 4ccbb9355745..24d41cfa70ea 100644
--- a/arch/arm/boards/at91sam9m10ihd/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
@@ -20,6 +20,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE - 16);
 
-	barebox_arm_entry(AT91_CHIPSELECT_6, at91sam9g45_get_ddram_size(1),
-	                  NULL);
+	barebox_arm_entry(AT91_CHIPSELECT_6,
+			at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC1), false),
+			NULL);
 }
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
index 12cf950685c6..fbf2b655c708 100644
--- a/arch/arm/boards/pm9g45/lowlevel.c
+++ b/arch/arm/boards/pm9g45/lowlevel.c
@@ -19,6 +19,7 @@ void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint
 
 	arm_setup_stack(AT91SAM9G45_SRAM_BASE + AT91SAM9G45_SRAM_SIZE - 16);
 
-	barebox_arm_entry(AT91_CHIPSELECT_6, at91sam9g45_get_ddram_size(1),
-	                  NULL);
+	barebox_arm_entry(AT91_CHIPSELECT_6, 
+			at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC1), false),
+			NULL);
 }
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 43d8d5fbd6a2..df0c8a4e4f4e 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -28,7 +28,7 @@
 void at91_add_device_sdram(u32 size)
 {
 	if (!size)
-		size = at91sam9g45_get_ddram_size(1);
+		size = at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC1), false);
 
 	arm_add_mem_device("ram0", AT91_CHIPSELECT_6, size);
 	add_mem_device("sram0", AT91SAM9G45_SRAM_BASE,
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index 795eb0ce9a9f..9f1a2c78ff46 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -176,26 +176,6 @@ static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
 	return size;
 }
 
-#ifdef CONFIG_SOC_AT91SAM9G45
-#include <mach/at91sam9g45.h>
-static inline u32 at91sam9g45_get_ddram_size(int bank)
-{
-	switch (bank) {
-	case 0:
-		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC0), false);
-	case 1:
-		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC1), false);
-	default:
-		return 0;
-	}
-}
-#else
-static inline u32 at91sam9g45_get_ddram_size(int bank)
-{
-	return 0;
-}
-#endif
-
 #ifdef CONFIG_SOC_AT91SAM9X5
 #include <mach/at91sam9x5.h>
 static inline u32 at91sam9x5_get_ddram_size(void)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
