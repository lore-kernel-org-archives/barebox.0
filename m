Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVD7N-0004iW-S0
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 10:12:24 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri,  7 Dec 2018 11:11:55 +0100
Message-Id: <20181207101156.2213-4-m.tretter@pengutronix.de>
In-Reply-To: <20181207101156.2213-1-m.tretter@pengutronix.de>
References: <20181128112053.6027-1-m.tretter@pengutronix.de>
 <20181207101156.2213-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v3 3/4] ARM: aarch64: add ENTRY_PROC macro for arm64
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

arm64 has no __naked__ attribute and the compiler adds a function prologue
for saving x29 and x30 to the stack for all C functions. This includes
functions defined using the ENTRY_FUNCTION macro. Therefore, the stack
needs to be setup before entering a C function, which is not possible if
the entry is a C function.

Provide a macro to implement the entry in assembly to be able to setup the
stack before entering the low level entry function.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
v3:
- add SPDX-License-Identifier
---
 arch/arm/include/asm/barebox-arm64.h | 35 ++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 arch/arm/include/asm/barebox-arm64.h

diff --git a/arch/arm/include/asm/barebox-arm64.h b/arch/arm/include/asm/barebox-arm64.h
new file mode 100644
index 0000000000..58ff7b9b36
--- /dev/null
+++ b/arch/arm/include/asm/barebox-arm64.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef _BAREBOX_ARM64_H_
+#define _BAREBOX_ARM64_H_
+
+#include <linux/linkage.h>
+
+/*
+ * ENTRY_PROC - mark start of entry procedure
+ */
+#define ENTRY_PROC(name) \
+	.section .text_head_entry_##name; \
+	ENTRY(##name); \
+		b 2f; \
+		nop; \
+		nop; \
+		nop; \
+		nop; \
+		nop; \
+		nop; \
+		nop; \
+		.asciz "barebox"; \
+		.word 0xffffffff; \
+		.word _barebox_image_size; \
+		.rept 8; \
+		.word 0x55555555; \
+		.endr; \
+		2:
+
+/*
+ * ENTRY_PROC_END - mark end of entry procedure
+ */
+#define ENTRY_PROC_END(name) \
+	END(##name)
+
+#endif /* _BAREBOX_ARM64_H_ */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
