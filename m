Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUU-0003QI-MQ
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:33 +0000
Received: by mail-ww0-f49.google.com with SMTP id 40so1440230wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:26 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:57 +0100
Message-Id: <4d701d4d.9009d80a.2cd3.5ea0@mx.google.com>
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
Subject: [PATCH 43/54] Add arch/nios2/include/asm/pfn.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/pfn.h

---
 arch/nios2/include/asm/pfn.h |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/pfn.h

diff --git a/arch/nios2/include/asm/pfn.h b/arch/nios2/include/asm/pfn.h
new file mode 100644
index 0000000..7646637
--- /dev/null
+++ b/arch/nios2/include/asm/pfn.h
@@ -0,0 +1,13 @@
+#ifndef _LINUX_PFN_H_
+#define _LINUX_PFN_H_
+
+#ifndef __ASSEMBLY__
+#include <linux/types.h>
+#endif
+
+#define PFN_ALIGN(x)	(((unsigned long)(x) + (PAGE_SIZE - 1)) & PAGE_MASK)
+#define PFN_UP(x)	(((x) + PAGE_SIZE-1) >> PAGE_SHIFT)
+#define PFN_DOWN(x)	((x) >> PAGE_SHIFT)
+#define PFN_PHYS(x)	((phys_addr_t)(x) << PAGE_SHIFT)
+
+#endif
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
