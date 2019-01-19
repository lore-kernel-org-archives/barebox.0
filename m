Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gktc7-0001No-Mz
 for barebox@lists.infradead.org; Sat, 19 Jan 2019 16:36:59 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat, 19 Jan 2019 17:36:45 +0100
Message-Id: <20190119163647.9119-3-o.rempel@pengutronix.de>
In-Reply-To: <20190119163647.9119-1-o.rempel@pengutronix.de>
References: <20190119163647.9119-1-o.rempel@pengutronix.de>
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
Subject: [PATCH 3/5] MIPS: add ENTRY_FUNCTION_SRAM_END define
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

currently, the only difference is the end if entry function.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/include/asm/asm.h | 15 +++++++++++++++
 arch/mips/lib/Makefile      |  1 +
 arch/mips/lib/end.S         | 16 ++++++++++++++++
 3 files changed, 32 insertions(+)
 create mode 100644 arch/mips/lib/end.S

diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index 7a23f4ed82..4260ea4503 100644
--- a/arch/mips/include/asm/asm.h
+++ b/arch/mips/include/asm/asm.h
@@ -105,6 +105,21 @@ __error:						\
 	b	__error;				\
 	 nop;
 
+/*
+ * ENTRY_FUNCTION_SRAM_END - mark end of sram entry function
+ */
+#define ENTRY_FUNCTION_SRAM_END				\
+	/* trigger a soft breakpoint for OpenOCD */	\
+	SDBBP;						\
+	/* position independent variant of dead loop */	\
+	__error:					\
+	b	__error;				\
+	 nop;						\
+	/* call some code from .text section */		\
+	la	v0, mips_dead_end;			\
+	jal	v0;					\
+	 nop;
+
 /*
  * FEXPORT - export definition of a function symbol
  */
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 1a049c7914..7372e8dc27 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -1,6 +1,7 @@
 extra-$(CONFIG_GENERIC_LINKER_SCRIPT) += barebox.lds
 obj-$(CONFIG_CSRC_R4K_LIB) += csrc-r4k.o
 obj-y += cpu-probe.o
+lwl-y += end.o
 obj-y += traps.o
 obj-y += genex.o
 obj-y += shutdown.o
diff --git a/arch/mips/lib/end.S b/arch/mips/lib/end.S
new file mode 100644
index 0000000000..78bd15ec17
--- /dev/null
+++ b/arch/mips/lib/end.S
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2018 Oleksij Rempel <linux@rempel-privat.de>
+ */
+
+#include <asm/asm.h>
+#include <asm/regdef.h>
+
+	.text
+	.set	noreorder
+LEAF(mips_dead_end)
+__error:
+	b	__error;
+	 nop;
+
+	END(mips_dead_end)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
