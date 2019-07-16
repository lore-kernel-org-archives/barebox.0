Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNq6-0000CM-QA
 for barebox@lists.infradead.org; Tue, 16 Jul 2019 13:49:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jul 2019 15:49:48 +0200
Message-Id: <20190716134948.8609-5-s.hauer@pengutronix.de>
In-Reply-To: <20190716134948.8609-1-s.hauer@pengutronix.de>
References: <20190716134948.8609-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: access __boot_cpu_mode with a function
To: Barebox List <barebox@lists.infradead.org>

__boot_cpu_mode is accessed from barebox_multi_pbl_start() and
barebox_single_pbl_start(). These functions may be called at an
address different from the address they are linked at. Calculating
the address of global variables can yield wrong results when it
is done before setup_c() is called. We can't make sure when the
address is calculated, OSELAS.Toolchain-2018.12.0 indeed calculates
the address after setup_c() is called, but Debian
arm-linux-gnueabihf-gcc 8.3.0 does it before setup_c() is called
and thus doesn't work.
This is solved by accessing __boot_cpu_mode with a wrapper function
which we call explicitly after setup_c() is done.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/common.c         | 8 ++++++++
 arch/arm/cpu/sm.c             | 4 ++--
 arch/arm/cpu/uncompress.c     | 2 +-
 arch/arm/include/asm/secure.h | 3 ++-
 4 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
index 4a2b6734db..4d957da1dc 100644
--- a/arch/arm/cpu/common.c
+++ b/arch/arm/cpu/common.c
@@ -23,6 +23,7 @@
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
+#include <asm/secure.h>
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <debug_ll.h>
@@ -147,3 +148,10 @@ int __pure cpu_architecture(void)
 	return __cpu_architecture;
 }
 #endif
+
+extern int __boot_cpu_mode;
+
+int boot_cpu_mode(void)
+{
+	return __boot_cpu_mode;
+}
diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index b7a9eae89b..1f2c236d5a 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -157,7 +157,7 @@ int armv7_secure_monitor_install(void)
 		return -EINVAL;
 	}
 
-	if (__boot_cpu_mode == HYP_MODE)
+	if (boot_cpu_mode() == HYP_MODE)
 		return 0;
 
 	mmuon = get_cr() & CR_M;
@@ -235,7 +235,7 @@ static int sm_init(void)
 				  bootm_secure_state_names,
 				  ARRAY_SIZE(bootm_secure_state_names));
 
-	if (__boot_cpu_mode == HYP_MODE)
+	if (boot_cpu_mode() == HYP_MODE)
 		bootm_secure_state = ARM_STATE_HYP;
 
 	return 0;
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index c7851c5c75..4f16af22f8 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -103,7 +103,7 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 
 	pr_debug("jumping to uncompressed image at 0x%p\n", barebox);
 
-	if (IS_ENABLED(CONFIG_CPU_V7) && __boot_cpu_mode == HYP_MODE)
+	if (IS_ENABLED(CONFIG_CPU_V7) && boot_cpu_mode() == HYP_MODE)
 		armv7_switch_to_hyp();
 
 	barebox(membase, memsize, boarddata);
diff --git a/arch/arm/include/asm/secure.h b/arch/arm/include/asm/secure.h
index 663d81ea27..e0c2623723 100644
--- a/arch/arm/include/asm/secure.h
+++ b/arch/arm/include/asm/secure.h
@@ -10,7 +10,8 @@ void armv7_switch_to_hyp(void);
 void armv7_hyp_install(void);
 
 extern unsigned char secure_monitor_init_vectors[];
-extern int __boot_cpu_mode;
+
+int boot_cpu_mode(void);
 
 enum arm_security_state {
 	ARM_STATE_SECURE,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
