Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x235.google.com ([2a00:1450:400c:c09::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzrUB-0003zB-Lk
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:50 +0000
Received: by wmdw130 with SMTP id w130so31971070wmd.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:22 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:35:56 +0100
Message-Id: <1448048172-10080-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 03/19] arm: pxa: Prepare for NAND clkdev lookup on PXA3xx
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

To allow PXA3xx nand driver to be reused on Marvell Armada 370/XP,
prepare to provide a common clock for the NAND driver on PXA3xx.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Robert Jarzmik <robert.jarzmik@free.fr>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/Kconfig                 |  1 +
 arch/arm/mach-pxa/Kconfig        |  2 ++
 arch/arm/mach-pxa/speed-pxa3xx.c | 18 ++++++++++++++++++
 3 files changed, 21 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c03f7dc8830b..9f4d8e958794 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -152,6 +152,7 @@ config ARCH_PXA
 	bool "Intel/Marvell PXA based"
 	select GENERIC_GPIO
 	select HAS_POWEROFF
+	select HAVE_CLK
 
 config ARCH_ROCKCHIP
 	bool "Rockchip RX3xxx"
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 54094f4ca0ed..1c0894892b17 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -17,6 +17,8 @@ config ARCH_PXA2XX
 config ARCH_PXA3XX
        bool
        select CPU_XSC3
+       select CLKDEV_LOOKUP
+       select COMMON_CLK
 
 config ARCH_PXA310
        bool
diff --git a/arch/arm/mach-pxa/speed-pxa3xx.c b/arch/arm/mach-pxa/speed-pxa3xx.c
index 6a08ea78f065..102951736dc0 100644
--- a/arch/arm/mach-pxa/speed-pxa3xx.c
+++ b/arch/arm/mach-pxa/speed-pxa3xx.c
@@ -8,6 +8,9 @@
  */
 
 #include <common.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <linux/clkdev.h>
 #include <mach/clock.h>
 #include <mach/pxa-regs.h>
 
@@ -31,3 +34,18 @@ unsigned long pxa_get_nandclk(void)
 	else
 		return 156000000;
 }
+
+static int pxa3xx_clock_init(void)
+{
+	unsigned long nand_rate = (cpu_is_pxa320()) ? 104000000 : 156000000;
+	struct clk *clk;
+	int ret;
+
+	clk = clk_fixed("nand", nand_rate);
+	ret = clk_register_clkdev(clk, NULL, "nand");
+	if (ret)
+		return ret;
+
+	return 0;
+}
+postcore_initcall(pxa3xx_clock_init);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
