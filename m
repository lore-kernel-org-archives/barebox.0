Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9vxv-0002iB-G2
 for barebox@lists.infradead.org; Tue, 09 Oct 2018 17:38:48 +0000
Received: by mail-pl1-x641.google.com with SMTP id p25-v6so1164930pli.11
 for <barebox@lists.infradead.org>; Tue, 09 Oct 2018 10:38:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  9 Oct 2018 10:37:53 -0700
Message-Id: <20181009173805.26181-6-andrew.smirnov@gmail.com>
In-Reply-To: <20181009173805.26181-1-andrew.smirnov@gmail.com>
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 05/17] clocksource: Introduce ARCH_HAS_IMX_GPT
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Not all SoCs use i.MX GPT block as a clocksource, so introduce
ARCH_HAS_IMX_GPT to mark the ones that do.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Kconfig   | 11 +++++++++++
 drivers/clocksource/Kconfig |  5 ++++-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 8d161bee2..3aff62d89 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -85,58 +85,68 @@ comment "Freescale i.MX System-on-Chip"
 config ARCH_IMX1
 	bool
 	select CPU_ARM920T
+	select ARCH_HAS_IMX_GPT
 	select PINCTRL_IMX_IOMUX_V1
 
 config ARCH_IMX21
 	bool
 	select CPU_ARM926T
+	select ARCH_HAS_IMX_GPT
 	select PINCTRL_IMX_IOMUX_V1
 
 config ARCH_IMX25
 	bool
 	select CPU_ARM926T
 	select ARCH_HAS_FEC_IMX
+	select ARCH_HAS_IMX_GPT
 	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX27
 	bool
 	select CPU_ARM926T
 	select ARCH_HAS_FEC_IMX
+	select ARCH_HAS_IMX_GPT
 	select PINCTRL_IMX_IOMUX_V1
 
 config ARCH_IMX31
 	select CPU_V6
 	bool
+	select ARCH_HAS_IMX_GPT
 	select PINCTRL_IMX_IOMUX_V2
 
 config ARCH_IMX35
 	bool
 	select CPU_V6
 	select ARCH_HAS_FEC_IMX
+	select ARCH_HAS_IMX_GPT
 	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX50
 	bool
 	select CPU_V7
 	select ARCH_HAS_FEC_IMX
+	select ARCH_HAS_IMX_GPT
 	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX51
 	bool
 	select CPU_V7
 	select ARCH_HAS_FEC_IMX
+	select ARCH_HAS_IMX_GPT
 	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX53
 	bool
 	select CPU_V7
 	select ARCH_HAS_FEC_IMX
+	select ARCH_HAS_IMX_GPT
 	select PINCTRL_IMX_IOMUX_V3
 
 config ARCH_IMX6
 	bool
 	select ARCH_HAS_L2X0
 	select ARCH_HAS_FEC_IMX
+	select ARCH_HAS_IMX_GPT
 	select CPU_V7
 	select PINCTRL_IMX_IOMUX_V3
 	select OFTREE
@@ -164,6 +174,7 @@ config ARCH_IMX7
 	select OFTREE
 	select COMMON_CLK_OF_PROVIDER
 	select ARCH_HAS_FEC_IMX
+	select ARCH_HAS_IMX_GPT
 
 config ARCH_IMX8MQ
 	bool
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index c65066ccf..a33532652 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -1,3 +1,6 @@
+config ARCH_HAS_IMX_GPT
+       bool
+
 config AMBA_SP804
 	bool
 	depends on ARM_AMBA
@@ -76,4 +79,4 @@ config CLOCKSOURCE_ARM_GLOBAL_TIMER
 	depends on ARM && CPU_V7
 config CLOCKSOURCE_IMX_GPT
 	def_bool y
-	depends on ARCH_IMX
+	depends on ARCH_HAS_IMX_GPT
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
