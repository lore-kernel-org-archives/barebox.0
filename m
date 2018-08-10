Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x241.google.com ([2607:f8b0:4001:c0b::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foCsM-0006hz-OZ
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 19:15:08 +0000
Received: by mail-it0-x241.google.com with SMTP id p81-v6so4130242itp.1
 for <barebox@lists.infradead.org>; Fri, 10 Aug 2018 12:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <20180810163500.12042-1-r.hieber@pengutronix.de>
 <20180810163500.12042-7-r.hieber@pengutronix.de>
In-Reply-To: <20180810163500.12042-7-r.hieber@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 10 Aug 2018 12:14:42 -0700
Message-ID: <CAHQ1cqH2deM6x3TqDcOdAOqscqGbv5uVAC=KbFgcp7vt6rqrcQ@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 06/14] ARM: i.MX23: Add memory size detection
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Aug 10, 2018 at 9:35 AM Roland Hieber <r.hieber@pengutronix.de> wrote:
>
> From: Sascha Hauer <s.hauer@pengutronix.de>
>
> No need for the boards to manually add memory, we can do this
> automatically by reading back the memory size from the SDRAM
> controller.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
>  .../arm/boards/chumby_falconwing/falconwing.c |  8 -----
>  arch/arm/boards/freescale-mx23-evk/mx23-evk.c |  8 -----
>  .../boards/imx233-olinuxino/imx23-olinuxino.c |  8 -----
>  arch/arm/mach-mxs/include/mach/imx23.h        | 29 +++++++++++++++++++
>  arch/arm/mach-mxs/soc-imx23.c                 |  4 +++
>  5 files changed, 33 insertions(+), 24 deletions(-)
>  create mode 100644 arch/arm/mach-mxs/include/mach/imx23.h
>
> diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
> index c866043e8b..5554b78d6d 100644
> --- a/arch/arm/boards/chumby_falconwing/falconwing.c
> +++ b/arch/arm/boards/chumby_falconwing/falconwing.c
> @@ -258,14 +258,6 @@ static const uint32_t pad_setup[] = {
>         GPMI_RDY3_GPIO | GPIO_IN | PULLUP(1),
>  };
>
> -static int falconwing_mem_init(void)
> -{
> -       arm_add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024);
> -
> -       return 0;
> -}
> -mem_initcall(falconwing_mem_init);
> -
>  #define GPIO_USB_HUB_RESET     29
>  #define GPIO_USB_HUB_POWER     26
>
> diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
> index dd8048851b..a3587db063 100644
> --- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
> +++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
> @@ -53,14 +53,6 @@ static struct fsl_usb2_platform_data usb_pdata = {
>  };
>  #endif
>
> -static int mx23_evk_mem_init(void)
> -{
> -       arm_add_mem_device("ram0", IMX_MEMORY_BASE, 32 * 1024 * 1024);
> -
> -       return 0;
> -}
> -mem_initcall(mx23_evk_mem_init);
> -
>  /**
>   * Try to register an environment storage on the attached MCI card
>   * @return 0 on success
> diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
> index b87a6764f3..c06779ddf6 100644
> --- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
> +++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
> @@ -40,14 +40,6 @@ static struct mxs_mci_platform_data mci_pdata = {
>         .f_min = 400000,
>  };
>
> -static int imx23_olinuxino_mem_init(void)
> -{
> -       arm_add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024);
> -
> -       return 0;
> -}
> -mem_initcall(imx23_olinuxino_mem_init);
> -
>  static void olinuxino_init_usb(void)
>  {
>         imx23_usb_phy_enable();
> diff --git a/arch/arm/mach-mxs/include/mach/imx23.h b/arch/arm/mach-mxs/include/mach/imx23.h
> new file mode 100644
> index 0000000000..56e76d5f50
> --- /dev/null
> +++ b/arch/arm/mach-mxs/include/mach/imx23.h
> @@ -0,0 +1,29 @@
> +#ifndef __MACH_IMX23_H
> +#define __MACH_IMX23_H
> +
> +#include <linux/bitfield.h>
> +#include <io.h>
> +
> +#define DRAM_CTL14_CS0_EN      BIT(0)
> +#define DRAM_CTL14_CS1_EN      BIT(1)
> +#define DRAM_CTL11_COLUMNS_DIFF        GENMASK(10, 8)
> +#define DRAM_CTL10_ROWS_DIFF   GENMASK(18, 16)
> +
> +#define DRAM_CTL(n)    (IMX_SDRAMC_BASE + 4 * (n))
> +
> +static inline u32 imx23_get_memsize(void)
> +{
> +       u32 ctl10 = readl(DRAM_CTL(10));
> +       u32 ctl11 = readl(DRAM_CTL(11));
> +       u32 ctl14 = readl(DRAM_CTL(14));
> +       int rows, columns, banks = 4, cs0, cs1;
> +
> +       columns = 12 - FIELD_GET(DRAM_CTL11_COLUMNS_DIFF, ctl11);
> +       rows = 13 - FIELD_GET(DRAM_CTL10_ROWS_DIFF, ctl10);
> +       cs0 = FIELD_GET(DRAM_CTL14_CS0_EN, ctl14);
> +       cs1 = FIELD_GET(DRAM_CTL14_CS1_EN, ctl14);
> +
> +       return (1 << columns) * (1 << rows) * banks * (cs0 + cs1);

Just as an optional suggestion, you can use memory_sdram_size() from
<memory.h> to calculate that (except multiple chip select part).

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
