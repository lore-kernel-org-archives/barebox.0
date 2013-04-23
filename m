Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUY4Z-0001kw-UE
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 07:55:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Apr 2013 09:55:28 +0200
Message-Id: <1366703729-1258-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366703729-1258-1-git-send-email-s.hauer@pengutronix.de>
References: <1366703729-1258-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] pinctrl: move imx-iomux-v2 to drivers/pinctrl/
To: barebox@lists.infradead.org

For consistency reasons.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                                      | 1 +
 arch/arm/mach-imx/Makefile                                     | 2 +-
 drivers/pinctrl/Kconfig                                        | 5 +++++
 drivers/pinctrl/Makefile                                       | 1 +
 arch/arm/mach-imx/iomux-v2.c => drivers/pinctrl/imx-iomux-v2.c | 0
 5 files changed, 8 insertions(+), 1 deletion(-)
 rename arch/arm/mach-imx/iomux-v2.c => drivers/pinctrl/imx-iomux-v2.c (100%)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 1c3199f..d76732b 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -184,6 +184,7 @@ config ARCH_IMX27
 config ARCH_IMX31
 	select CPU_V6
 	bool "i.MX31"
+	select PINCTRL_IMX_IOMUX_V2
 
 config ARCH_IMX35
 	bool "i.MX35"
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index c98a302..0b156aa 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -3,7 +3,7 @@ obj-$(CONFIG_ARCH_IMX1)  += imx1.o  iomux-v1.o clk-imx1.o
 obj-$(CONFIG_ARCH_IMX25) += imx25.o clk-imx25.o
 obj-$(CONFIG_ARCH_IMX21) += imx21.o iomux-v1.o clk-imx21.o
 obj-$(CONFIG_ARCH_IMX27) += imx27.o iomux-v1.o clk-imx27.o
-obj-$(CONFIG_ARCH_IMX31) += imx31.o iomux-v2.o clk-imx31.o
+obj-$(CONFIG_ARCH_IMX31) += imx31.o clk-imx31.o
 obj-$(CONFIG_ARCH_IMX35) += imx35.o clk-imx35.o
 obj-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o clk-imx5.o
 obj-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o clk-imx5.o esdctl-v4.o
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 6ce01bf..6b73d7b 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -9,6 +9,11 @@ config PINCTRL
 	  from the devicetree. Legacy drivers here may not need this core
 	  support but instead provide their own SoC specific APIs
 
+config PINCTRL_IMX_IOMUX_V2
+	bool "i.MX iomux v2"
+	help
+	  This iomux controller is found on i.MX31.
+
 config PINCTRL_IMX_IOMUX_V3
 	select PINCTRL if OFDEVICE
 	bool "i.MX iomux v3"
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index 134c889..b03a20f 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_PINCTRL)	+= pinctrl.o
+obj-$(CONFIG_PINCTRL_IMX_IOMUX_V2) += imx-iomux-v2.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V3) += imx-iomux-v3.o
diff --git a/arch/arm/mach-imx/iomux-v2.c b/drivers/pinctrl/imx-iomux-v2.c
similarity index 100%
rename from arch/arm/mach-imx/iomux-v2.c
rename to drivers/pinctrl/imx-iomux-v2.c
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
