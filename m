Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egCK3-00030I-Fb
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 16:30:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1egCJo-0001SG-G9
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 17:30:04 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Subject: [PATCH 07/10] ARM: install HYP vectors at PBL and Barebox entry
Date: Mon, 29 Jan 2018 17:30:01 +0100
Message-Id: <20180129163004.10512-8-l.stach@pengutronix.de>
In-Reply-To: <20180129163004.10512-1-l.stach@pengutronix.de>
References: <20180129163004.10512-1-l.stach@pengutronix.de>
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
To: barebox@lists.infradead.org

If the CPU was already in HYP mode when entering the PBL, install a
simple trap handler to allow to get back from SVC to HYP before
switching to HYP mode.

As the vectors are part of the currently running binary, we need to
do the same setup when starting the real Barebox binary, as the PBL
setup vectors might get overwritten. To do this we trap into HYP mode
just before jumping to Barebox and then re-do the vector setup and
SVC switch as the first thing in Barebox proper.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/lowlevel.S   | 3 +++
 arch/arm/cpu/start-pbl.c  | 3 +++
 arch/arm/cpu/start.c      | 3 +++
 arch/arm/cpu/uncompress.c | 4 ++++
 4 files changed, 13 insertions(+)

diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
index 194ce0e7c274..28ad8508726f 100644
--- a/arch/arm/cpu/lowlevel.S
+++ b/arch/arm/cpu/lowlevel.S
@@ -8,6 +8,9 @@ ENTRY(arm_cpu_lowlevel_init)
 	/* save lr, since it may be banked away with a processor mode change */
 	mov	r2, lr
 
+	/* careful: the hyp install corrupts r0 and r1 */
+	bl	__hyp_install
+
 	/* set the cpu to SVC32 mode, mask irq and fiq */
 	mrs	r12 , cpsr
 	eor	r12, r12, #HYP_MODE
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index e851b4a2da5e..cea1cb200b6f 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -100,5 +100,8 @@ __noreturn void barebox_single_pbl_start(unsigned long membase,
 	else
 		barebox = (void *)barebox_base;
 
+	if (__boot_cpu_mode == HYP_MODE)
+		armv7_switch_to_hyp();
+
 	barebox(membase, memsize, boarddata);
 }
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 171e6ad0eb7a..a0db6436f387 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -24,6 +24,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
+#include <asm/secure.h>
 #include <asm/unaligned.h>
 #include <asm/cache.h>
 #include <memory.h>
@@ -145,6 +146,8 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 	unsigned long malloc_start, malloc_end;
 	unsigned long barebox_size = barebox_image_size + MAX_BSS_SIZE;
 
+	armv7_hyp_install();
+
 	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
 		unsigned long barebox_base = arm_mem_barebox_image(membase,
 								   endmem,
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 9d7fe0e921a9..28636aa8101f 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -27,6 +27,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
+#include <asm/secure.h>
 #include <asm/pgtable.h>
 #include <asm/cache.h>
 #include <asm/unaligned.h>
@@ -109,5 +110,8 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
 
 	pr_debug("jumping to uncompressed image at 0x%p\n", barebox);
 
+	if (__boot_cpu_mode == HYP_MODE)
+		armv7_switch_to_hyp();
+
 	barebox(membase, memsize, boarddata);
 }
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
