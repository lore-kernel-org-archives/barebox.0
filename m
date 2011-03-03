Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUc-0003b4-1q
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:42 +0000
Received: by wyf23 with SMTP id 23so1676487wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:32 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:59:07 +0100
Message-Id: <4d701d54.9009d80a.2cd3.5eac@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 53/54] Add arch/nios2/include/asm/types.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/types.h

---
 arch/nios2/include/asm/types.h |   31 +++++++++++++++++++++++++++++++
 1 files changed, 31 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/types.h

diff --git a/arch/nios2/include/asm/types.h b/arch/nios2/include/asm/types.h
new file mode 100644
index 0000000..bd61ab8
--- /dev/null
+++ b/arch/nios2/include/asm/types.h
@@ -0,0 +1,31 @@
+#ifndef __ASM_ARM_TYPES_H
+#define __ASM_ARM_TYPES_H
+
+#include <asm/int-ll64.h>
+
+#ifndef __ASSEMBLY__
+
+typedef unsigned short umode_t;
+
+#endif /* __ASSEMBLY__ */
+
+/*
+ * These aren't exported outside the kernel to avoid name space clashes
+ */
+#ifdef __KERNEL__
+
+#define BITS_PER_LONG 32
+
+#ifndef __ASSEMBLY__
+
+/* Dma addresses are 32-bits wide.  */
+
+typedef u32 dma_addr_t;
+typedef u32 dma64_addr_t;
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __KERNEL__ */
+
+#endif
+
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
