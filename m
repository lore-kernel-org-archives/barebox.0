Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P9C-0006fX-2q
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:36:59 +0000
Received: by mail-pl1-x644.google.com with SMTP id y15-v6so9579977plr.12
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:35:55 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:35:29 -0700
Message-Id: <20181008063542.18709-4-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063542.18709-1-andrew.smirnov@gmail.com>
References: <20181008063542.18709-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/16] i.MX: Move GPT driver to drivers/clocksource
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move GPT driver to drivers/clocksource and rename it to
timer-imx-gpt.c to match Linux kernel as well as to keep all
clocksource drivers in a common location.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Makefile                                    | 1 -
 drivers/clocksource/Kconfig                                   | 4 ++++
 drivers/clocksource/Makefile                                  | 1 +
 .../clocksource.c => drivers/clocksource/timer-imx-gpt.c      | 0
 4 files changed, 5 insertions(+), 1 deletion(-)
 rename arch/arm/mach-imx/clocksource.c => drivers/clocksource/timer-imx-gpt.c (100%)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 5a01dd57e..97c54406e 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -1,4 +1,3 @@
-obj-y += clocksource.o
 obj-$(CONFIG_ARCH_IMX1)  += imx1.o
 obj-$(CONFIG_ARCH_IMX25) += imx25.o
 obj-$(CONFIG_ARCH_IMX21) += imx21.o
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 2be5a76b3..bb9d57f91 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -74,3 +74,7 @@ config CLOCKSOURCE_ARMV8_TIMER
 config CLOCKSOURCE_ARM_GLOBAL_TIMER
         def_bool y
 	depends on ARM
+
+config CLOCKSOURCE_IMX_GPT
+	def_bool y
+	depends on ARCH_IMX
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 51f6cb2f4..ce4d74137 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -13,3 +13,4 @@ obj-$(CONFIG_CLOCKSOURCE_ROCKCHIP)+= rk_timer.o
 obj-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += timer-atmel-pit.o
 obj-$(CONFIG_CLOCKSOURCE_ARMV8_TIMER) += armv8-timer.o
 obj-$(CONFIG_CLOCKSOURCE_ARM_GLOBAL_TIMER) += arm_global_timer.o
+obj-$(CONFIG_CLOCKSOURCE_IMX_GPT) += timer-imx-gpt.o
diff --git a/arch/arm/mach-imx/clocksource.c b/drivers/clocksource/timer-imx-gpt.c
similarity index 100%
rename from arch/arm/mach-imx/clocksource.c
rename to drivers/clocksource/timer-imx-gpt.c
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
