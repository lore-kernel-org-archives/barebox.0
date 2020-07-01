Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqYmA-0001BP-Iz
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 09:11:46 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 11:10:59 +0200
Message-Id: <20200701091122.3437-6-a.fatoum@pengutronix.de>
In-Reply-To: <20200701091122.3437-1-a.fatoum@pengutronix.de>
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 05/28] ARM: at91: replace at91sam9_ddrsdr.h with
 at91bootstrap's at91_ddrsdrc.h
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Instead of adding missing definitions to the existing at91sam9_ddrsdr.h
and adapting the incoming DDRAM initialization code from at91bootstrap,
just replace the lightly used existing header with:
https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/include/arch/at91_ddrsdrc.h

For easier comprehension, the replacement is done in three steps:
This last step copies the memory size querying functions from at91sam9_ddrsdr.h
to at91_ddrsdrc.h, then deletes it and fixes all references.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |  2 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |  2 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |  2 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c       |  3 +-
 arch/arm/boards/pm9g45/lowlevel.c             |  3 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |  2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c         |  2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |  2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c          |  2 +-
 arch/arm/mach-at91/at91sam9g45_devices.c      |  2 +-
 arch/arm/mach-at91/at91sam9g45_reset.S        |  2 +-
 arch/arm/mach-at91/at91sam9n12_devices.c      |  2 +-
 arch/arm/mach-at91/at91sam9x5_devices.c       |  2 +-
 .../arm/mach-at91/include/mach/at91_ddrsdrc.h | 78 +++++++++++++++
 .../mach-at91/include/mach/at91sam9_ddrsdr.h  | 94 -------------------
 arch/arm/mach-at91/sama5d3_devices.c          |  2 +-
 arch/arm/mach-at91/sama5d4_devices.c          |  2 +-
 17 files changed, 94 insertions(+), 110 deletions(-)
 delete mode 100644 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h

diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
index 0f3a035d1d6f..755e7ec029f9 100644
--- a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -11,7 +11,7 @@
 #include <asm/barebox-arm.h>
 
 #include <mach/hardware.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
 {
diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
index e07ff892cdb0..817c7548c914 100644
--- a/arch/arm/boards/at91sam9m10ihd/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/at91sam9g45.h>
 #include <mach/hardware.h>
 
diff --git a/arch/arm/boards/at91sam9n12ek/lowlevel.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
index 5bc18f8fcad6..4353555d0dd0 100644
--- a/arch/arm/boards/at91sam9n12ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
index c1433c8f7e84..ebd417b19cc0 100644
--- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -1,7 +1,6 @@
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/at91sam9_ddrsdr.h>
-#include <mach/hardware.h>
+#include <mach/at91_ddrsdrc.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
index fc0bfe405b0d..5f66b2825480 100644
--- a/arch/arm/boards/pm9g45/lowlevel.c
+++ b/arch/arm/boards/pm9g45/lowlevel.c
@@ -10,7 +10,8 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
+
 #include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index 8653c48c6936..28c07d50531e 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
index 8653c48c6936..28c07d50531e 100644
--- a/arch/arm/boards/sama5d3xek/lowlevel.c
+++ b/arch/arm/boards/sama5d3xek/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index 9a6a767e5f5b..3c58a08f3b9d 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
index 9a6a767e5f5b..3c58a08f3b9d 100644
--- a/arch/arm/boards/sama5d4ek/lowlevel.c
+++ b/arch/arm/boards/sama5d4ek/lowlevel.c
@@ -10,7 +10,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 43d8d5fbd6a2..389d88c17d4f 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -17,7 +17,7 @@
 #include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9g45_matrix.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/at91_rtt.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
diff --git a/arch/arm/mach-at91/at91sam9g45_reset.S b/arch/arm/mach-at91/at91sam9g45_reset.S
index c3115fd9ca7a..67517bf59114 100644
--- a/arch/arm/mach-at91/at91sam9g45_reset.S
+++ b/arch/arm/mach-at91/at91sam9g45_reset.S
@@ -11,7 +11,7 @@
  */
 
 #include <linux/linkage.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/at91_rstc.h>
 
 			.arm
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index 43cbb79af4a5..91b3e9b2fbc5 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -18,7 +18,7 @@
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9n12_matrix.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/iomux.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index ab506a1f4236..022e4fb59ab9 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -17,7 +17,7 @@
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/iomux.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h b/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
index 17e64fcb9a62..7d70fe4cb4d8 100644
--- a/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
+++ b/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
@@ -292,4 +292,82 @@
 #define AT91_DDRC2_WPVS	(0x1UL << 0)
 #define AT91_DDRC2_WPSRC	(0xFFFFUL << 8)
 
+#ifndef __ASSEMBLY__
+#include <common.h>
+#include <io.h>
+#include <mach/hardware.h>
+
+static inline u32 at91_get_ddram_size(void __iomem *base, bool is_nb)
+{
+	u32 cr;
+	u32 mdr;
+	u32 size;
+	bool is_sdram;
+
+	cr = readl(base + AT91_HDDRSDRC2_CR);
+	mdr = readl(base + AT91_HDDRSDRC2_MDR);
+
+	/* will always be false for sama5d2, sama5d3 or sama5d4 */
+	is_sdram = (mdr & AT91_DDRC2_MD) <= AT91_DDRC2_MD_LP_SDR_SDRAM;
+
+	/* Formula:
+	 * size = bank << (col + row + 1);
+	 * if (bandwidth == 32 bits)
+	 *	size <<= 1;
+	 */
+	size = 1;
+	/* COL */
+	size += (cr & AT91_DDRC2_NC) + 8;
+	if (!is_sdram)
+		size ++;
+	/* ROW */
+	size += ((cr & AT91_DDRC2_NR) >> 2) + 11;
+	/* BANK */
+	if (is_nb)
+		size = ((cr & AT91_DDRC2_NB_BANKS) ? 8 : 4) << size;
+	else
+		size = 4 << size;
+
+	/* bandwidth */
+	if (!(mdr & AT91_DDRC2_DBW))
+		size <<= 1;
+
+	return size;
+}
+
+static inline u32 at91sam9g45_get_ddram_size(int bank)
+{
+	switch (bank) {
+	case 0:
+		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC0), false);
+	case 1:
+		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC1), false);
+	default:
+		return 0;
+	}
+}
+
+static inline u32 at91sam9x5_get_ddram_size(void)
+{
+	return at91_get_ddram_size(IOMEM(AT91SAM9X5_BASE_DDRSDRC0), true);
+}
+
+static inline u32 at91sam9n12_get_ddram_size(void)
+{
+	return at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
+}
+
+static inline u32 at91sama5d3_get_ddram_size(void)
+{
+	return at91_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC), true);
+}
+
+static inline u32 at91sama5d4_get_ddram_size(void)
+{
+	return at91_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC), true);
+}
+
+
+#endif /* __ASSEMBLY__ */
+
 #endif	/* #ifndef __AT91_DDRSDRC_H__ */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
