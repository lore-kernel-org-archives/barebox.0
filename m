Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDe0w-0003Aa-Cd
 for barebox@lists.infradead.org; Mon, 17 Sep 2012 16:17:40 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TDe0o-0008E1-6L
 for barebox@lists.infradead.org; Mon, 17 Sep 2012 18:17:30 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TDe0o-0004Al-5R
 for barebox@lists.infradead.org; Mon, 17 Sep 2012 18:17:30 +0200
Date: Mon, 17 Sep 2012 18:17:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120917161730.GC24458@pengutronix.de>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
 <1347480407-16865-8-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347480407-16865-8-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/15] ARM i.MX: implement clocksource as driver
To: barebox@lists.infradead.org

On Wed, Sep 12, 2012 at 10:06:39PM +0200, Sascha Hauer wrote:
> To get rid of the register definitions in the SoC header files.
> platform_device_id is used to distinguish between gpt types.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/clocksource.c             |   72 +++++++++++++++++++++++++--
>  arch/arm/mach-imx/imx1.c                    |    1 +
>  arch/arm/mach-imx/imx21.c                   |    1 +
>  arch/arm/mach-imx/imx25.c                   |    2 +
>  arch/arm/mach-imx/imx27.c                   |    2 +
>  arch/arm/mach-imx/imx31.c                   |    1 +
>  arch/arm/mach-imx/imx35.c                   |    1 +
>  arch/arm/mach-imx/imx51.c                   |    1 +
>  arch/arm/mach-imx/imx53.c                   |    2 +
>  arch/arm/mach-imx/imx6.c                    |    1 +
>  arch/arm/mach-imx/include/mach/imx1-regs.h  |   23 ---------
>  arch/arm/mach-imx/include/mach/imx21-regs.h |   24 ---------
>  arch/arm/mach-imx/include/mach/imx25-regs.h |   27 ----------
>  arch/arm/mach-imx/include/mach/imx27-regs.h |   23 ---------
>  arch/arm/mach-imx/include/mach/imx31-regs.h |   27 ----------
>  arch/arm/mach-imx/include/mach/imx35-regs.h |   28 -----------
>  arch/arm/mach-imx/include/mach/imx51-regs.h |   19 -------
>  arch/arm/mach-imx/include/mach/imx53-regs.h |   19 -------
>  arch/arm/mach-imx/include/mach/imx6-regs.h  |   19 -------
>  19 files changed, 79 insertions(+), 214 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
> index 4e77ece..166710c 100644
> --- a/arch/arm/mach-imx/clocksource.c
> +++ b/arch/arm/mach-imx/clocksource.c
> @@ -32,17 +32,46 @@
>  #include <common.h>
>  #include <init.h>
>  #include <clock.h>
> +#include <errno.h>
>  #include <notifier.h>
>  #include <mach/imx-regs.h>
>  #include <mach/clock.h>
>  #include <io.h>
>  
> -#define GPT(x) __REG(IMX_TIM1_BASE + (x))
> -#define timer_base IOMEM(IMX_TIM1_BASE)
> +/* Part 1: Registers */
> +# define GPT_TCTL   0x00
> +# define GPT_TPRER  0x04
> +
> +/* Part 2: Bitfields */
> +#define TCTL_SWR       (1<<15) /* Software reset */
> +#define TCTL_FRR       (1<<8)  /* Freerun / restart */
> +#define TCTL_CAP       (3<<6)  /* Capture Edge */
> +#define TCTL_OM        (1<<5)  /* output mode */
> +#define TCTL_IRQEN     (1<<4)  /* interrupt enable */
> +#define TCTL_CLKSOURCE (1)     /* Clock source bit position */
> +#define TCTL_TEN       (1)     /* Timer enable */
> +#define TPRER_PRES     (0xff)  /* Prescale */
> +#define TSTAT_CAPT     (1<<1)  /* Capture event */
> +#define TSTAT_COMP     (1)     /* Compare event */

