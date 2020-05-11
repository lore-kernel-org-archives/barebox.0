Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2l6-000072-Sl
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:21:55 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 May 2020 09:21:32 +0200
Message-Id: <20200511072140.29610-16-a.fatoum@pengutronix.de>
In-Reply-To: <20200511072140.29610-1-a.fatoum@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 15/23] sandbox: asm: implement <asm/atomic.h>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For easier code-sharing, the UBIFS code still uses the Kernel's
atomic accessors. Provide a sandbox <asm/atomic.h> header, so we
can compile-test UBI under sandbox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/include/asm/atomic.h | 11 +++++++++++
 arch/sandbox/include/asm/system.h | 14 ++++++++++++++
 2 files changed, 25 insertions(+)
 create mode 100644 arch/sandbox/include/asm/atomic.h
 create mode 100644 arch/sandbox/include/asm/system.h

diff --git a/arch/sandbox/include/asm/atomic.h b/arch/sandbox/include/asm/atomic.h
new file mode 100644
index 000000000000..ef1043493b8f
--- /dev/null
+++ b/arch/sandbox/include/asm/atomic.h
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ *  Copyright (c) 2020 Ahmad Fatoum
+ */
+#ifndef __ASM_SANDBOX_ATOMIC_H
+#define __ASM_SANDBOX_ATOMIC_H
+
+#include <asm/system.h>
+#include <asm-generic/atomic.h>
+
+#endif
diff --git a/arch/sandbox/include/asm/system.h b/arch/sandbox/include/asm/system.h
new file mode 100644
index 000000000000..a9b99b07b9a6
--- /dev/null
+++ b/arch/sandbox/include/asm/system.h
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ *  Copyright (c) 2020 Ahmad Fatoum
+ */
+#ifndef __ASM_SANDBOX_SYSTEM_H
+#define __ASM_SANDBOX_SYSTEM_H
+
+#define local_irq_enable() do { } while (0)
+#define local_irq_disable() do { } while (0)
+#define local_save_flags(x) do { (void)x; } while (0)
+#define local_irq_save(x) do { (void)x; } while (0)
+#define local_irq_restore(x) do { (void)x; } while (0)
+
+#endif
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
