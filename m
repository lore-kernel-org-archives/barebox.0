Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCoJR-00029i-I6
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 12:18:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Jul 2015 14:18:29 +0200
Message-Id: <1436357910-4785-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX: Add i.MX5 debug functions
To: Barebox List <barebox@lists.infradead.org>

We recently introduced ungate_all_peripherals and SoC specific low
level UART init functions. Add some more for i.MX5 SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/debug_ll.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
index ab939b3..f2f4768 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -75,6 +75,11 @@ static inline void imx51_uart_setup_ll(void)
 	__imx_uart_setup_ll(54000000);
 }
 
+static inline void imx53_uart_setup_ll(void)
+{
+	__imx_uart_setup_ll(66666666);
+}
+
 static inline void imx6_uart_setup_ll(void)
 {
 	__imx_uart_setup_ll(80000000);
@@ -119,4 +124,14 @@ static inline void imx6_ungate_all_peripherals(void)
 	imx_ungate_all_peripherals(IOMEM(MX6_CCM_BASE_ADDR));
 }
 
+static inline void imx51_ungate_all_peripherals(void)
+{
+	imx_ungate_all_peripherals(IOMEM(MX51_CCM_BASE_ADDR));
+}
+
+static inline void imx53_ungate_all_peripherals(void)
+{
+	imx_ungate_all_peripherals(IOMEM(MX53_CCM_BASE_ADDR));
+}
+
 #endif /* __MACH_DEBUG_LL_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
