Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQdQy-0000m3-3p
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 18:45:47 +0000
Received: by mail-pl0-x243.google.com with SMTP id a7-v6so1862376plp.3
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 11:45:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jun 2018 11:44:10 -0700
Message-Id: <20180606184431.10348-18-andrew.smirnov@gmail.com>
In-Reply-To: <20180606184431.10348-1-andrew.smirnov@gmail.com>
References: <20180606184431.10348-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 17/38] ARM: i.MX: Add basic CCM constants for i.MX8
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/imx8-ccm-regs.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/imx8-ccm-regs.h

diff --git a/arch/arm/mach-imx/include/mach/imx8-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx8-ccm-regs.h
new file mode 100644
index 000000000..93b584ebe
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx8-ccm-regs.h
@@ -0,0 +1,15 @@
+#ifndef __MACH_IMX8_CCM_REGS_H__
+#define __MACH_IMX8_CCM_REGS_H__
+
+#include "ccm.h"
+
+#define CCM_CCGR_UART1		73
+
+/*
+ * Taken from "Table 5-1. Clock Root Table" from i.MX8M Quad
+ * Applications Processor Reference Manual
+ */
+#define UART1_CLK_ROOT		94
+#define UART1_CLK_ROOT__25M_REF_CLK CCM_TARGET_ROOTn_MUX(0b000)
+
+#endif
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
