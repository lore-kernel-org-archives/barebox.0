Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gBsW7-0006so-Bm
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 02:22:06 +0000
Received: by mail-pg1-x544.google.com with SMTP id c10-v6so8407962pgq.4
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2018 19:21:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Oct 2018 19:21:07 -0700
Message-Id: <20181015022125.24020-5-andrew.smirnov@gmail.com>
In-Reply-To: <20181015022125.24020-1-andrew.smirnov@gmail.com>
References: <20181015022125.24020-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 04/22] i.MX: Move GPT driver to drivers/clocksource
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move GPT driver to drivers/clocksource and rename it to
timer-imx-gpt.c to match Linux kernel as well as to keep all
clocksource drivers in a common location.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Makefile                                     | 1 -
 drivers/clocksource/Kconfig                                    | 3 +++
 drivers/clocksource/Makefile                                   | 1 +
 .../clocksource.c => drivers/clocksource/timer-imx-gpt.c       | 0
 4 files changed, 4 insertions(+), 1 deletion(-)
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
index 6a6c9362a..c65066ccf 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -74,3 +74,6 @@ config CLOCKSOURCE_ARMV8_TIMER
 config CLOCKSOURCE_ARM_GLOBAL_TIMER
         bool
 	depends on ARM && CPU_V7
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
