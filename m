Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grY5b-0005iL-8y
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:02:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id m22so4894001wml.3
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:02:50 -0800 (PST)
MIME-Version: 1.0
References: <20190206074921.11115-1-s.hauer@pengutronix.de>
 <20190206074921.11115-9-s.hauer@pengutronix.de>
In-Reply-To: <20190206074921.11115-9-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 6 Feb 2019 17:02:37 -0800
Message-ID: <CAHQ1cqHdBOn_pkzfuWVk6rVZjiUOgn3iBnNvcURsqe1TBjcXug@mail.gmail.com>
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
Subject: Re: [PATCH 8/8] mci: imx-esdhc: Add layerscape support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Feb 5, 2019 at 11:49 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> This adds support for the esdhc controller found on Layerscape SoCs.
> This means adding the compatible and a driver data to access the
> controller in bigendian mode.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/Kconfig     |  2 +-
>  drivers/mci/imx-esdhc.c | 11 +++++++++++
>  2 files changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 954f957bc7..2075151d67 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -82,7 +82,7 @@ config MCI_IMX
>
>  config MCI_IMX_ESDHC
>         bool "i.MX esdhc"
> -       depends on ARCH_IMX
> +       depends on ARCH_IMX || ARCH_LAYERSCAPE
>         help
>           Enable this entry to add support to read and write SD cards on a
>           Freescale i.MX25/35/51 based system.
> diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
> index 58c262782f..10c981ad5d 100644
> --- a/drivers/mci/imx-esdhc.c
> +++ b/drivers/mci/imx-esdhc.c
> @@ -69,6 +69,8 @@
>  #define ESDHC_FLAG_HAVE_CAP1           BIT(6)
>  /* Need to access registers in bigendian mode */
>  #define ESDHC_FLAG_BIGENDIAN           BIT(7)
> +/* Enable cache snooping */
> +#define ESDHC_FLAG_CACHE_SNOOPING      BIT(8)
>
>  /*
>   * The IP has errata ERR004536
> @@ -612,6 +614,10 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
>         /* RSTA doesn't reset MMC_BOOT register, so manually reset it */
>         esdhc_write32(host, SDHCI_MMC_BOOT, 0);
>
> +       /* Enable cache snooping */
> +       if (host->socdata->flags & ESDHC_FLAG_CACHE_SNOOPING)
> +               esdhc_write32(host, 0x40c, 0x40);

I think importing ESDHC_DMA_SYSCTL and ESDHC_DMA_SNOOP from Linux and
using them instead of magic number would improve readability. Also,
should this be esdhc_setbits32() instead esdhc_write32() to avoid
clearing other, unrelated, bits?

> +
>         /* Set the initial clock speed */
>         set_sysctl(mci, 400000);
>
> @@ -747,6 +753,10 @@ static struct esdhc_soc_data usdhc_imx6sx_data = {
>         .clkidx = "per",
>  };
>
> +static struct esdhc_soc_data esdhc_ls_data = {
> +       .flags = ESDHC_FLAG_MULTIBLK_NO_INT | ESDHC_FLAG_BIGENDIAN,
> +};
> +
>  static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
>         { .compatible = "fsl,imx25-esdhc",  .data = &esdhc_imx25_data  },
>         { .compatible = "fsl,imx50-esdhc",  .data = &esdhc_imx53_data  },
> @@ -756,6 +766,7 @@ static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
>         { .compatible = "fsl,imx6sl-usdhc", .data = &usdhc_imx6sl_data },
>         { .compatible = "fsl,imx6sx-usdhc", .data = &usdhc_imx6sx_data },
>         { .compatible = "fsl,imx8mq-usdhc", .data = &usdhc_imx6sx_data },
> +       { .compatible = "fsl,ls1046a-esdhc",.data = &esdhc_ls_data  },
>         { /* sentinel */ }
>  };
>
> --
> 2.20.1
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
