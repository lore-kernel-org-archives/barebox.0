Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irSdn-0007Ay-In
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 20:18:23 +0000
Received: from astat.fritz.box (a89-183-85-241.net-htp.de [89.183.85.241])
 by lynxeye.de (Postfix) with ESMTPA id 94FC1E7414D
 for <barebox@lists.infradead.org>; Tue, 14 Jan 2020 21:17:47 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 14 Jan 2020 21:17:44 +0100
Message-Id: <20200114201744.267746-1-dev@lynxeye.de>
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
Subject: [PATCH] ARM: qemu-virt64: convert to assembly entry
To: barebox@lists.infradead.org

The C entry function isn't naked, so tries to push to the stack
in the function prologue. This doesn't work on QEMU where there
is no valid SP on entry. Convert the lowlevel entry to the
assembly facilities provided for this case.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/qemu-virt64/Makefile        |  2 +-
 arch/arm/boards/qemu-virt64/lowlevel.c      |  4 +++-
 arch/arm/boards/qemu-virt64/lowlevel_init.S | 12 ++++++++++++
 3 files changed, 16 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/qemu-virt64/lowlevel_init.S

diff --git a/arch/arm/boards/qemu-virt64/Makefile b/arch/arm/boards/qemu-virt64/Makefile
index e35460754898..b394dde0a1fe 100644
--- a/arch/arm/boards/qemu-virt64/Makefile
+++ b/arch/arm/boards/qemu-virt64/Makefile
@@ -1,3 +1,3 @@
 obj-y += init.o
-lwl-y += lowlevel.o
+lwl-y += lowlevel.o lowlevel_init.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-qemu-virt64
diff --git a/arch/arm/boards/qemu-virt64/lowlevel.c b/arch/arm/boards/qemu-virt64/lowlevel.c
index 629e2e9f6ecf..fcb052369abc 100644
--- a/arch/arm/boards/qemu-virt64/lowlevel.c
+++ b/arch/arm/boards/qemu-virt64/lowlevel.c
@@ -10,7 +10,9 @@
 #include <asm/barebox-arm.h>
 #include <asm/system_info.h>
 
-void barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+void qemu_virt64_start(uint32_t, uint32_t, uint32_t);
+
+void noinline qemu_virt64_start(uint32_t r0, uint32_t r1, uint32_t r2)
 {
 	arm_cpu_lowlevel_init();
 	arm_setup_stack(0x40000000 + SZ_2G - SZ_16K);
diff --git a/arch/arm/boards/qemu-virt64/lowlevel_init.S b/arch/arm/boards/qemu-virt64/lowlevel_init.S
new file mode 100644
index 000000000000..1967fadb6cbe
--- /dev/null
+++ b/arch/arm/boards/qemu-virt64/lowlevel_init.S
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#include <linux/linkage.h>
+#include <asm/barebox-arm64.h>
+
+/* The DRAM is already setup */
+#define STACK_TOP 0x80000000
+
+ENTRY_PROC(barebox_arm_reset_vector)
+	mov x0, #STACK_TOP
+	mov sp, x0
+	b qemu_virt64_start
+ENTRY_PROC_END(barebox_arm_reset_vector)
-- 
2.24.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
