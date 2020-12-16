Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpWZ3-0004xB-4y
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 13:09:58 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kpWYx-0001fA-Ha
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 14:09:51 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kpWYx-0006jY-5d
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 14:09:51 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 16 Dec 2020 14:09:47 +0100
Message-Id: <20201216130949.25830-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/3] i.MX7: Add CCM definitions for UART3
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx7-ccm-regs.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
index de6eb1bbd10d..5c60794ca74f 100644
--- a/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-ccm-regs.h
@@ -3,6 +3,7 @@
 
 #define IMX7_CCM_CCGR_UART1		148
 #define IMX7_CCM_CCGR_UART2		149
+#define IMX7_CCM_CCGR_UART3		150
 
 #define IMX7_CLOCK_ROOT_INDEX(x)	(((x) - 0x8000) / 128)
 
@@ -16,6 +17,9 @@
 #define IMX7_UART2_CLK_ROOT		IMX7_CLOCK_ROOT_INDEX(0xb000)
 #define IMX7_UART2_CLK_ROOT__OSC_24M IMX7_CCM_TARGET_ROOTn_MUX(0b000)
 
+#define IMX7_UART3_CLK_ROOT		IMX7_CLOCK_ROOT_INDEX(0xb080)
+#define IMX7_UART3_CLK_ROOT__OSC_24M IMX7_CCM_TARGET_ROOTn_MUX(0b000)
+
 /* 0 <= n <= 190 */
 #define IMX7_CCM_CCGRn_SET(n)	(0x4004 + 16 * (n))
 #define IMX7_CCM_CCGRn_CLR(n)	(0x4008 + 16 * (n))
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
