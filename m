Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG7PO-0006MG-JM
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 12:05:07 +0000
Received: by ieje14 with SMTP id e14so11722044iej.36
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2012 05:05:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1348483583-12586-15-git-send-email-s.hauer@pengutronix.de>
References: <1348483583-12586-1-git-send-email-s.hauer@pengutronix.de>
 <1348483583-12586-15-git-send-email-s.hauer@pengutronix.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Mon, 24 Sep 2012 14:04:45 +0200
Message-ID: <CAONxwYPfft_KjUydoZWikbaH6yUT3_tHqVZ=ND8AiNXm4ffk4A@mail.gmail.com>
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
Subject: Re: [PATCH 14/14] ARM i.MX25: Add function to setup chipselect
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi

Great series in general, nice cleanup!

>  arch/arm/mach-imx/imx25.c                   |    9 +++++++++
>  arch/arm/mach-imx/include/mach/imx25-regs.h |    6 +-----
>  arch/arm/mach-imx/include/mach/weim.h       |    3 +++
>  3 files changed, 13 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
> index 3f44649..32c0412 100644
> --- a/arch/arm/mach-imx/imx25.c
> +++ b/arch/arm/mach-imx/imx25.c
> @@ -16,8 +16,17 @@
>  #include <mach/imx-regs.h>
>  #include <mach/iim.h>
>  #include <io.h>
> +#include <mach/weim.h>
>  #include <sizes.h>
>
> +void imx25_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
> +               unsigned additional)
> +{
> +       writel(upper, MX25_WEIM_BASE_ADDR + (cs * 0x10) + 0x0);
> +       writel(lower, MX25_WEIM_BASE_ADDR + (cs * 0x10) + 0x4);
> +       writel(additional, MX25_WEIM_BASE_ADDR + (cs * 0x10) + 0x8);
> +}
> +
>  /* IIM fuse definitions */
>  #define IIM_BANK0_BASE (MX25_IIM_BASE_ADDR + 0x800)
>  #define IIM_BANK1_BASE (MX25_IIM_BASE_ADDR + 0xc00)
> diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
> index 8e7ff85..0bf6e11 100644
> --- a/arch/arm/mach-imx/include/mach/imx25-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
> @@ -137,11 +137,7 @@
>  #define MX25_CSD1_BASE_ADDR  0x90000000
>
>  #define MX25_ESDCTL_BASE_ADDR  0xb8001000
> -
> -#define WEIM_BASE 0xb8002000
> -#define CSCR_U(x)     (WEIM_BASE + (x) * 0x10)
> -#define CSCR_L(x)     (WEIM_BASE + 4 + (x) * 0x10)
> -#define CSCR_A(x)     (WEIM_BASE + 8 + (x) * 0x10)
> +#define MX25_WEIM_BASE_ADDR    0xb8002000
>
>  /*
>   * Watchdog Registers
> diff --git a/arch/arm/mach-imx/include/mach/weim.h b/arch/arm/mach-imx/include/mach/weim.h
> index 576f87c..8d572dc 100644
> --- a/arch/arm/mach-imx/include/mach/weim.h
> +++ b/arch/arm/mach-imx/include/mach/weim.h
> @@ -10,6 +10,9 @@ void imx31_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
>  void imx35_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
>                 unsigned additional);
>
> +void imx25_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
> +               unsigned additional);
> +
>  void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower);
>
>  void imx21_setup_eimcs(size_t cs, unsigned upper, unsigned lower);

This allows me to drop my ugly version of the WEIMCS setup from June
based on imx27. Now, if only I got barebox to recognize the NOR on my
platform :).

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h
b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 73307c4..8225832 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -72,6 +72,7 @@
 #define CCM_LTR1	0x44
 #define CCM_LTR2	0x48
 #define CCM_LTR3	0x4c
+#define CCM_MCR		0x64

 #define PDR0_AUTO_MUX_DIV(x)	(((x) & 0x7) << 9)
 #define PDR0_CCM_PER_AHB(x)	(((x) & 0x7) << 12)
@@ -107,6 +108,22 @@
 #define CSCR_L(x)     (WEIM_BASE + 4 + (x) * 0x10)
 #define CSCR_A(x)     (WEIM_BASE + 8 + (x) * 0x10)

+/* Chip Select Registers */
+#define IMX_WEIM_BASE WEIM_BASE
+#define CSxU(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x00) /* Chip
Select x Upper Register    */
+#define CSxL(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x04) /* Chip
Select x Lower Register    */
+#define CSxA(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x08) /* Chip
Select x Addition Register */
+#define EIM  __REG(IMX_WEIM_BASE + 0x60) /* WEIM Configuration Register     */
+
+#ifndef __ASSEMBLY__
+static inline void imx25_setup_weimcs(size_t cs, unsigned upper,
unsigned lower, unsigned addional)
+{
+        CSxU(cs) = upper;
+        CSxL(cs) = lower;
+        CSxA(cs) = addional;
+}
+#endif /* __ASSEMBLY__ */
+
 /*
  * Definitions for the clocksource driver
  *

Cheers
Roberto

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
