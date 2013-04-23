Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUY4h-0001mS-NU
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 07:55:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Apr 2013 09:55:29 +0200
Message-Id: <1366703729-1258-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] pinctrl: move imx-iomux-v1 to drivers/pinctrl/
To: barebox@lists.infradead.org

For consistency reasons.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                                      | 3 +++
 arch/arm/mach-imx/Makefile                                     | 6 +++---
 drivers/pinctrl/Kconfig                                        | 5 +++++
 drivers/pinctrl/Makefile                                       | 1 +
 arch/arm/mach-imx/iomux-v1.c => drivers/pinctrl/imx-iomux-v1.c | 0
 5 files changed, 12 insertions(+), 3 deletions(-)
 rename arch/arm/mach-imx/iomux-v1.c => drivers/pinctrl/imx-iomux-v1.c (100%)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index d76732b..977fea5 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -165,10 +165,12 @@ choice
 config ARCH_IMX1
 	bool "i.MX1"
 	select CPU_ARM920T
+	select PINCTRL_IMX_IOMUX_V1
 
 config ARCH_IMX21
 	bool "i.MX21"
 	select CPU_ARM926T
+	select PINCTRL_IMX_IOMUX_V1
 
 config ARCH_IMX25
 	bool "i.MX25"
@@ -180,6 +182,7 @@ config ARCH_IMX27
 	bool "i.MX27"
 	select CPU_ARM926T
 	select ARCH_HAS_FEC_IMX
+	select PINCTRL_IMX_IOMUX_V1
 
 config ARCH_IMX31
 	select CPU_V6
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 0b156aa..339b6a1 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -1,8 +1,8 @@
 obj-y += clocksource.o gpio.o
-obj-$(CONFIG_ARCH_IMX1)  += imx1.o  iomux-v1.o clk-imx1.o
+obj-$(CONFIG_ARCH_IMX1)  += imx1.o  clk-imx1.o
 obj-$(CONFIG_ARCH_IMX25) += imx25.o clk-imx25.o
-obj-$(CONFIG_ARCH_IMX21) += imx21.o iomux-v1.o clk-imx21.o
-obj-$(CONFIG_ARCH_IMX27) += imx27.o iomux-v1.o clk-imx27.o
+obj-$(CONFIG_ARCH_IMX21) += imx21.o clk-imx21.o
+obj-$(CONFIG_ARCH_IMX27) += imx27.o clk-imx27.o
 obj-$(CONFIG_ARCH_IMX31) += imx31.o clk-imx31.o
 obj-$(CONFIG_ARCH_IMX35) += imx35.o clk-imx35.o
 obj-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o clk-imx5.o
diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 6b73d7b..e6aee50 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -9,6 +9,11 @@ config PINCTRL
 	  from the devicetree. Legacy drivers here may not need this core
 	  support but instead provide their own SoC specific APIs
 
+config PINCTRL_IMX_IOMUX_V1
+	bool "i.MX iomux v1"
+	help
+	  This iomux controller is found on i.MX1,21,27.
+
 config PINCTRL_IMX_IOMUX_V2
 	bool "i.MX iomux v2"
 	help
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index b03a20f..e9272d0 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_PINCTRL)	+= pinctrl.o
+obj-$(CONFIG_PINCTRL_IMX_IOMUX_V1) += imx-iomux-v1.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V2) += imx-iomux-v2.o
 obj-$(CONFIG_PINCTRL_IMX_IOMUX_V3) += imx-iomux-v3.o
diff --git a/arch/arm/mach-imx/iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
similarity index 100%
rename from arch/arm/mach-imx/iomux-v1.c
rename to drivers/pinctrl/imx-iomux-v1.c
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