This doesn't work on i.MX31 upwards as I haven't realized that not only
the registers differ, but also the bits. Replaced this patch with the
following:

8<-----------------------------------------------------------

From 6a2262de50b2000dd353f1a2d3b00316bc9e18c1 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 9 Sep 2012 21:02:09 +0200
Subject: [PATCH] ARM i.MX: implement clocksource as driver

To get rid of the register definitions in the SoC header files.
platform_device_id is used to distinguish between gpt types.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clocksource.c             |   76 +++++++++++++++++++++++----
 arch/arm/mach-imx/imx1.c                    |    1 +
 arch/arm/mach-imx/imx21.c                   |    1 +
 arch/arm/mach-imx/imx25.c                   |    2 +
 arch/arm/mach-imx/imx27.c                   |    2 +
 arch/arm/mach-imx/imx31.c                   |    1 +
 arch/arm/mach-imx/imx35.c                   |    1 +
 arch/arm/mach-imx/imx51.c                   |    1 +
 arch/arm/mach-imx/imx53.c                   |    2 +
 arch/arm/mach-imx/imx6.c                    |    1 +
 arch/arm/mach-imx/include/mach/imx1-regs.h  |   23 --------
 arch/arm/mach-imx/include/mach/imx21-regs.h |   24 ---------
 arch/arm/mach-imx/include/mach/imx25-regs.h |   27 ----------
 arch/arm/mach-imx/include/mach/imx27-regs.h |   23 --------
 arch/arm/mach-imx/include/mach/imx31-regs.h |   27 ----------
 arch/arm/mach-imx/include/mach/imx35-regs.h |   28 ----------
 arch/arm/mach-imx/include/mach/imx51-regs.h |   19 -------
 arch/arm/mach-imx/include/mach/imx53-regs.h |   19 -------
 arch/arm/mach-imx/include/mach/imx6-regs.h  |   19 -------
 19 files changed, 79 insertions(+), 218 deletions(-)

diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
index 4e77ece..746ecc8 100644
--- a/arch/arm/mach-imx/clocksource.c
+++ b/arch/arm/mach-imx/clocksource.c
@@ -32,17 +32,45 @@
 #include <common.h>
 #include <init.h>
 #include <clock.h>
+#include <errno.h>
 #include <notifier.h>
 #include <mach/imx-regs.h>
 #include <mach/clock.h>
 #include <io.h>
 