deleted file mode 100644
index 0341951ff3e0..000000000000
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ /dev/null
@@ -1,94 +0,0 @@
-/*
- * Header file for the Atmel DDR/SDR SDRAM Controller
- *
- * Copyright (C) 2010 Atmel Corporation
- *	Nicolas Ferre <nicolas.ferre@atmel.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- */
-#ifndef AT91SAM9_DDRSDR_H
-#define AT91SAM9_DDRSDR_H
-
-#include <mach/at91_ddrsdrc.h>
-
-#ifndef __ASSEMBLY__
-#include <common.h>
-#include <io.h>
-#include <mach/hardware.h>
-
-static inline u32 at91_get_ddram_size(void __iomem *base, bool is_nb)
-{
-	u32 cr;
-	u32 mdr;
-	u32 size;
-	bool is_sdram;
-
-	cr = readl(base + AT91_HDDRSDRC2_CR);
-	mdr = readl(base + AT91_HDDRSDRC2_MDR);
-
-	/* will always be false for sama5d2, sama5d3 or sama5d4 */
-	is_sdram = (mdr & AT91_DDRC2_MD) <= AT91_DDRC2_MD_LP_SDR_SDRAM;
-
-	/* Formula:
-	 * size = bank << (col + row + 1);
-	 * if (bandwidth == 32 bits)
-	 *	size <<= 1;
-	 */
-	size = 1;
-	/* COL */
-	size += (cr & AT91_DDRC2_NC) + 8;
-	if (!is_sdram)
-		size ++;
-	/* ROW */
-	size += ((cr & AT91_DDRC2_NR) >> 2) + 11;
-	/* BANK */
-	if (is_nb)
-		size = ((cr & AT91_DDRC2_NB_BANKS) ? 8 : 4) << size;
-	else
-		size = 4 << size;
-
-	/* bandwidth */
-	if (!(mdr & AT91_DDRC2_DBW))
-		size <<= 1;
-
-	return size;
-}
-
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
-
-static inline u32 at91sam9x5_get_ddram_size(void)
-{
-	return at91_get_ddram_size(IOMEM(AT91SAM9X5_BASE_DDRSDRC0), true);
-}
-
-static inline u32 at91sam9n12_get_ddram_size(void)
-{
-	return at91_get_ddram_size(IOMEM(AT91SAM9N12_BASE_DDRSDRC0), true);
-}
-
-static inline u32 at91sama5d3_get_ddram_size(void)
-{
-	return at91_get_ddram_size(IOMEM(SAMA5D3_BASE_MPDDRC), true);
-}
-
-static inline u32 at91sama5d4_get_ddram_size(void)
-{
-	return at91_get_ddram_size(IOMEM(SAMA5D4_BASE_MPDDRC), true);
-}
-
-#endif
-
-#endif
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index bf4a03d40407..e29ed2ba976c 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -18,7 +18,7 @@
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/iomux.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
diff --git a/arch/arm/mach-at91/sama5d4_devices.c b/arch/arm/mach-at91/sama5d4_devices.c
index 5a1109dc0eab..7be9e260d4a6 100644
--- a/arch/arm/mach-at91/sama5d4_devices.c
+++ b/arch/arm/mach-at91/sama5d4_devices.c
@@ -19,7 +19,7 @@
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/iomux.h>
 #include <mach/cpu.h>
 #include <i2c/i2c-gpio.h>
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
