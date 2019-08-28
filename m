Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xQ4-0005EK-R2
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 12:51:26 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Aug 2019 14:51:18 +0200
Message-Id: <20190828125119.10431-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: allow booting with MMU enabled
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Linux expects the MMU to be off on boot as does barebox, when being
chainloaded. However for running executables or for testing things,
booting with the MMU (and thus the caches) on can be nice.

Support this, by having architectures define HAVE_MMU_OFF_FOR_BOOT,
if they are turning off the MMU. These architectures are then supposed
to implement mmu_boot_enabled(), which should disable turning off
the MMU on barebox shutdown. A follow-up commit will add a new -m
flag to the go command that calls this function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---

This is similiar to the U-Boot go command, but safer. Devices are shut
down and cache maintenance is done correctly. The command might not
be of much generic use at the moment, but I occasionly found it useful.

---
 arch/arm/Kconfig   |  1 +
 arch/arm/cpu/cpu.c | 13 +++++++++++--
 common/Kconfig     |  3 +++
 include/mmu.h      |  9 +++++++++
 4 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 480c6f011797..b312aabacb72 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -4,6 +4,7 @@ config ARM
 	select HAS_CACHE
 	select HAVE_CONFIGURABLE_TEXT_BASE if !RELOCATABLE
 	select HAVE_IMAGE_COMPRESSION
+	select HAVE_MMU_OFF_FOR_BOOT
 	default y
 
 config ARM_LINUX
diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index c5daf6c60efe..65566006693e 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -25,6 +25,7 @@
 #include <init.h>
 #include <command.h>
 #include <cache.h>
+#include <mmu.h>
 #include <asm/mmu.h>
 #include <asm/system.h>
 #include <asm/memory.h>
@@ -90,6 +91,12 @@ static void disable_interrupts(void)
 #endif
 }
 
+static bool _mmu_boot_enabled;
+void mmu_boot_enabled(void)
+{
+	_mmu_boot_enabled = true;
+}
+
 /**
  * Disable MMU and D-cache, flush caches
  * @return 0 (always)
@@ -99,9 +106,11 @@ static void disable_interrupts(void)
  */
 static void arch_shutdown(void)
 {
-
 #ifdef CONFIG_MMU
-	mmu_disable();
+	if (!_mmu_boot_enabled)
+		mmu_disable();
+	else
+		arm_early_mmu_cache_flush();
 #endif
 	icache_invalidate();
 
diff --git a/common/Kconfig b/common/Kconfig
index f5777a304cf5..4628e72c0e3f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -209,6 +209,9 @@ config MMU_EARLY
 	  This enables the MMU during early startup. This speeds up things during startup
 	  of barebox, but may lead to harder to debug code. If unsure say yes here.
 
+config HAVE_MMU_OFF_FOR_BOOT
+	bool
+
 config HAVE_CONFIGURABLE_TEXT_BASE
 	bool
 
diff --git a/include/mmu.h b/include/mmu.h
index 66b246f6d270..06939ab97175 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -38,4 +38,13 @@ static inline int remap_range(void *start, size_t size, unsigned flags)
 	return arch_remap_range(start, size, flags);
 }
 
+#ifdef CONFIG_HAVE_MMU_OFF_FOR_BOOT
+void mmu_boot_enabled(void);
+#else
+static inline void mmu_boot_enabled(void)
+{
+}
+#endif
+
+
 #endif
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