-#define GPT(x) __REG(IMX_TIM1_BASE + (x))
-#define timer_base IOMEM(IMX_TIM1_BASE)
+/* Part 1: Registers */
+# define GPT_TCTL   0x00
+# define GPT_TPRER  0x04
+
+/* Part 2: Bitfields */
+#define TCTL_SWR			(1 << 15)	/* Software reset */
+#define IMX1_TCTL_FRR			(1 << 8)	/* Freerun / restart */
+#define IMX31_TCTL_FRR			(1 << 9)	/* Freerun / restart */
+#define IMX1_TCTL_CLKSOURCE_IPG		(1 << 1)	/* Clock source bit position */
+#define IMX31_TCTL_CLKSOURCE_IPG	(1 << 6)	/* Clock source bit position */
+#define TCTL_TEN			(1 << 0)	/* Timer enable */
+
+struct imx_gpt_regs {
+	unsigned int tcn;
+	uint32_t tctl_val;
+};
+
+static struct imx_gpt_regs regs_imx1 = {
+	.tcn = 0x10,
+	.tctl_val = IMX1_TCTL_FRR | IMX1_TCTL_CLKSOURCE_IPG | TCTL_TEN,
+};
+
+static struct imx_gpt_regs regs_imx31 = {
+	.tcn = 0x24,
+	.tctl_val = IMX31_TCTL_FRR | IMX31_TCTL_CLKSOURCE_IPG | TCTL_TEN,
+};
+
+static struct imx_gpt_regs *regs;
+static void __iomem *timer_base;
 
 static uint64_t imx_clocksource_read(void)
 {
-	return readl(timer_base + GPT_TCN);
+	return readl(timer_base + regs->tcn);
 }
 
 static struct clocksource cs = {
@@ -61,10 +89,20 @@ static struct notifier_block imx_clock_notifier = {
 	.notifier_call = imx_clocksource_clock_change,
 };
 
-static int clocksource_init (void)
+static int imx_gpt_probe(struct device_d *dev)
 {
 	int i;
-	uint32_t val;
+	int ret;
+
+	/* one timer is enough */
+	if (timer_base)
+		return -EBUSY;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&regs);
+	if (ret)
+		return ret;
+
+	timer_base = dev_request_mem_region(dev, 0);
 
 	/* setup GP Timer 1 */
 	writel(TCTL_SWR, timer_base + GPT_TCTL);
@@ -85,9 +123,7 @@ static int clocksource_init (void)
 		writel(0, timer_base + GPT_TCTL); /* We have no udelay by now */
 
 	writel(0, timer_base + GPT_TPRER);
-	val = readl(timer_base + GPT_TCTL);
-	val |= TCTL_FRR | (1 << TCTL_CLKSOURCE) | TCTL_TEN; /* Freerun Mode, PERCLK1 input */
-	writel(val, timer_base + GPT_TCTL);
+	writel(regs->tctl_val, timer_base + GPT_TCTL);
 
 	cs.mult = clocksource_hz2mult(imx_get_gptclk(), cs.shift);
 
@@ -98,7 +134,29 @@ static int clocksource_init (void)
 	return 0;
 }
 
