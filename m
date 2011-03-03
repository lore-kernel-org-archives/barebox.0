Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUN-0003SD-Ru
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:26 +0000
Received: by mail-ww0-f49.google.com with SMTP id 40so1440284wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:19 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:48 +0100
Message-Id: <4d701d47.9009d80a.2cd3.5e96@mx.google.com>
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
Subject: [PATCH 34/54] Add arch/nios2/include/asm/getorder.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/getorder.h

---
 arch/nios2/include/asm/getorder.h |   24 ++++++++++++++++++++++++
 1 files changed, 24 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/getorder.h

diff --git a/arch/nios2/include/asm/getorder.h b/arch/nios2/include/asm/getorder.h
new file mode 100644
index 0000000..67e7245
--- /dev/null
+++ b/arch/nios2/include/asm/getorder.h
@@ -0,0 +1,24 @@
+#ifndef __ASM_GENERIC_GETORDER_H
+#define __ASM_GENERIC_GETORDER_H
+
+#ifndef __ASSEMBLY__
+
+#include <linux/compiler.h>
+
+/* Pure 2^n version of get_order */
+static inline __attribute_const__ int get_order(unsigned long size)
+{
+	int order;
+
+	size = (size - 1) >> (PAGE_SHIFT - 1);
+	order = -1;
+	do {
+		size >>= 1;
+		order++;
+	} while (size);
+	return order;
+}
+
+#endif	/* __ASSEMBLY__ */
+
+#endif	/* __ASM_GENERIC_GETORDER_H */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
