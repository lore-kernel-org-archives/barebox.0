Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoL9-0008QJ-Hl
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:48:36 +0000
Received: by mail-pg0-x244.google.com with SMTP id l65-v6so11874521pgl.8
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:50 -0700
Message-Id: <20180612184800.4940-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180612184800.4940-1-andrew.smirnov@gmail.com>
References: <20180612184800.4940-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/14] VFxxx: Add common header for DDR clock setting DCD
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

VFxxx support code in Barebox is written assuming a particular clock
setup in mind and all of the supported boards use it. Move the DCD
code responsible for that setup to a shared file to avoid code
duplication.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../flash-header-vf610-twr.imxcfg             | 49 +------------------
 .../flash-header-zii-vf610-dev.imxcfg         | 30 +-----------
 .../flash-header/vf610-ddr-pll2-400mhz.imxcfg | 46 +++++++++++++++++
 3 files changed, 48 insertions(+), 77 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg

diff --git a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
index 12074b92e..d32896c66 100644
--- a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
+++ b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
@@ -5,54 +5,7 @@ dcdofs 0x400
 #include <mach/vf610-iomux-regs.h>
 #include <mach/vf610-ddrmc-regs.h>
 
-/*
- * Ungate all IP block clocks
- */
-wm 32 0x4006b040 0xffffffff
-wm 32 0x4006b044 0xffffffff
-wm 32 0x4006b048 0xffffffff
-wm 32 0x4006b04c 0xffffffff
-wm 32 0x4006b050 0xffffffff
-wm 32 0x4006b058 0xffffffff
-wm 32 0x4006b05c 0xffffffff
-wm 32 0x4006b060 0xffffffff
-wm 32 0x4006b064 0xffffffff
-wm 32 0x4006b068 0xffffffff
-wm 32 0x4006b06c 0xffffffff
-
-
-/*
- * We have to options to clock DDR controller:
- *
- *  - Use Core-A5 clock
- *  - Use PLL2 PFD2 clock
- *
-
- * Using first option without changing PLL settings doesn't seem to be
- * possible given that DDRMC requires minimum of 300Mhz and MaskROM
- * configures it to be clocked at 264Mhz. Changing PLL1 settings
- * proved to be challenging becuase MaskROM code executing this DCD
- * will also be fetching the rest of the bootloader via some
- * peripheral interface whose clock is derived from Cortex-A5 clock.
- *
- * As a result this DCD configuration code uses the second option of
- * clocking DDR wiht PLL2 PFD2 clock output
- *
- * Turn PLL2 on
- */
-wm 32 0x40050030 0x00002001 /* Fout = Fin * 22 */
-
-/*
- * Wait for PLLs to lock
- */
-check 32 until_any_bit_set 0x40050030 0x80000000
-
-/*
- * Switch DDRMC to be clocked with PLL2 PFD2 and enable PFD2 output
- */
-clear_bits 32 0x4006b008 0x00000040
-set_bits   32 0x4006b008 0x00002000
-
+#include <mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg>
 #include <mach/flash-header/vf610-iomux-ddr-default.imxcfg>
 
 wm 32 0x400ae000 0x00000600
diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index 43fb10e28..2086ae85d 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -5,35 +5,7 @@ dcdofs 0x400
 #include <mach/vf610-iomux-regs.h>
 #include <mach/vf610-ddrmc-regs.h>
 
-/*
- * Ungate all IP block clocks
- */
-wm 32 0x4006b040 0xffffffff
-wm 32 0x4006b044 0xffffffff
-wm 32 0x4006b048 0xffffffff
-wm 32 0x4006b04c 0xffffffff
-wm 32 0x4006b050 0xffffffff
-wm 32 0x4006b058 0xffffffff
-wm 32 0x4006b05c 0xffffffff
-wm 32 0x4006b060 0xffffffff
-wm 32 0x4006b064 0xffffffff
-wm 32 0x4006b068 0xffffffff
-wm 32 0x4006b06c 0xffffffff
-
-
-/*
- * Turn PLL2 on
- */
-wm 32 0x40050030 0x00002001 /* Fout = Fin * 22 */
-
-/*
- * Wait for PLLs to lock
- */
-check 32 until_any_bit_set 0x40050030 0x80000000
-
-clear_bits 32 0x4006b008 0x00000040
-set_bits   32 0x4006b008 0x00002000
-
+#include <mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg>
 #include <mach/flash-header/vf610-iomux-ddr-default.imxcfg>
 
 wm 32 0x400ae000 0x00000600
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg
new file mode 100644
index 000000000..74d119b59
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg
@@ -0,0 +1,46 @@
+/*
+ * Ungate all IP block clocks
+ */
+wm 32 0x4006b040 0xffffffff
+wm 32 0x4006b044 0xffffffff
+wm 32 0x4006b048 0xffffffff
+wm 32 0x4006b04c 0xffffffff
+wm 32 0x4006b050 0xffffffff
+wm 32 0x4006b058 0xffffffff
+wm 32 0x4006b05c 0xffffffff
+wm 32 0x4006b060 0xffffffff
+wm 32 0x4006b064 0xffffffff
+wm 32 0x4006b068 0xffffffff
+wm 32 0x4006b06c 0xffffffff
+
+/*
+ * We have to options to clock DDR controller:
+ *
+ *  - Use Core-A5 clock
+ *  - Use PLL2 PFD2 clock
+ *
+
+ * Using first option without changing PLL settings doesn't seem to be
+ * possible given that DDRMC requires minimum of 300Mhz and MaskROM
+ * configures it to be clocked at 264Mhz. Changing PLL1 settings
+ * proved to be challenging becuase MaskROM code executing this DCD
+ * will also be fetching the rest of the bootloader via some
+ * peripheral interface whose clock is derived from Cortex-A5 clock.
+ *
+ * As a result this DCD configuration code uses the second option of
+ * clocking DDR wiht PLL2 PFD2 clock output
+ *
+ * Turn PLL2 on
+ */
+wm 32 0x40050030 0x00002001 /* Fout = Fin * 22 */
+
+/*
+ * Wait for PLLs to lock
+ */
+check 32 until_any_bit_set 0x40050030 0x80000000
+
+/*
+ * Switch DDRMC to be clocked with PLL2 PFD2 and enable PFD2 output
+ */
+clear_bits 32 0x4006b008 0x00000040
+set_bits   32 0x4006b008 0x00002000
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
