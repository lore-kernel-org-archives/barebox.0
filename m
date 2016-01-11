Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIQpI-0003KV-PV
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 00:59:20 +0000
Received: by mail-pf0-x243.google.com with SMTP id n128so2997948pfn.3
 for <barebox@lists.infradead.org>; Sun, 10 Jan 2016 16:58:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 10 Jan 2016 16:58:12 -0800
Message-Id: <1452473892-19791-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1452473892-19791-1-git-send-email-andrew.smirnov@gmail.com>
References: <1452473892-19791-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] ARM: Fix exception table setup in MMU-less mode
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code necessary for correct initialization of exception vector
table when MMU is disabled.

Note: Only ARMv7 support is implemented

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
Changes since v1 (http://lists.infradead.org/pipermail/barebox/2015-December/025685.html):

	- Check CPU architecture at runtime
	- Remove untested code for ARMv5

---
 arch/arm/cpu/Makefile |  6 +++++
 arch/arm/cpu/no-mmu.c | 63 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 69 insertions(+)
 create mode 100644 arch/arm/cpu/no-mmu.c

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 418bcab..f708e8f 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -11,6 +11,12 @@ obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
 obj-$(CONFIG_OFDEVICE) += dtb.o
 obj-$(CONFIG_MMU) += mmu.o cache.o mmu-early.o
 pbl-$(CONFIG_MMU) += mmu-early.o
+
+ifeq ($(CONFIG_MMU),)
+obj-y += no-mmu.o
+pbl-y += no-mmu.o
+endif
+
 obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
 pbl-$(CONFIG_CPU_32v4T) += cache-armv4.o
 obj-$(CONFIG_CPU_32v5) += cache-armv5.o
diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
new file mode 100644
index 0000000..4da053f
--- /dev/null
+++ b/arch/arm/cpu/no-mmu.c
@@ -0,0 +1,63 @@
+/*
+ * Copyright (c) 2015 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#define pr_fmt(fmt)	"nommu: " fmt
+
+#include <common.h>
+#include <dma-dir.h>
+#include <init.h>
+#include <mmu.h>
+#include <errno.h>
+#include <linux/sizes.h>
+#include <asm/memory.h>
+#include <asm/barebox-arm.h>
+#include <asm/system.h>
+#include <asm/cache.h>
+#include <memory.h>
+#include <asm/system_info.h>
+#include <debug_ll.h>
+
+
+#define __exceptions_size (__exceptions_stop - __exceptions_start)
+
+static int nommu_v7_vectors_init(void)
+{
+	if (cpu_architecture() < CPU_ARCH_ARMv7)
+		return 0;
+
+
+	void *vectors;
+	u32 cr;
+
+
+	/*
+	 * High vectors cannot be re-mapped, so we have to use normal
+	 * vectors
+	 */
+	cr = get_cr();
+	cr &= ~CR_V;
+	set_cr(cr);
+
+	arm_fixup_vectors();
+
+	vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
+	memset(vectors, 0, PAGE_SIZE);
+	memcpy(vectors, __exceptions_start, __exceptions_size);
+
+	set_vbar((unsigned int)vectors);
+
+	return 0;
+}
+mmu_initcall(nommu_v7_vectors_init);
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
