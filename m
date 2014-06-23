Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x233.google.com ([2a00:1450:400c:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAZy-000131-Dl
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:10 +0000
Received: by mail-we0-f179.google.com with SMTP id w62so7594774wes.38
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:10:40 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:32 +0200
Message-Id: <1403554235-12674-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 4/7] ARM: mvebu: move lowlevel code to lowlevel.c
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

mach-mvebu has two files containing lowlevel code. Consolidate both into
mach-mvebu/lowlevel.c. Also put the now empty mach-mvebu/common.c into
non-lowlevel obj-y as it will be used for common non-lowlevel code later.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/Makefile   |  2 +-
 arch/arm/mach-mvebu/common.c   | 40 ----------------------------------------
 arch/arm/mach-mvebu/lowlevel.c | 37 +++++++++++++++++++++++++++++++++++++
 3 files changed, 38 insertions(+), 41 deletions(-)

diff --git a/arch/arm/mach-mvebu/Makefile b/arch/arm/mach-mvebu/Makefile
index 6e303663ca89..80b3947cc866 100644
--- a/arch/arm/mach-mvebu/Makefile
+++ b/arch/arm/mach-mvebu/Makefile
@@ -1,5 +1,5 @@
 lwl-y				+= lowlevel.o
-lwl-y				+= common.o
+obj-y				+= common.o
 obj-$(CONFIG_ARCH_ARMADA_370)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_ARMADA_XP)	+= armada-370-xp.o
 obj-$(CONFIG_ARCH_DOVE)		+= dove.o
diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
index d52b88d71318..4a78a0f37ec5 100644
--- a/arch/arm/mach-mvebu/common.c
+++ b/arch/arm/mach-mvebu/common.c
@@ -15,43 +15,3 @@
  *
  */
 
-#include <common.h>
-#include <io.h>
-#include <sizes.h>
-#include <asm/barebox-arm.h>
-#include <mach/common.h>
-
-/*
- * All MVEBU SoCs start with internal registers at 0xd0000000.
- * To get more contiguous address space and as Linux expects them
- * there, we remap them early to 0xf1000000.
- *
- * There is no way to determine internal registers base address
- * safely later on, as the remap register itself is within the
- * internal registers.
- */
-#define MVEBU_BOOTUP_INT_REG_BASE	0xd0000000
-#define MVEBU_BRIDGE_REG_BASE		0x20000
-#define DEVICE_INTERNAL_BASE_ADDR	(MVEBU_BRIDGE_REG_BASE + 0x80)
-
-static void mvebu_remap_registers(void)
-{
-	writel(MVEBU_REMAP_INT_REG_BASE,
-	       IOMEM(MVEBU_BOOTUP_INT_REG_BASE) + DEVICE_INTERNAL_BASE_ADDR);
-}
-
-/*
- * Determining the actual memory size is highly SoC dependent,
- * but for all SoCs RAM starts at 0x00000000. Therefore, we start
- * with a minimal memory setup of 64M and probe correct memory size
- * later.
- */
-#define MVEBU_BOOTUP_MEMORY_BASE	0x00000000
-#define MVEBU_BOOTUP_MEMORY_SIZE	SZ_64M
-
-void __naked __noreturn mvebu_barebox_entry(void *boarddata)
-{
-	mvebu_remap_registers();
-	barebox_arm_entry(MVEBU_BOOTUP_MEMORY_BASE,
-			  MVEBU_BOOTUP_MEMORY_SIZE, boarddata);
-}
diff --git a/arch/arm/mach-mvebu/lowlevel.c b/arch/arm/mach-mvebu/lowlevel.c
index 147a717ad9f3..7c4facfa1c00 100644
--- a/arch/arm/mach-mvebu/lowlevel.c
+++ b/arch/arm/mach-mvebu/lowlevel.c
@@ -16,9 +16,11 @@
  */
 
 #include <common.h>
+#include <io.h>
 #include <sizes.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
+#include <mach/common.h>
 #include <mach/lowlevel.h>
 
 void __naked barebox_arm_reset_vector(void)
@@ -26,3 +28,38 @@ void __naked barebox_arm_reset_vector(void)
 	arm_cpu_lowlevel_init();
 	mvebu_barebox_entry(NULL);
 }
+
+/*
+ * All MVEBU SoCs start with internal registers at 0xd0000000.
+ * To get more contiguous address space and as Linux expects them
+ * there, we remap them early to 0xf1000000.
+ *
+ * There is no way to determine internal registers base address
+ * safely later on, as the remap register itself is within the
+ * internal registers.
+ */
+#define MVEBU_BOOTUP_INT_REG_BASE	0xd0000000
+#define MVEBU_BRIDGE_REG_BASE		0x20000
+#define DEVICE_INTERNAL_BASE_ADDR	(MVEBU_BRIDGE_REG_BASE + 0x80)
+
+static void mvebu_remap_registers(void)
+{
+	writel(MVEBU_REMAP_INT_REG_BASE,
+	       IOMEM(MVEBU_BOOTUP_INT_REG_BASE) + DEVICE_INTERNAL_BASE_ADDR);
+}
+
+/*
+ * Determining the actual memory size is highly SoC dependent,
+ * but for all SoCs RAM starts at 0x00000000. Therefore, we start
+ * with a minimal memory setup of 64M and probe correct memory size
+ * later.
+ */
+#define MVEBU_BOOTUP_MEMORY_BASE	0x00000000
+#define MVEBU_BOOTUP_MEMORY_SIZE	SZ_64M
+
+void __naked __noreturn mvebu_barebox_entry(void *boarddata)
+{
+	mvebu_remap_registers();
+	barebox_arm_entry(MVEBU_BOOTUP_MEMORY_BASE,
+			  MVEBU_BOOTUP_MEMORY_SIZE, boarddata);
+}
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
