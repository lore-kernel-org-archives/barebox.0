Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8RX5-0004GR-5T
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 09:34:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jan 2014 10:33:39 +0100
Message-Id: <1390988019-31405-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1390988019-31405-1-git-send-email-s.hauer@pengutronix.de>
References: <1390988019-31405-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: mode cpu_architecture() to common.c
To: barebox@lists.infradead.org

It might be needed in pbl code, so move it to a file which is
compiled in pbl mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/common.c | 14 ++++++++++++++
 arch/arm/cpu/cpu.c    | 14 --------------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 40f784f..d5f8929 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -18,6 +18,7 @@
 #include <common.h>
 #include <init.h>
 #include <sizes.h>
+#include <asm/system_info.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
@@ -64,3 +65,16 @@ void relocate_to_current_adr(void)
 	arm_early_mmu_cache_flush();
 	flush_icache();
 }
+
+#ifdef ARM_MULTIARCH
+
+int __cpu_architecture;
+
+int __pure cpu_architecture(void)
+{
+	if(__cpu_architecture == CPU_ARCH_UNKNOWN)
+		__cpu_architecture = arm_early_get_cpu_architecture();
+
+	return __cpu_architecture;
+}
+#endif
diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index f2e698d..895e07e 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -29,7 +29,6 @@
 #include <asm/system.h>
 #include <asm/memory.h>
 #include <asm-generic/memory_layout.h>
-#include <asm/system_info.h>
 #include <asm/cputype.h>
 #include <asm/cache.h>
 #include <asm/ptrace.h>
@@ -146,16 +145,3 @@ static int execute_init(void)
 }
 postcore_initcall(execute_init);
 #endif
-
-#ifdef ARM_MULTIARCH
-
-int __cpu_architecture;
-
-int __pure cpu_architecture(void)
-{
-	if(__cpu_architecture == CPU_ARCH_UNKNOWN)
-		__cpu_architecture = arm_early_get_cpu_architecture();
-
-	return __cpu_architecture;
-}
-#endif
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
