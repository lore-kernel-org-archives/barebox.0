Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZ1D-0004mJ-FS
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 20:30:33 +0000
Received: from astat.fritz.box (a89-183-93-199.net-htp.de [89.183.93.199])
 by lynxeye.de (Postfix) with ESMTPA id 2C6E2E7414D
 for <barebox@lists.infradead.org>; Mon,  6 Jan 2020 21:29:53 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon,  6 Jan 2020 21:29:44 +0100
Message-Id: <20200106202945.4565-1-dev@lynxeye.de>
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
Subject: [PATCH 1/2] ARM: zynq: add Zynq specific lowlevel CPU init function
To: barebox@lists.infradead.org

This adds a Zynq specific CPU lowlevel init function, which applies
the required workarounds for the Cortex A9 r3p0 core.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-zynq/Makefile            |  1 +
 arch/arm/mach-zynq/cpu_init.c          | 15 +++++++++++++++
 arch/arm/mach-zynq/include/mach/init.h |  8 ++++++++
 3 files changed, 24 insertions(+)
 create mode 100644 arch/arm/mach-zynq/cpu_init.c
 create mode 100644 arch/arm/mach-zynq/include/mach/init.h

diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile
index c88ab4666f0f..06c2ce996cfa 100644
--- a/arch/arm/mach-zynq/Makefile
+++ b/arch/arm/mach-zynq/Makefile
@@ -1 +1,2 @@
 obj-y += zynq.o bootm-zynqimg.o
+lwl-y += cpu_init.o
diff --git a/arch/arm/mach-zynq/cpu_init.c b/arch/arm/mach-zynq/cpu_init.c
new file mode 100644
index 000000000000..ec5ee59e169d
--- /dev/null
+++ b/arch/arm/mach-zynq/cpu_init.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/errata.h>
+#include <mach/init.h>
+
+void zynq_cpu_lowlevel_init(void)
+{
+	arm_cpu_lowlevel_init();
+
+	enable_arm_errata_761320_war();
+	enable_arm_errata_794072_war();
+	enable_arm_errata_845369_war();
+}
diff --git a/arch/arm/mach-zynq/include/mach/init.h b/arch/arm/mach-zynq/include/mach/init.h
new file mode 100644
index 000000000000..c458f602e4d7
--- /dev/null
+++ b/arch/arm/mach-zynq/include/mach/init.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __MACH_INIT_H
+#define __MACH_INIT_H
+
+void zynq_cpu_lowlevel_init(void);
+
+#endif
-- 
2.24.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
