Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1daPE4-0002UH-SF
 for barebox@lists.infradead.org; Wed, 26 Jul 2017 16:32:07 +0000
Received: by mail-pf0-x244.google.com with SMTP id y25so8476095pfk.4
 for <barebox@lists.infradead.org>; Wed, 26 Jul 2017 09:31:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 26 Jul 2017 09:31:16 -0700
Message-Id: <20170726163120.25952-8-andrew.smirnov@gmail.com>
In-Reply-To: <20170726163120.25952-1-andrew.smirnov@gmail.com>
References: <20170726163120.25952-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 07/11] ARM: i.MX: Add minimal imx7-ccm-regs.h
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add minimal imx7-ccm-regs.h that contains bare minimum definitions
needed for early UART setup.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/imx7-ccm-regs.h | 32 ++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 arch/arm/mach-imx/include/mach/imx7-ccm-regs.h

diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
new file mode 100644
index 000000000..a4217cca5
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
@@ -0,0 +1,32 @@
+#ifndef __MACH_IMX7_CCM_REGS_H__
+#define __MACH_IMX7_CCM_REGS_H__
+
+/* 0 <= n <= 190 */
+#define CCM_CCGRn_SET(n)	(0x4004 + 16 * (n))
+#define CCM_CCGRn_CLR(n)	(0x4008 + 16 * (n))
+
+#define CCM_CCGR_UART1		148
+
+#define CCM_CCGR_SETTINGn(n, s)  ((s) << ((n) * 4))
+#define CCM_CCGR_SETTINGn_NOT_NEEDED(n)		CCM_CCGR_SETTINGn(n, 0b00)
+#define CCM_CCGR_SETTINGn_NEEDED_RUN(n)		CCM_CCGR_SETTINGn(n, 0b01)
+#define CCM_CCGR_SETTINGn_NEEDED_RUN_WAIT(n)	CCM_CCGR_SETTINGn(n, 0b10)
+#define CCM_CCGR_SETTINGn_NEEDED(n)		CCM_CCGR_SETTINGn(n, 0b11)
+
+/* 0 <= n <= 120 */
+#define CCM_TARGET_ROOTn(n)	(0x8000 + 128 * (n))
+
+#define CCM_TARGET_ROOTn_MUX(x)		((x) << 24)
+#define CCM_TARGET_ROOTn_ENABLE		BIT(28)
+
+#define CLOCK_ROOT_INDEX(x)	(((x) - 0x8000) / 128)
+
+/*
+ * Taken from "Table 5-11. Clock Root Table" from i.MX7 Dual Processor
+ * Reference Manual
+ */
+#define UART1_CLK_ROOT		CLOCK_ROOT_INDEX(0xaf80)
+#define UART1_CLK_ROOT__OSC_24M CCM_TARGET_ROOTn_MUX(0b000)
+
+
+#endif
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
