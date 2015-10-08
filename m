Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x231.google.com ([2a00:1450:400c:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkJKr-0001l4-Et
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 22:06:52 +0000
Received: by wicge5 with SMTP id ge5so44528961wic.0
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 15:06:26 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  9 Oct 2015 00:06:03 +0200
Message-Id: <1444341979-19157-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 01/17] arm: pxa: Prepare for NAND clkdev lookup on PXA3xx
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

To allow PXA3xx nand driver to be reused on Marvell Armada 370/XP,
prepare to provide a common clock for the NAND driver on PXA3xx.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org
---
 arch/arm/Kconfig                 |  1 +
 arch/arm/mach-pxa/Kconfig        |  2 ++
 arch/arm/mach-pxa/speed-pxa3xx.c | 16 ++++++++++++++++
 3 files changed, 19 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 203f912e96e5..90af91819f08 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -147,6 +147,7 @@ config ARCH_PXA
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
index 6a08ea78f065..91e03eae4a52 100644
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
 
@@ -31,3 +34,16 @@ unsigned long pxa_get_nandclk(void)
 	else
 		return 156000000;
 }
+
+static int pxa3xx_clock_init(void)
+{
+	unsigned long nand_rate = (cpu_is_pxa320()) ? 104000000 : 156000000;
+	struct clk *clk;
+
+	clk = clk_fixed("nand", nand_rate);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	return clk_register_clkdev(clk, NULL, "mrvl_nand");
+}
+postcore_initcall(pxa3xx_clock_init);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
