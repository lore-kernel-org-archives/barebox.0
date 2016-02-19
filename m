Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22d.google.com ([2607:f8b0:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWZPb-00009g-6D
 for barebox@lists.infradead.org; Fri, 19 Feb 2016 00:59:12 +0000
Received: by mail-vk0-x22d.google.com with SMTP id k196so61611322vka.0
 for <barebox@lists.infradead.org>; Thu, 18 Feb 2016 16:58:50 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1455792617-13671-2-git-send-email-s.hauer@pengutronix.de>
References: <1455792617-13671-1-git-send-email-s.hauer@pengutronix.de>
 <1455792617-13671-2-git-send-email-s.hauer@pengutronix.de>
Date: Thu, 18 Feb 2016 16:58:49 -0800
Message-ID: <CAHQ1cqHOpW-iv8+wcrz1_azV0Ljs1H_z-E6WZi06opZ3dcqEWQ@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] Fix return check of dev_request_mem_region
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Feb 18, 2016 at 2:50 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> dev_request_mem_region returns an ERR_PTR, fix places which check for a
> NULL pointer instead. This patch has been generated with this semantic
> patch:
>
> // <smpl>
> @@
> expression e,e1,e2;
> @@
>
> e = dev_request_mem_region(...)
> ... when != e = e1
> if (
> -   e == NULL
> +   IS_ERR(e)
>    ) {
>      ...
>      return
> -      e2
> +      PTR_ERR(e)
>      ;
>      }
> // </smpl>

This wouldn't handle correctly the cases where code bails out using
goto (look for example at diff for phy-am335x.c in this patch). I
played around with Cocinelle as well and here's what I came up with:


// <smpl>
@i@
@@

#define CONFIG_TSE_USE_DEDICATED_DESC_MEM


// Handle immediate returns
@@
expression e;
expression e1;
@@

e = dev_request_mem_region(...);

...

- if (e == NULL)
-    return e1;
+ if (IS_ERR(e))
+    return PTR_ERR(e);

@ rule1 @
expression e;
@@

e = dev_request_mem_region(...);

// Fix exit codepath first
@@
expression rule1.e;
identifier ret, label;
constant errno;
@@

if (e == NULL)
{

  ...

// Setting the ret code and jumping to error handling code
(
- ret = -errno;
+ ret = PTR_ERR(e);

  ...

  goto label;

// Return after doing some extra steps
|

- return -errno;
+ return PTR_ERR(e);
)
}

// Fix the check itself. Having this as a standalone rule allows
// to catch cases where error codepath doesn't bail out
@depends on i@
expression rule1.e;
@@

- if (e == NULL)
+ if (IS_ERR(e))
{
  ...
}

// </smpl>

It does seem to catch all of the problematic portions of the code and
seems to do better at handling those goto's. It doesn't detect
pinctrl/mvebu/dove.c unfortunately, but I don't have enough Cocinelle
knowledge to fix this.

I also put together a script that allows to detect places in the code
that don't check for dev_request_memory_region() failure at all and
prints the location to stdout:

// <smpl>

@s@
type T;
identifier func;
position p;
expression e;
statement S1, S2;
@@

T func (...) {
  ...

  e@p = dev_request_mem_region(...);

  ... when != if (IS_ERR(e)) S1 else S2
}

@ script:python@
p1 << s.func;
p2 << s.p;
@@

print "%s:%s:L%s call to dev_request_mem_region is not checked for failure" % \
      (p2[0].file, p1, p2[0].line)

// </smpl>


>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/clk/mvebu/common.c            |  4 ++--
>  drivers/gpio/gpio-orion.c             |  4 ++--
>  drivers/i2c/busses/i2c-tegra.c        |  4 ++--
>  drivers/mtd/devices/mtdram.c          |  4 ++--
>  drivers/mtd/nand/atmel_nand.c         | 12 ++++++------
>  drivers/pinctrl/mvebu/armada-370.c    |  4 ++--
>  drivers/rtc/rtc-jz4740.c              |  4 ++--
>  drivers/usb/gadget/pxa27x_udc.c       |  4 ++--
>  drivers/usb/imx/imx-usb-misc.c        |  4 ++--
>  drivers/usb/imx/imx-usb-phy.c         |  4 ++--
>  drivers/usb/musb/phy-am335x.c         |  4 ++--
>  drivers/video/imx-ipu-v3/imx-hdmi.c   |  4 ++--
>  drivers/video/imx-ipu-v3/ipu-common.c |  4 ++--
>  drivers/watchdog/imxwd.c              |  4 ++--
>  drivers/watchdog/jz4740.c             |  4 ++--
>  15 files changed, 34 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
> index c477497..1eded90 100644
> --- a/drivers/clk/mvebu/common.c
> +++ b/drivers/clk/mvebu/common.c
> @@ -58,8 +58,8 @@ int mvebu_coreclk_probe(struct device_d *dev)
>
>         /* Get SAR base address */
>         base = dev_request_mem_region(dev, 0);
> -       if (!base)
> -               return -EINVAL;
> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
>
>         /* Allocate struct for TCLK, cpu clk, and core ratio clocks */
>         clk_data.clk_num = 2 + desc->num_ratios;
> diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
> index 3deeac1..5348395 100644
> --- a/drivers/gpio/gpio-orion.c
> +++ b/drivers/gpio/gpio-orion.c
> @@ -97,9 +97,9 @@ static int orion_gpio_probe(struct device_d *dev)
>
>         gpio = xzalloc(sizeof(*gpio));
>         gpio->regs = dev_request_mem_region(dev, 0);
> -       if (!gpio->regs) {
> +       if (IS_ERR(gpio->regs)) {
>                 free(gpio);
> -               return -EINVAL;
> +               return PTR_ERR(gpio->regs);
>         }
>         gpio->chip.dev = dev;
>         gpio->chip.ops = &orion_gpio_ops;
> diff --git a/drivers/i2c/busses/i2c-tegra.c b/drivers/i2c/busses/i2c-tegra.c
> index f6a4b22..a6c6596 100644
> --- a/drivers/i2c/busses/i2c-tegra.c
> +++ b/drivers/i2c/busses/i2c-tegra.c
> @@ -611,9 +611,9 @@ static int tegra_i2c_probe(struct device_d *dev)
>         int ret = 0;
>
>         base = dev_request_mem_region(dev, 0);
> -       if (!base) {
> +       if (IS_ERR(base)) {
>                 dev_err(dev, "could not get iomem region\n");
> -               return -ENODEV;
> +               return PTR_ERR(base);
>         }
>
>         div_clk = clk_get(dev, "div-clk");
> diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
> index d1eaafd..34db8db 100644
> --- a/drivers/mtd/devices/mtdram.c
> +++ b/drivers/mtd/devices/mtdram.c
> @@ -71,7 +71,7 @@ static int mtdram_probe(struct device_d *dev)
>         }
>
>         base = dev_request_mem_region(dev, 0);
> -       if (!base) {
> +       if (IS_ERR(base)) {
>                 ret = -EBUSY;
>                 goto nobase;
>         }
> @@ -99,7 +99,7 @@ static int mtdram_probe(struct device_d *dev)
>  nobase:
>         kfree(mtd);
>
> -       return ret;
> +       return PTR_ERR(base);
>  }
>
>  static __maybe_unused struct of_device_id mtdram_dt_ids[] = {
> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index 4ddabda..c1c9390 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -873,16 +873,16 @@ static int __init atmel_pmecc_nand_init_params(struct device_d *dev,
>                  cap, sector_size);
>
>         host->ecc = dev_request_mem_region(dev, 1);
> -       if (host->ecc == NULL) {
> +       if (IS_ERR(host->ecc)) {
>                 dev_err(host->dev, "ioremap failed\n");
> -               return -EIO;
> +               return PTR_ERR(host->ecc);
>         }
>
>         host->pmerrloc_base = dev_request_mem_region(dev, 2);
> -       if (!host->pmerrloc_base) {
> +       if (IS_ERR(host->pmerrloc_base)) {
>                 dev_err(host->dev,
>                         "Can not get I/O resource for PMECC ERRLOC controller!\n");
> -               return -EIO;
> +               return PTR_ERR(host->pmerrloc_base);
>         }
>
>         host->pmecc_rom_base = dev_request_mem_region(dev, 3);
> @@ -1249,9 +1249,9 @@ static int atmel_hw_nand_init_params(struct device_d *dev,
>         struct nand_chip *nand_chip = &host->nand_chip;
>
>         host->ecc = dev_request_mem_region(dev, 1);
> -       if (host->ecc == NULL) {
> +       if (IS_ERR(host->ecc)) {
>                 dev_err(host->dev, "ioremap failed\n");
> -               return -EIO;
> +               return PTR_ERR(host->ecc);
>         }
>
>         /* ECC is calculated for the whole page (1 step) */
> diff --git a/drivers/pinctrl/mvebu/armada-370.c b/drivers/pinctrl/mvebu/armada-370.c
> index b7901f8..7ad8d04 100644
> --- a/drivers/pinctrl/mvebu/armada-370.c
> +++ b/drivers/pinctrl/mvebu/armada-370.c
> @@ -397,8 +397,8 @@ static int armada_370_pinctrl_probe(struct device_d *dev)
>                 (struct mvebu_pinctrl_soc_info *)match->data;
>
>         mpp_base = dev_request_mem_region(dev, 0);
> -       if (!mpp_base)
> -               return -EBUSY;
> +       if (IS_ERR(mpp_base))
> +               return PTR_ERR(mpp_base);
>
>         return mvebu_pinctrl_probe(dev, soc);
>  }
> diff --git a/drivers/rtc/rtc-jz4740.c b/drivers/rtc/rtc-jz4740.c
> index 8194050..762f356 100644
> --- a/drivers/rtc/rtc-jz4740.c
> +++ b/drivers/rtc/rtc-jz4740.c
> @@ -119,9 +119,9 @@ static int jz4740_rtc_probe(struct device_d *dev)
>         void __iomem *base;
>
>         base = dev_request_mem_region(dev, 0);
> -       if (!base) {
> +       if (IS_ERR(base)) {
>                 dev_err(dev, "could not get memory region\n");
> -               return -ENODEV;
> +               return PTR_ERR(base);
>         }
>
>         rtc = xzalloc(sizeof(*rtc));
> diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
> index 3db3480..831fbde 100644
> --- a/drivers/usb/gadget/pxa27x_udc.c
> +++ b/drivers/usb/gadget/pxa27x_udc.c
> @@ -1453,8 +1453,8 @@ static int __init pxa_udc_probe(struct device_d *dev)
>         int gpio, ret;
>
>         udc->regs = dev_request_mem_region(dev, 0);
> -       if (!udc->regs)
> -               return -ENXIO;
> +       if (IS_ERR(udc->regs))
> +               return PTR_ERR(udc->regs);
>
>         udc->dev = dev;
>         udc->mach = dev->platform_data;
> diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
> index af1a321..576dc9a 100644
> --- a/drivers/usb/imx/imx-usb-misc.c
> +++ b/drivers/usb/imx/imx-usb-misc.c
> @@ -553,8 +553,8 @@ static int imx_usbmisc_probe(struct device_d *dev)
>                 return ret;
>
>         usbmisc_base = dev_request_mem_region(dev, 0);
> -       if (!usbmisc_base)
> -               return -ENOMEM;
> +       if (IS_ERR(usbmisc_base))
> +               return PTR_ERR(usbmisc_base);
>
>         imxusbmisc_data = devtype;
>
> diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
> index 837c1b5..4562fb2 100644
> --- a/drivers/usb/imx/imx-usb-phy.c
> +++ b/drivers/usb/imx/imx-usb-phy.c
> @@ -71,7 +71,7 @@ static int imx_usbphy_probe(struct device_d *dev)
>         imxphy = xzalloc(sizeof(*imxphy));
>
>         imxphy->base = dev_request_mem_region(dev, 0);
> -       if (!imxphy->base) {
> +       if (IS_ERR(imxphy->base)) {
>                 ret = -ENODEV;
>                 goto err_free;
>         }
> @@ -92,7 +92,7 @@ err_clk:
>  err_free:
>         free(imxphy);
>
> -       return ret;
> +       return PTR_ERR(imxphy->base);
>  };
>
>  static __maybe_unused struct of_device_id imx_usbphy_dt_ids[] = {
> diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
> index 2d58bbe..2be31ea 100644
> --- a/drivers/usb/musb/phy-am335x.c
> +++ b/drivers/usb/musb/phy-am335x.c
> @@ -37,7 +37,7 @@ static int am335x_phy_probe(struct device_d *dev)
>                 return -ENOMEM;
>
>         am_usbphy->base = dev_request_mem_region(dev, 0);
> -       if (!am_usbphy->base) {
> +       if (IS_ERR(am_usbphy->base)) {
>                 ret = -ENODEV;
>                 goto err_free;
>         }
> @@ -62,7 +62,7 @@ static int am335x_phy_probe(struct device_d *dev)
>  err_free:
>         free(am_usbphy);
>
> -       return ret;
> +       return PTR_ERR(am_usbphy->base);
>  };
>
>  static __maybe_unused struct of_device_id am335x_phy_dt_ids[] = {
> diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
> index 25fcb0c..49cbca1 100644
> --- a/drivers/video/imx-ipu-v3/imx-hdmi.c
> +++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
> @@ -1294,8 +1294,8 @@ static int dw_hdmi_probe(struct device_d *dev)
>         hdmi->ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
>
>         hdmi->regs = dev_request_mem_region(dev, 0);
> -       if (!hdmi->regs)
> -               return -EBUSY;
> +       if (IS_ERR(hdmi->regs))
> +               return PTR_ERR(hdmi->regs);
>
>         hdmi->isfr_clk = clk_get(hdmi->dev, "isfr");
>         if (IS_ERR(hdmi->isfr_clk)) {
> diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
> index 70bb0e5..398eefb 100644
> --- a/drivers/video/imx-ipu-v3/ipu-common.c
> +++ b/drivers/video/imx-ipu-v3/ipu-common.c
> @@ -761,8 +761,8 @@ static int ipu_probe(struct device_d *dev)
>                 return ret;
>
>         ipu_base = dev_request_mem_region(dev, 0);
> -       if (!ipu_base)
> -               return -EBUSY;
> +       if (IS_ERR(ipu_base))
> +               return PTR_ERR(ipu_base);
>
>         ipu = xzalloc(sizeof(*ipu));
>
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index 1952548..1458894 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -183,9 +183,9 @@ static int imx_wd_probe(struct device_d *dev)
>
>         priv = xzalloc(sizeof(struct imx_wd));
>         priv->base = dev_request_mem_region(dev, 0);
> -       if (!priv->base) {
> +       if (IS_ERR(priv->base)) {
>                 dev_err(dev, "could not get memory region\n");
> -               return -ENODEV;
> +               return PTR_ERR(priv->base);
>         }
>         priv->ops = ops;
>         priv->wd.set_timeout = imx_watchdog_set_timeout;
> diff --git a/drivers/watchdog/jz4740.c b/drivers/watchdog/jz4740.c
> index 3d45b46..85a1c1d 100644
> --- a/drivers/watchdog/jz4740.c
> +++ b/drivers/watchdog/jz4740.c
> @@ -71,9 +71,9 @@ static int jz4740_wdt_probe(struct device_d *dev)
>
>         priv = xzalloc(sizeof(struct jz4740_wdt_drvdata));
>         priv->base = dev_request_mem_region(dev, 0);
> -       if (!priv->base) {
> +       if (IS_ERR(priv->base)) {
>                 dev_err(dev, "could not get memory region\n");
> -               return -ENODEV;
> +               return PTR_ERR(priv->base);
>         }
>
>         dev->priv = priv;
> --
> 2.7.0
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
