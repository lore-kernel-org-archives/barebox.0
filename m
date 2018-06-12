Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSYWu-0006rl-EA
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 01:55:51 +0000
Received: by mail-pg0-x243.google.com with SMTP id c10-v6so5034462pgu.9
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2018 18:55:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Jun 2018 18:52:47 -0700
Message-Id: <20180612015326.26192-16-andrew.smirnov@gmail.com>
In-Reply-To: <20180612015326.26192-1-andrew.smirnov@gmail.com>
References: <20180612015326.26192-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 15/54] ARM: i.MX: Split shared CCM code into a separate file
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both i.MX8 and i.MX7 have similar CCMs, so move any code that can be
share into a separate file.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/ccm.h          | 20 +++++++++++++++++++
 .../arm/mach-imx/include/mach/imx7-ccm-regs.h | 16 +--------------
 2 files changed, 21 insertions(+), 15 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/ccm.h

diff --git a/arch/arm/mach-imx/include/mach/ccm.h b/arch/arm/mach-imx/include/mach/ccm.h
new file mode 100644
index 000000000..32254a85b
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/ccm.h
@@ -0,0 +1,20 @@
+#ifndef __IMX_CCM_H__
+
+/* 0 <= n <= 190 */
+#define CCM_CCGRn_SET(n)	(0x4004 + 16 * (n))
+#define CCM_CCGRn_CLR(n)	(0x4008 + 16 * (n))
+
+/* 0 <= n <= 120 */
+#define CCM_TARGET_ROOTn(n)	(0x8000 + 128 * (n))
+
+#define CCM_TARGET_ROOTn_MUX(x)		((x) << 24)
+#define CCM_TARGET_ROOTn_ENABLE		BIT(28)
+
+
+#define CCM_CCGR_SETTINGn(n, s)  ((s) << ((n) * 4))
+#define CCM_CCGR_SETTINGn_NOT_NEEDED(n)		CCM_CCGR_SETTINGn(n, 0b00)
+#define CCM_CCGR_SETTINGn_NEEDED_RUN(n)		CCM_CCGR_SETTINGn(n, 0b01)
+#define CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)	CCM_CCGR_SETTINGn(n, 0b10)
+#define CCM_CCGR_SETTINGn_NEEDED(n)		CCM_CCGR_SETTINGn(n, 0b11)
+
+#endif
\ No newline at end of file
diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
index 97fe240fc..43b9425df 100644
--- a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
@@ -1,25 +1,11 @@
 #ifndef __MACH_IMX7_CCM_REGS_H__
 #define __MACH_IMX7_CCM_REGS_H__
 
-/* 0 <= n <= 190 */
-#define CCM_CCGRn_SET(n)	(0x4004 + 16 * (n))
-#define CCM_CCGRn_CLR(n)	(0x4008 + 16 * (n))
+#include "ccm.h"
 
 #define CCM_CCGR_UART1		148
 #define CCM_CCGR_UART2		149
 
-#define CCM_CCGR_SETTINGn(n, s)  ((s) << ((n) * 4))
-#define CCM_CCGR_SETTINGn_NOT_NEEDED(n)		CCM_CCGR_SETTINGn(n, 0b00)
-#define CCM_CCGR_SETTINGn_NEEDED_RUN(n)		CCM_CCGR_SETTINGn(n, 0b01)
-#define CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)	CCM_CCGR_SETTINGn(n, 0b10)
-#define CCM_CCGR_SETTINGn_NEEDED(n)		CCM_CCGR_SETTINGn(n, 0b11)
-
-/* 0 <= n <= 120 */
-#define CCM_TARGET_ROOTn(n)	(0x8000 + 128 * (n))
-
-#define CCM_TARGET_ROOTn_MUX(x)		((x) << 24)
-#define CCM_TARGET_ROOTn_ENABLE		BIT(28)
-
 #define CLOCK_ROOT_INDEX(x)	(((x) - 0x8000) / 128)
 
 /*
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
