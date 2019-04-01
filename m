Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAu1V-0005QH-Cn
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 10:18:43 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 12:18:12 +0200
Message-Id: <20190401101822.7392-5-a.fatoum@pengutronix.de>
In-Reply-To: <20190401101822.7392-1-a.fatoum@pengutronix.de>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 04/15] ARM: at91: replace at91sam9_ddrsdr.h with
 at91bootstrap's at91_ddrsdrc.h
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

Instead of adding missing definitions to the existing at91sam9_ddrsdr.h
and adapting the incoming DDRAM initialization code from at91bootstrap,
just replace the lightly used existing header with:
https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/include/arch/at91_ddrsdrc.h

For easier comprehension, the replacement is done in three steps:
This last step copies the memory size querying functions from at91sam9_ddrsdr.h
to at91_ddrsdrc.h, then deletes it and fixes all references.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |  2 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |  2 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |  2 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c       |  2 +-
 arch/arm/boards/pm9g45/lowlevel.c             |  3 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |  2 +-
 arch/arm/boards/sama5d3xek/lowlevel.c         |  2 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |  2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c          |  2 +-
 arch/arm/mach-at91/at91sam9g45_devices.c      |  2 +-
 arch/arm/mach-at91/at91sam9g45_reset.S        |  2 +-
 arch/arm/mach-at91/at91sam9n12_devices.c      |  2 +-
 arch/arm/mach-at91/at91sam9x5_devices.c       |  2 +-
 .../arm/mach-at91/include/mach/at91_ddrsdrc.h | 44 +++++++++++++++++++
 arch/arm/mach-at91/sama5d3_devices.c          |  2 +-
 arch/arm/mach-at91/sama5d4_devices.c          |  2 +-
 16 files changed, 60 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
index d5deedfc37b5..add97c641998 100644
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
index 24d41cfa70ea..92988d1945e8 100644
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
index 094fd941bc8c..9f460f71a896 100644
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
index 14c239408d6a..d87c0a99f424 100644
--- a/arch/arm/boards/at91sam9x5ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <linux/sizes.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <io.h>
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
index fbf2b655c708..ec2ab7262245 100644
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
index 31c176a3a4c2..37384a160651 100644
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
index 31c176a3a4c2..37384a160651 100644
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
index 47cadfe6750c..89f0b8202eb1 100644
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
index 47cadfe6750c..89f0b8202eb1 100644
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
index df0c8a4e4f4e..ed655863e5c9 100644
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
index 085683c7f9d8..9077871d7203 100644
--- a/arch/arm/mach-at91/at91sam9g45_reset.S
+++ b/arch/arm/mach-at91/at91sam9g45_reset.S
@@ -12,7 +12,7 @@
 
 #include <linux/linkage.h>
 #include <mach/hardware.h>
-#include <mach/at91sam9_ddrsdr.h>
+#include <mach/at91_ddrsdrc.h>
 #include <mach/at91_rstc.h>
 
 			.arm
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index 3ee07568f2c7..6ed7e4fdec41 100644
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
index f794d9ae8f73..e85d712293ac 100644
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
index 57d0d8f489c4..7e68e7dd63eb 100644
--- a/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
+++ b/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
@@ -285,4 +285,48 @@
 #define AT91C_DDRC2_WPVS	(0x1UL << 0)
 #define AT91C_DDRC2_WPSRC	(0xFFFFUL << 8)
 
+#ifndef __ASSEMBLY__
+#include <common.h>
+#include <io.h>
+
+static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
+{
+	u32 cr;
+	u32 mdr;
+	u32 size;
+	bool is_sdram;
+
+	cr = readl(base + AT91C_HDDRSDRC2_CR);
+	mdr = readl(base + AT91C_HDDRSDRC2_MDR);
+
+	/* will always be false for sama5d2, sama5d3 or sama5d4 */
+	is_sdram = (mdr & AT91C_DDRC2_MD) <= AT91C_DDRC2_MD_LP_SDR_SDRAM;
+
+	/* Formula:
+	 * size = bank << (col + row + 1);
+	 * if (bandwidth == 32 bits)
+	 *	size <<= 1;
+	 */
+	size = 1;
+	/* COL */
+	size += (cr & AT91C_DDRC2_NC) + 8;
+	if (!is_sdram)
+		size ++;
+	/* ROW */
+	size += ((cr & AT91C_DDRC2_NR) >> 2) + 11;
+	/* BANK */
+	if (is_nb)
+		size = ((cr & AT91C_DDRC2_NB_BANKS) ? 8 : 4) << size;
+	else
+		size = 4 << size;
+
+	/* bandwidth */
+	if (!(mdr & AT91C_DDRC2_DBW))
+		size <<= 1;
+
+	return size;
+}
+
+#endif /* __ASSEMBLY__ */
+
 #endif /* __AT91_DDRSDRC_H__ */
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index 479e81f0f588..35e66de3f5f7 100644
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
index 4a6683981595..c9c3960258eb 100644
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
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