-core_initcall(clocksource_init);
+static struct platform_device_id imx_gpt_ids[] = {
+	{
+		.name = "imx1-gpt",
+		.driver_data = (unsigned long)&regs_imx1,
+	}, {
+		.name = "imx31-gpt",
+		.driver_data = (unsigned long)&regs_imx31,
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d imx_gpt_driver = {
+	.name = "imx-gpt",
+	.probe = imx_gpt_probe,
+	.id_table = imx_gpt_ids,
+};
+
+static int imx_gpt_init(void)
+{
+	return register_driver(&imx_gpt_driver);
+}
+coredevice_initcall(imx_gpt_init);
 
 /*
  * Watchdog Registers
diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index a81b244..5dd71f5 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -20,6 +20,7 @@
 
 static int imx1_init(void)
 {
+	add_generic_device("imx1-gpt", 0, NULL, 0x00202000, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 0, NULL, 0x0021c000, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 1, NULL, 0x0021c100, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 2, NULL, 0x0021c200, 0x100, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx21.c b/arch/arm/mach-imx/imx21.c
index 619a826..2a06e50 100644
--- a/arch/arm/mach-imx/imx21.c
+++ b/arch/arm/mach-imx/imx21.c
@@ -28,6 +28,7 @@ int imx_silicon_revision(void)
 
 static int imx21_init(void)
 {
+	add_generic_device("imx1-gpt", 0, NULL, 0x10003000, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 0, NULL, 0x10015000, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 1, NULL, 0x10015100, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 2, NULL, 0x10015200, 0x100, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 183a492..397ddde 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -48,10 +48,12 @@ static int imx25_init(void)
 	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
 			IORESOURCE_MEM, &imx25_iim_pdata);
 
+	add_generic_device("imx31-gpt", 0, NULL, 0x53f90000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 3, NULL, 0x53f9c000, 0x1000, IORESOURCE_MEM, NULL);
+
 	return 0;
 }
 coredevice_initcall(imx25_init);
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 8f0461d..6c8f3fc 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -72,6 +72,8 @@ static int imx27_init(void)
 			IORESOURCE_MEM, NULL);
 
 	imx27_init_max();
+
+	add_generic_device("imx1-gpt", 0, NULL, 0x10003000, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 0, NULL, 0x10015000, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 1, NULL, 0x10015100, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx1-gpio", 2, NULL, 0x10015200, 0x100, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index faad11e..08f9143 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -25,6 +25,7 @@ static int imx31_init(void)
 	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx31-gpt", 0, NULL, 0x53f90000, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 6952219..7f49582 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -56,6 +56,7 @@ static int imx35_init(void)
 	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx31-gpt", 0, NULL, 0x53f90000, 0x100, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 6a394bf..117bda9 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -78,6 +78,7 @@ static int imx51_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX51_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx31-gpt", 0, NULL, 0x73fa0000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, 0x73f84000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 1, NULL, 0x73f88000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, 0x73f8c000, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 228e47d..9fc44e5 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -74,6 +74,7 @@ static int imx53_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX53_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx31-gpt", 0, NULL, 0X53fa0000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, MX53_GPIO1_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 1, NULL, MX53_GPIO2_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, MX53_GPIO3_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
@@ -81,6 +82,7 @@ static int imx53_init(void)
 	add_generic_device("imx31-gpio", 4, NULL, MX53_GPIO5_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 5, NULL, MX53_GPIO6_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 6, NULL, MX53_GPIO7_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+
 	return 0;
 }
 coredevice_initcall(imx53_init);
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 085b5c8..66c44e1 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -58,6 +58,7 @@ void imx6_init_lowlevel(void)
 
 static int imx6_init(void)
 {
+	add_generic_device("imx31-gpt", 0, NULL, 0x02098000, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 0, NULL, MX6_GPIO1_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 1, NULL, MX6_GPIO2_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx31-gpio", 2, NULL, MX6_GPIO3_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/include/mach/imx1-regs.h b/arch/arm/mach-imx/include/mach/imx1-regs.h
index f940cdb..d5ee3f5 100644
--- a/arch/arm/mach-imx/include/mach/imx1-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx1-regs.h
@@ -207,27 +207,4 @@
 #define PD31_PF_TMR2OUT      ( GPIO_PORTD | GPIO_PF | 31 )
 #define PD31_BIN_SPI2_TXD    ( GPIO_PORTD | GPIO_BIN | 31 )
 
-/*
- * Definitions for the clocksource driver
- */
-/* Part 1: Registers */
-# define GPT_TCTL   0x00
-# define GPT_TPRER  0x04
-# define GPT_TCMP   0x08
-# define GPT_TCR    0x0c
-# define GPT_TCN    0x10
-# define GPT_TSTAT  0x14
-
-/* Part 2: Bitfields */
-#define TCTL_SWR       (1<<15) /* Software reset */
-#define TCTL_FRR       (1<<8)  /* Freerun / restart */
-#define TCTL_CAP       (3<<6)  /* Capture Edge */
-#define TCTL_OM        (1<<5)  /* output mode */
-#define TCTL_IRQEN     (1<<4)  /* interrupt enable */
-#define TCTL_CLKSOURCE (1)     /* Clock source bit position */
-#define TCTL_TEN       (1)     /* Timer enable */
-#define TPRER_PRES     (0xff)  /* Prescale */
-#define TSTAT_CAPT     (1<<1)  /* Capture event */
-#define TSTAT_COMP     (1)     /* Compare event */
-
 #endif /* _IMX1_REGS_H */
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/arch/arm/mach-imx/include/mach/imx21-regs.h
index a2c4d03..98e73ef 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -107,30 +107,6 @@
 
 #define CCSR_32K_SR		(1 << 15)
 
-/*
- * Definitions for the clocksource driver
- */
-/* Part 1: Registers */
-# define GPT_TCTL   0x00
-# define GPT_TPRER  0x04
-# define GPT_TCMP   0x08
-# define GPT_TCR    0x0c
-# define GPT_TCN    0x10
-# define GPT_TSTAT  0x14
-
-/* Part 2: Bitfields */
-#define TCTL_SWR       (1<<15) /* Software reset */
-#define TCTL_CC        (1<<10) /* counter clear */
-#define TCTL_FRR       (1<<8)  /* Freerun / restart */
-#define TCTL_CAP       (3<<6)  /* Capture Edge */
-#define TCTL_CAPEN     (1<<5)  /* compare interrupt enable */
-#define TCTL_COMPEN    (1<<4)  /* compare interrupt enable */
-#define TCTL_CLKSOURCE (1)     /* Clock source bit position */
-#define TCTL_TEN       (1)     /* Timer enable */
-#define TPRER_PRES     (0xff)  /* Prescale */
-#define TSTAT_CAPT     (1<<1)  /* Capture event */
-#define TSTAT_COMP     (1)     /* Compare event */
-
 #define IMX_CS0_BASE	0xC8000000
 #define IMX_CS1_BASE	0xCC000000
 #define IMX_CS2_BASE	0xD0000000
diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 73307c4..a35d9e3 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -108,33 +108,6 @@
 #define CSCR_A(x)     (WEIM_BASE + 8 + (x) * 0x10)
 
 /*
- * Definitions for the clocksource driver
- *
- * These defines are using the i.MX1/27 notation
- * to reuse the clocksource code for these CPUs
- * on the i.MX35
- */
-/* Part 1: Registers */
-#define GPT_TCTL   0x00
-#define GPT_TPRER  0x04
-#define GPT_TCMP   0x10
-#define GPT_TCR    0x1c
-#define GPT_TCN    0x24
-#define GPT_TSTAT  0x08
-
-/* Part 2: Bitfields */
-#define TCTL_SWR       (1<<15) /* Software reset */
-#define TCTL_FRR       (1<<9)  /* Freerun / restart */
-#define TCTL_CAP       (3<<6)  /* Capture Edge */
-#define TCTL_OM        (1<<5)  /* output mode */
-#define TCTL_IRQEN     (1<<4)  /* interrupt enable */
-#define TCTL_CLKSOURCE (6)     /* Clock source bit position */
-#define TCTL_TEN       (1)     /* Timer enable */
-#define TPRER_PRES     (0xff)  /* Prescale */
-#define TSTAT_CAPT     (1<<1)  /* Capture event */
-#define TSTAT_COMP     (1)     /* Compare event */
-
-/*
  * Watchdog Registers
  */
 #define WCR  __REG16(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 19dcad9..8686a9d 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -221,29 +221,6 @@
 #define ESDCFG_TWTR		(1 << 20)
 #define ESDCFG_TXP(x)		(((x) & 0x3) << 21)
 
-/*
- * Definitions for the clocksource driver
- */
-/* Part 1: Registers */
-# define GPT_TCTL   0x00
-# define GPT_TPRER  0x04
-# define GPT_TCMP   0x08
-# define GPT_TCR    0x0c
-# define GPT_TCN    0x10
-# define GPT_TSTAT  0x14
-
-/* Part 2: Bitfields */
-#define TCTL_SWR       (1<<15) /* Software reset */
-#define TCTL_FRR       (1<<8)  /* Freerun / restart */
-#define TCTL_CAP       (3<<6)  /* Capture Edge */
-#define TCTL_OM        (1<<5)  /* output mode */
-#define TCTL_IRQEN     (1<<4)  /* interrupt enable */
-#define TCTL_CLKSOURCE (1)     /* Clock source bit position */
-#define TCTL_TEN       (1)     /* Timer enable */
-#define TPRER_PRES     (0xff)  /* Prescale */
-#define TSTAT_CAPT     (1<<1)  /* Capture event */
-#define TSTAT_COMP     (1)     /* Compare event */
-
 #define IMX_CS0_BASE	0xC0000000
 #define IMX_CS1_BASE	0xC8000000
 #define IMX_CS2_BASE	0xD0000000
diff --git a/arch/arm/mach-imx/include/mach/imx31-regs.h b/arch/arm/mach-imx/include/mach/imx31-regs.h
index 536bf0d..062af75 100644
--- a/arch/arm/mach-imx/include/mach/imx31-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx31-regs.h
@@ -57,33 +57,6 @@
 #define IMX_CS5_BASE	0xB6000000
 #define IMX_CS5_RANGE	(32 * 1024 * 1024)
 
-/*
- * Definitions for the clocksource driver
- *
- * These defines are using the i.MX1/27 notation
- * to reuse the clocksource code for these CPUs
- * on the i.MX31
- */
-/* Part 1: Registers */
-#define GPT_TCTL   0x00
-#define GPT_TPRER  0x04
-#define GPT_TCMP   0x10
-#define GPT_TCR    0x1c
-#define GPT_TCN    0x24
-#define GPT_TSTAT  0x08
-
-/* Part 2: Bitfields */
-#define TCTL_SWR       (1<<15) /* Software reset */
-#define TCTL_FRR       (1<<9)  /* Freerun / restart */
-#define TCTL_CAP       (3<<6)  /* Capture Edge */
-#define TCTL_OM        (1<<5)  /* output mode */
-#define TCTL_IRQEN     (1<<4)  /* interrupt enable */
-#define TCTL_CLKSOURCE (6)     /* Clock source bit position */
-#define TCTL_TEN       (1)     /* Timer enable */
-#define TPRER_PRES     (0xff)  /* Prescale */
-#define TSTAT_CAPT     (1<<1)  /* Capture event */
-#define TSTAT_COMP     (1)     /* Compare event */
-
 #if 0
 #define IMX_IO_BASE		0x00200000
 
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index 91d4b9b..5f00052 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -116,32 +116,4 @@
 #define CSCR_L(x)     (WEIM_BASE + 4 + (x) * 0x10)
 #define CSCR_A(x)     (WEIM_BASE + 8 + (x) * 0x10)
 
-/*
- * Definitions for the clocksource driver
- *
- * These defines are using the i.MX1/27 notation
- * to reuse the clocksource code for these CPUs
- * on the i.MX35
- */
-/* Part 1: Registers */
-#define GPT_TCTL   0x00
-#define GPT_TPRER  0x04
-#define GPT_TCMP   0x10
-#define GPT_TCR    0x1c
-#define GPT_TCN    0x24
-#define GPT_TSTAT  0x08
-
-/* Part 2: Bitfields */
-#define TCTL_SWR       (1<<15) /* Software reset */
-#define TCTL_FRR       (1<<9)  /* Freerun / restart */
-#define TCTL_CAP       (3<<6)  /* Capture Edge */
-#define TCTL_OM        (1<<5)  /* output mode */
-#define TCTL_IRQEN     (1<<4)  /* interrupt enable */
-#define TCTL_CLKSOURCE (6)     /* Clock source bit position */
-#define TCTL_TEN       (1)     /* Timer enable */
-#define TPRER_PRES     (0xff)  /* Prescale */
-#define TSTAT_CAPT     (1<<1)  /* Capture event */
-#define TSTAT_COMP     (1)     /* Compare event */
-
 #endif /* __ASM_ARCH_MX35_REGS_H */
-
diff --git a/arch/arm/mach-imx/include/mach/imx51-regs.h b/arch/arm/mach-imx/include/mach/imx51-regs.h
index b51aa67..c451004 100644
--- a/arch/arm/mach-imx/include/mach/imx51-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx51-regs.h
@@ -5,13 +5,6 @@
 #define IMX_WDT_BASE			0x73f98000
 #define IMX_IOMUXC_BASE			0x73fa8000
 
-#define GPT_TCTL	0x00
-#define GPT_TPRER	0x04
-#define GPT_TCMP	0x10
-#define GPT_TCR		0x1c
-#define GPT_TCN		0x24
-#define GPT_TSTAT	0x08
-
 /* WEIM registers */
 #define WEIM_CSxGCR1(n)	(((n) * 0x18) + 0x00)
 #define WEIM_CSxGCR2(n)	(((n) * 0x18) + 0x04)
@@ -22,18 +15,6 @@
 #define WEIM_WIAR	0x94
 #define WEIM_EAR	0x98
 
-/* Part 2: Bitfields */
-#define TCTL_SWR	(1<<15)	/* Software reset */
-#define TCTL_FRR	(1<<9)	/* Freerun / restart */
-#define TCTL_CAP	(3<<6)	/* Capture Edge */
-#define TCTL_OM		(1<<5)	/* output mode */
-#define TCTL_IRQEN	(1<<4)	/* interrupt enable */
-#define TCTL_CLKSOURCE	(6)	/* Clock source bit position */
-#define TCTL_TEN	(1)	/* Timer enable */
-#define TPRER_PRES	(0xff)	/* Prescale */
-#define TSTAT_CAPT	(1<<1)	/* Capture event */
-#define TSTAT_COMP	(1)	/* Compare event */
-
 #define MX51_IROM_BASE_ADDR	0x0
 
 /*
diff --git a/arch/arm/mach-imx/include/mach/imx53-regs.h b/arch/arm/mach-imx/include/mach/imx53-regs.h
index 8fefc54..e57d1ab 100644
--- a/arch/arm/mach-imx/include/mach/imx53-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx53-regs.h
@@ -5,25 +5,6 @@
 #define IMX_WDT_BASE			0X53F98000
 #define IMX_IOMUXC_BASE			0X53FA8000
 
-#define GPT_TCTL	0x00
-#define GPT_TPRER	0x04
-#define GPT_TCMP	0x10
-#define GPT_TCR		0x1c
-#define GPT_TCN		0x24
-#define GPT_TSTAT	0x08
-
-/* Part 2: Bitfields */
-#define TCTL_SWR	(1<<15)	/* Software reset */
-#define TCTL_FRR	(1<<9)	/* Freerun / restart */
-#define TCTL_CAP	(3<<6)	/* Capture Edge */
-#define TCTL_OM		(1<<5)	/* output mode */
-#define TCTL_IRQEN	(1<<4)	/* interrupt enable */
-#define TCTL_CLKSOURCE	(6)	/* Clock source bit position */
-#define TCTL_TEN	(1)	/* Timer enable */
-#define TPRER_PRES	(0xff)	/* Prescale */
-#define TSTAT_CAPT	(1<<1)	/* Capture event */
-#define TSTAT_COMP	(1)	/* Compare event */
-
 #define MX53_IROM_BASE_ADDR	0x0
 
 /*
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index c7b7481..eca4fa6 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -5,25 +5,6 @@
 #define IMX_WDT_BASE	0x020bc000
 #define IMX_IOMUXC_BASE 0x020e0000
 
-#define GPT_TCTL	0x00
-#define GPT_TPRER	0x04
-#define GPT_TCMP	0x10
-#define GPT_TCR		0x1c
-#define GPT_TCN		0x24
-#define GPT_TSTAT	0x08
-
-/* Part 2: Bitfields */
-#define TCTL_SWR	(1<<15)	/* Software reset */
-#define TCTL_FRR	(1<<9)	/* Freerun / restart */
-#define TCTL_CAP	(3<<6)	/* Capture Edge */
-#define TCTL_OM		(1<<5)	/* output mode */
-#define TCTL_IRQEN	(1<<4)	/* interrupt enable */
-#define TCTL_CLKSOURCE	(6)	/* Clock source bit position */
-#define TCTL_TEN	(1)	/* Timer enable */
-#define TPRER_PRES	(0xff)	/* Prescale */
-#define TSTAT_CAPT	(1<<1)	/* Capture event */
-#define TSTAT_COMP	(1)	/* Compare event */
-
 #define MX6_AIPS1_ARB_BASE_ADDR		0x02000000
 #define MX6_AIPS2_ARB_BASE_ADDR		0x02100000
 
-- 
1.7.10.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
