Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZDtz-0008Cy-Mt
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 08:37:40 +0000
Message-ID: <1456475830.3401.8.camel@lws-tremmet.phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 26 Feb 2016 09:37:10 +0100
In-Reply-To: <1455792617-13671-4-git-send-email-s.hauer@pengutronix.de>
References: <1455792617-13671-1-git-send-email-s.hauer@pengutronix.de>
 <1455792617-13671-4-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/3] driver: replace dev_request_mem_region with
 dev_request_mem_resource
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hello Sascha,

Am Donnerstag, den 18.02.2016, 11:50 +0100 schrieb Sascha Hauer:
> dev_request_mem_region doesn't work properly one some SoCs on which
> PTR_ERR() values clash with valid return values from dev_request_mem_region.
> Replace them with dev_request_mem_resource where possible.
> 
> This patch has been generated with the following semantic patch.
> 
> expression d;
> expression n;
> expression io;
> identifier func;
> @@
> func(...) {
> +struct resource *iores;
> <+...
> -io = dev_request_mem_region(d, n);
> -if (IS_ERR(io)) {
> +iores = dev_request_mem_resource(d, n);
> +if (IS_ERR(iores)) {
> ...
> -	return PTR_ERR(io);
> -}
> +	return PTR_ERR(iores);
> +}
> +io = IOMEM(iores->start);
> ...+>
> }
> 
> @@
> expression d;
> expression n;
> expression io;
> identifier func;
> @@
> func(...) {
> +struct resource *iores;
> <+...
> -io = dev_request_mem_region(d, n);
> -if (IS_ERR(io)) {
> +iores = dev_request_mem_resource(d, n);
> +if (IS_ERR(iores))
> -	return PTR_ERR(io);
> -}
> +	return PTR_ERR(iores);
> +io = IOMEM(iores->start);
> ...+>
> }
> 
> @@
> expression d;
> expression n;
> expression io;
> identifier func;
> @@
> func(...) {
> +struct resource *iores;
> <+...
> -io = dev_request_mem_region(d, n);
> -if (IS_ERR(io)) {
> -	ret = PTR_ERR(io);
> +iores = dev_request_mem_resource(d, n);
> +if (IS_ERR(iores)) {
> +	ret = PTR_ERR(iores);

here you seem to miss:

io = IOMEM(iores->start);

this breaks AM335x boards in next.

Regards,
Teresa

> ...
> }
> ...+>
> }
> 
> @@
> expression d;
> expression n;
> expression io;
> identifier func;
> @@
> func(...) {
> +struct resource *iores;
> <+...
> -io = dev_request_mem_region(d, n);
> +iores = dev_request_mem_resource(d, n);
> +if (IS_ERR(iores))
> +	return PTR_ERR(iores);
> +io = IOMEM(iores->start);
> ...+>
> }
> 
> @@
> identifier func;
> @@
> func(...) {
> <+...
> struct resource *iores;
> -struct resource *iores;
> ...+>
> }
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-at91/sam9_smc.c         |  8 +++++---
>  arch/arm/mach-imx/clk-imx1.c          |  8 +++++---
>  arch/arm/mach-imx/clk-imx21.c         |  8 +++++---
>  arch/arm/mach-imx/clk-imx25.c         |  8 +++++---
>  arch/arm/mach-imx/clk-imx27.c         |  8 +++++---
>  arch/arm/mach-imx/clk-imx31.c         |  8 +++++---
>  arch/arm/mach-imx/clk-imx35.c         |  8 +++++---
>  arch/arm/mach-imx/clk-imx5.c          | 14 ++++++++++----
>  arch/arm/mach-imx/clk-imx6.c          |  8 +++++---
>  arch/arm/mach-imx/clk-imx6sx.c        |  8 +++++---
>  arch/arm/mach-imx/clocksource.c       |  8 +++++---
>  arch/arm/mach-imx/esdctl.c            |  8 +++++---
>  arch/arm/mach-imx/iim.c               |  8 +++++---
>  arch/arm/mach-imx/ocotp.c             |  8 +++++---
>  arch/arm/mach-mxs/ocotp.c             |  8 +++++---
>  arch/arm/mach-tegra/tegra20-pmc.c     |  8 +++++---
>  arch/arm/mach-tegra/tegra20-timer.c   |  8 +++++---
>  arch/arm/mach-zynq/clk-zynq7000.c     |  8 +++++---
>  arch/mips/mach-ar231x/ar231x_reset.c  |  8 +++++---
>  drivers/ata/ahci.c                    |  8 +++++---
>  drivers/ata/intf_platform_ide.c       | 11 +++++++++--
>  drivers/ata/pata-imx.c                |  8 +++++---
>  drivers/ata/sata-imx.c                |  8 +++++---
>  drivers/bus/imx-weim.c                |  7 ++++---
>  drivers/clk/clk-ar933x.c              |  8 +++++---
>  drivers/clk/mvebu/common.c            | 16 ++++++++++------
>  drivers/clk/mvebu/corediv.c           |  8 +++++---
>  drivers/clk/mxs/clk-imx23.c           |  8 +++++---
>  drivers/clk/mxs/clk-imx28.c           |  8 +++++---
>  drivers/clk/socfpga.c                 |  8 +++++---
>  drivers/clk/tegra/clk-tegra124.c      |  8 +++++---
>  drivers/clk/tegra/clk-tegra20.c       |  8 +++++---
>  drivers/clk/tegra/clk-tegra30.c       |  8 +++++---
>  drivers/clocksource/arm_smp_twd.c     |  8 +++++---
>  drivers/clocksource/bcm2835.c         |  8 +++++---
>  drivers/clocksource/clps711x.c        |  8 +++++---
>  drivers/clocksource/digic.c           |  8 +++++---
>  drivers/clocksource/mvebu.c           |  8 +++++---
>  drivers/clocksource/nomadik.c         |  8 +++++---
>  drivers/clocksource/orion.c           |  8 +++++---
>  drivers/clocksource/uemd.c            |  8 +++++---
>  drivers/dma/apbh_dma.c                |  8 +++++---
>  drivers/firmware/socfpga.c            | 11 +++++++++--
>  drivers/gpio/gpio-ath79.c             |  8 +++++---
>  drivers/gpio/gpio-bcm2835.c           |  6 +++++-
>  drivers/gpio/gpio-clps711x.c          | 22 ++++++++++++---------
>  drivers/gpio/gpio-davinci.c           |  8 +++++---
>  drivers/gpio/gpio-digic.c             |  6 +++++-
>  drivers/gpio/gpio-dw.c                |  8 +++++---
>  drivers/gpio/gpio-imx.c               |  6 +++++-
>  drivers/gpio/gpio-jz4740.c            |  8 +++++---
>  drivers/gpio/gpio-malta-fpga-i2c.c    |  8 +++++---
>  drivers/gpio/gpio-omap.c              |  8 +++++---
>  drivers/gpio/gpio-orion.c             |  8 +++++---
>  drivers/gpio/gpio-tegra.c             |  8 +++++---
>  drivers/i2c/busses/i2c-at91.c         |  6 +++++-
>  drivers/i2c/busses/i2c-designware.c   |  7 ++++---
>  drivers/i2c/busses/i2c-imx.c          |  7 ++++---
>  drivers/i2c/busses/i2c-mv64xxx.c      |  8 +++++---
>  drivers/i2c/busses/i2c-omap.c         |  8 +++++---
>  drivers/i2c/busses/i2c-tegra.c        |  8 +++++---
>  drivers/i2c/busses/i2c-versatile.c    |  7 ++++---
>  drivers/input/imx_keypad.c            |  8 +++++---
>  drivers/mci/atmel_mci.c               |  8 +++++---
>  drivers/mci/dw_mmc.c                  |  8 +++++---
>  drivers/mci/imx-esdhc.c               |  8 +++++---
>  drivers/mci/imx.c                     |  8 +++++---
>  drivers/mci/mci-bcm2835.c             |  8 +++++---
>  drivers/mci/mxs.c                     |  8 +++++---
>  drivers/mci/omap_hsmmc.c              |  8 +++++---
>  drivers/mci/pxamci.c                  |  8 +++++---
>  drivers/mci/s3c.c                     |  8 +++++---
>  drivers/mci/tegra-sdmmc.c             |  8 +++++---
>  drivers/misc/sram.c                   |  8 +++++---
>  drivers/mtd/devices/docg3.c           |  6 +++++-
>  drivers/mtd/devices/mtdram.c          |  9 +++++----
>  drivers/mtd/nand/atmel_nand.c         | 36 ++++++++++++++++++++++-------------
>  drivers/mtd/nand/nand_denali_dt.c     | 15 +++++++++------
>  drivers/mtd/nand/nand_imx.c           | 21 ++++++++++++++++----
>  drivers/mtd/nand/nand_mrvl_nfc.c      |  6 +++++-
>  drivers/mtd/nand/nand_mxs.c           | 16 +++++++++-------
>  drivers/mtd/nand/nand_omap_gpmc.c     |  6 +++++-
>  drivers/mtd/nand/nand_orion.c         |  8 +++++---
>  drivers/mtd/nand/nand_s3c24xx.c       |  6 +++++-
>  drivers/mtd/nor/cfi_flash.c           |  8 +++++---
>  drivers/mtd/spi-nor/cadence-quadspi.c | 11 +++++++++--
>  drivers/net/altera_tse.c              | 29 ++++++++++++++++------------
>  drivers/net/ar231x.c                  | 15 +++++++++------
>  drivers/net/arc_emac.c                |  8 +++++---
>  drivers/net/cpsw.c                    |  8 +++++---
>  drivers/net/cs8900.c                  |  6 +++++-
>  drivers/net/davinci_emac.c            | 21 ++++++++++++++++----
>  drivers/net/designware.c              |  8 +++++---
>  drivers/net/dm9k.c                    | 11 +++++++++--
>  drivers/net/ethoc.c                   |  8 +++++---
>  drivers/net/fec_imx.c                 |  6 +++++-
>  drivers/net/fec_mpc5200.c             |  8 +++++---
>  drivers/net/ks8851_mll.c              | 16 +++++++++-------
>  drivers/net/macb.c                    |  8 +++++---
>  drivers/net/smc91111.c                |  8 +++++---
>  drivers/net/smc911x.c                 |  6 +++++-
>  drivers/net/xgmac.c                   |  6 +++++-
>  drivers/pci/pci-imx6.c                |  8 +++++---
>  drivers/pinctrl/imx-iomux-v2.c        |  8 +++++---
>  drivers/pinctrl/imx-iomux-v3.c        |  6 +++++-
>  drivers/pinctrl/mvebu/armada-370.c    |  8 +++++---
>  drivers/pinctrl/mvebu/armada-xp.c     |  8 +++++---
>  drivers/pinctrl/mvebu/dove.c          | 11 +++++++++--
>  drivers/pinctrl/mvebu/kirkwood.c      |  8 +++++---
>  drivers/pinctrl/pinctrl-single.c      |  6 +++++-
>  drivers/pinctrl/pinctrl-tegra-xusb.c  |  8 +++++---
>  drivers/pinctrl/pinctrl-tegra20.c     |  8 +++++---
>  drivers/pinctrl/pinctrl-tegra30.c     |  8 +++++---
>  drivers/pwm/pwm-imx.c                 |  8 +++++---
>  drivers/pwm/pwm-mxs.c                 |  8 +++++---
>  drivers/pwm/pxa_pwm.c                 |  6 +++++-
>  drivers/rtc/rtc-jz4740.c              |  8 +++++---
>  drivers/serial/serial_altera.c        |  6 +++++-
>  drivers/serial/serial_altera_jtag.c   |  6 +++++-
>  drivers/serial/serial_ar933x.c        |  8 +++++---
>  drivers/serial/serial_auart.c         |  8 +++++---
>  drivers/serial/serial_cadence.c       |  7 ++++---
>  drivers/serial/serial_digic.c         |  6 +++++-
>  drivers/serial/serial_imx.c           |  6 +++++-
>  drivers/serial/serial_mpc5xxx.c       |  8 +++++---
>  drivers/serial/serial_netx.c          |  6 +++++-
>  drivers/serial/serial_ns16550.c       |  8 +++++---
>  drivers/serial/serial_pl010.c         |  6 +++++-
>  drivers/serial/serial_pxa.c           |  6 +++++-
>  drivers/serial/serial_s3c.c           |  6 +++++-
>  drivers/serial/stm-serial.c           |  8 +++++---
>  drivers/spi/altera_spi.c              |  8 +++++---
>  drivers/spi/ath79_spi.c               |  6 +++++-
>  drivers/spi/atmel_spi.c               |  6 +++++-
>  drivers/spi/imx_spi.c                 |  6 +++++-
>  drivers/spi/mvebu_spi.c               |  7 ++++---
>  drivers/spi/mxs_spi.c                 |  8 +++++---
>  drivers/spi/omap3_spi.c               |  6 +++++-
>  drivers/usb/gadget/at91_udc.c         |  6 +++++-
>  drivers/usb/gadget/pxa27x_udc.c       |  8 +++++---
>  drivers/usb/host/ehci-atmel.c         |  6 +++++-
>  drivers/usb/host/ehci-hcd.c           | 16 +++++++++++-----
>  drivers/usb/host/ohci-hcd.c           |  8 +++++---
>  drivers/usb/host/xhci-hcd.c           |  6 +++++-
>  drivers/usb/imx/chipidea-imx.c        |  8 +++++---
>  drivers/usb/imx/imx-usb-misc.c        |  8 +++++---
>  drivers/usb/imx/imx-usb-phy.c         |  9 +++++----
>  drivers/usb/musb/musb_dsps.c          | 16 +++++++++-------
>  drivers/usb/musb/phy-am335x-control.c | 16 +++++++++-------
>  drivers/usb/musb/phy-am335x.c         |  9 +++++----
>  drivers/video/atmel_lcdfb_core.c      |  8 +++++---
>  drivers/video/imx-ipu-fb.c            |  8 +++++---
>  drivers/video/imx-ipu-v3/imx-hdmi.c   |  8 +++++---
>  drivers/video/imx-ipu-v3/ipu-common.c |  8 +++++---
>  drivers/video/imx.c                   |  8 +++++---
>  drivers/video/pxa.c                   |  8 +++++---
>  drivers/video/s3c24xx.c               |  6 +++++-
>  drivers/video/stm.c                   |  6 +++++-
>  drivers/watchdog/davinci_wdt.c        |  8 +++++---
>  drivers/watchdog/im28wd.c             |  8 +++++---
>  drivers/watchdog/imxwd.c              |  8 +++++---
>  drivers/watchdog/jz4740.c             |  8 +++++---
>  drivers/watchdog/omap_wdt.c           |  7 ++++---
>  163 files changed, 930 insertions(+), 478 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
> index 6346bb4..d2b075e 100644
> --- a/arch/arm/mach-at91/sam9_smc.c
> +++ b/arch/arm/mach-at91/sam9_smc.c
> @@ -173,6 +173,7 @@ void sama5_smc_configure(int id, int cs, struct sam9_smc_config *config)
>  
>  static int at91sam9_smc_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int id = dev->id;
>  
>  	if (id < 0) {
> @@ -182,11 +183,12 @@ static int at91sam9_smc_probe(struct device_d *dev)
>  		return -EIO;
>  	}
>  
> -	smc_base_addr[id] = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(smc_base_addr[id])) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "Impossible to request smc.%d\n", id);
> -		return PTR_ERR(smc_base_addr[id]);
> +		return PTR_ERR(iores);
>  	}
> +	smc_base_addr[id] = IOMEM(iores->start);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-imx/clk-imx1.c b/arch/arm/mach-imx/clk-imx1.c
> index bb1318f..5f600a9 100644
> --- a/arch/arm/mach-imx/clk-imx1.c
> +++ b/arch/arm/mach-imx/clk-imx1.c
> @@ -87,11 +87,13 @@ int __init mx1_clocks_init(void __iomem *regs, unsigned long fref)
>  
>  static int imx1_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *regs;
>  
> -	regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(regs))
> -		return PTR_ERR(regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	regs = IOMEM(iores->start);
>  
>  	mx1_clocks_init(regs, 32000);
>  
> diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
> index b48bb8c..546461b 100644
> --- a/arch/arm/mach-imx/clk-imx21.c
> +++ b/arch/arm/mach-imx/clk-imx21.c
> @@ -107,13 +107,15 @@ static const char *spll_sel_clks[] = {
>  
>  static int imx21_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *base;
>  	unsigned long lref = 32768;
>  	unsigned long href = 26000000;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	writel(PCCR0_UART1_EN | PCCR0_UART2_EN | PCCR0_UART3_EN | PCCR0_UART4_EN |
>  			PCCR0_CSPI1_EN | PCCR0_CSPI2_EN | PCCR0_SDHC1_EN |
> diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
> index 7d10078..fccea7f 100644
> --- a/arch/arm/mach-imx/clk-imx25.c
> +++ b/arch/arm/mach-imx/clk-imx25.c
> @@ -85,11 +85,13 @@ static const char *per_sel_clks[] = {
>  
>  static int imx25_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *base;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	writel((1 << 3) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 8) | (1 << 9) |
>  			(1 << 10) | (1 << 15) |	(1 << 19) | (1 << 21) | (1 << 22) |
> diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
> index bd1753a..4b63244 100644
> --- a/arch/arm/mach-imx/clk-imx27.c
> +++ b/arch/arm/mach-imx/clk-imx27.c
> @@ -156,11 +156,13 @@ static const char *clko_sel_clks[] = {
>  
>  static int imx27_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *base;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	writel(PCCR0_SDHC3_EN | PCCR0_SDHC2_EN | PCCR0_SDHC1_EN |
>  			PCCR0_PWM_EN | PCCR0_KPP_EN | PCCR0_IIM_EN |
> diff --git a/arch/arm/mach-imx/clk-imx31.c b/arch/arm/mach-imx/clk-imx31.c
> index eb9bb09..8d135c9 100644
> --- a/arch/arm/mach-imx/clk-imx31.c
> +++ b/arch/arm/mach-imx/clk-imx31.c
> @@ -80,11 +80,13 @@ static const char *per_sel[] = {
>  
>  static int imx31_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *base;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	writel(0xffffffff, base + CCM_CGR0);
>  	writel(0xffffffff, base + CCM_CGR1);
> diff --git a/arch/arm/mach-imx/clk-imx35.c b/arch/arm/mach-imx/clk-imx35.c
> index dde2339..2433d73 100644
> --- a/arch/arm/mach-imx/clk-imx35.c
> +++ b/arch/arm/mach-imx/clk-imx35.c
> @@ -90,14 +90,16 @@ static const char *ipg_per_sel[] = {
>  
>  static int imx35_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	u32 pdr0, consumer_sel, hsp_sel;
>  	struct arm_ahb_div *aad;
>  	unsigned char *hsp_div;
>  	void __iomem *base;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	writel(0xffffffff, base + CCM_CGR0);
>  	writel(0xffffffff, base + CCM_CGR1);
> diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
> index 70db31c..51a6460 100644
> --- a/arch/arm/mach-imx/clk-imx5.c
> +++ b/arch/arm/mach-imx/clk-imx5.c
> @@ -304,11 +304,13 @@ int __init mx51_clocks_init(struct device_d *dev, void __iomem *regs)
>  
>  static int imx51_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *regs;
>  
> -	regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(regs))
> -		return PTR_ERR(regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	regs = IOMEM(iores->start);
>  
>  	mx51_clocks_init(dev, regs);
>  
> @@ -392,9 +394,13 @@ int __init mx53_clocks_init(struct device_d *dev, void __iomem *regs)
>  
>  static int imx53_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *regs;
>  
> -	regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	regs = IOMEM(iores->start);
>  
>  	mx53_clocks_init(dev, regs);
>  
> diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
> index 597e502..068f269 100644
> --- a/arch/arm/mach-imx/clk-imx6.c
> +++ b/arch/arm/mach-imx/clk-imx6.c
> @@ -337,12 +337,14 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
>  
>  static int imx6_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *base, *anatop_base, *ccm_base;
>  
>  	anatop_base = (void *)MX6_ANATOP_BASE_ADDR;
> -	ccm_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(ccm_base))
> -		return PTR_ERR(ccm_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	ccm_base = IOMEM(iores->start);
>  
>  	base = anatop_base;
>  
> diff --git a/arch/arm/mach-imx/clk-imx6sx.c b/arch/arm/mach-imx/clk-imx6sx.c
> index e88e240..d758957 100644
> --- a/arch/arm/mach-imx/clk-imx6sx.c
> +++ b/arch/arm/mach-imx/clk-imx6sx.c
> @@ -118,15 +118,17 @@ static struct clk_div_table video_div_table[] = {
>  
>  static int imx6sx_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *base, *anatop_base, *ccm_base;
>  	struct device_node *ccm_node = dev->device_node;
>  
>  	clks[IMX6SX_CLK_DUMMY] = clk_fixed("dummy", 0);
>  
>  	anatop_base = (void *)MX6_ANATOP_BASE_ADDR;
> -	ccm_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(ccm_base))
> -		return PTR_ERR(ccm_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	ccm_base = IOMEM(iores->start);
>  
>  	base = anatop_base;
>  
> diff --git a/arch/arm/mach-imx/clocksource.c b/arch/arm/mach-imx/clocksource.c
> index 8766e39..66dcea4 100644
> --- a/arch/arm/mach-imx/clocksource.c
> +++ b/arch/arm/mach-imx/clocksource.c
> @@ -91,6 +91,7 @@ static struct notifier_block imx_clock_notifier = {
>  
>  static int imx_gpt_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int i;
>  	int ret;
>  	unsigned long rate;
> @@ -103,9 +104,10 @@ static int imx_gpt_probe(struct device_d *dev)
>  	if (ret)
>  		return ret;
>  
> -	timer_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(timer_base))
> -		return PTR_ERR(timer_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	timer_base = IOMEM(iores->start);
>  
>  	/* setup GP Timer 1 */
>  	writel(TCTL_SWR, timer_base + GPT_TCTL);
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 2f9f5e9..e633b62 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -308,6 +308,7 @@ static void imx6_mmdc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
>  
>  static int imx_esdctl_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct imx_esdctl_data *data;
>  	int ret;
>  	void *base;
> @@ -316,9 +317,10 @@ static int imx_esdctl_probe(struct device_d *dev)
>  	if (ret)
>  		return ret;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	if (imx_esdctl_disabled)
>  		return 0;
> diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
> index c16a6c6..dbd8ccf 100644
> --- a/arch/arm/mach-imx/iim.c
> +++ b/arch/arm/mach-imx/iim.c
> @@ -389,6 +389,7 @@ static inline void imx_iim_init_dt(struct device_d *dev, struct iim_priv *iim)
>  
>  static int imx_iim_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct iim_priv *iim;
>  	int i, ret;
>  	struct imx_iim_drvdata *drvdata = NULL;
> @@ -414,9 +415,10 @@ static int imx_iim_probe(struct device_d *dev)
>  
>  	iim->fuse_supply = ERR_PTR(-ENODEV);
>  
> -	iim->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(iim->base))
> -		return PTR_ERR(iim->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	iim->base = IOMEM(iores->start);
>  
>  	for (i = 0; i < IIM_NUM_BANKS; i++) {
>  		ret = imx_iim_add_bank(iim, i);
> diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
> index e2f10e1..1dc9108 100644
> --- a/arch/arm/mach-imx/ocotp.c
> +++ b/arch/arm/mach-imx/ocotp.c
> @@ -371,6 +371,7 @@ static struct regmap_bus imx_ocotp_regmap_bus = {
>  
>  static int imx_ocotp_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *base;
>  	struct ocotp_priv *priv;
>  	int ret = 0;
> @@ -380,9 +381,10 @@ static int imx_ocotp_probe(struct device_d *dev)
>  	if (ret)
>  		return ret;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	imx_ocotp_init_dt(dev, base);
>  
> diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
> index 0075845..72f3e82 100644
> --- a/arch/arm/mach-mxs/ocotp.c
> +++ b/arch/arm/mach-mxs/ocotp.c
> @@ -179,12 +179,14 @@ static struct file_operations mxs_ocotp_ops = {
>  
>  static int mxs_ocotp_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int err;
>  	struct ocotp_priv *priv = xzalloc(sizeof (*priv));
>  
> -	priv->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->base))
> -		return PTR_ERR(priv->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->base = IOMEM(iores->start);
>  
>  	priv->clk = clk_get(dev, NULL);
>  	if (IS_ERR(priv->clk))
> diff --git a/arch/arm/mach-tegra/tegra20-pmc.c b/arch/arm/mach-tegra/tegra20-pmc.c
> index 02f0bf7..f7c7ac9 100644
> --- a/arch/arm/mach-tegra/tegra20-pmc.c
> +++ b/arch/arm/mach-tegra/tegra20-pmc.c
> @@ -202,11 +202,13 @@ static void tegra20_pmc_detect_reset_cause(void)
>  
>  static int tegra20_pmc_probe(struct device_d *dev)
>  {
> -	pmc_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(pmc_base)) {
> +	struct resource *iores;
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(pmc_base);
> +		return PTR_ERR(iores);
>  	}
> +	pmc_base = IOMEM(iores->start);
>  
>  	tegra_powergate_init();
>  
> diff --git a/arch/arm/mach-tegra/tegra20-timer.c b/arch/arm/mach-tegra/tegra20-timer.c
> index a8e4d7b..2ba58bd 100644
> --- a/arch/arm/mach-tegra/tegra20-timer.c
> +++ b/arch/arm/mach-tegra/tegra20-timer.c
> @@ -45,17 +45,19 @@ static struct clocksource cs = {
>  
>  static int tegra20_timer_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	u32 reg;
>  
>  	/* use only one timer */
>  	if (timer_base)
>  		return -EBUSY;
>  
> -	timer_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(timer_base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(timer_base);
> +		return PTR_ERR(iores);
>  	}
> +	timer_base = IOMEM(iores->start);
>  
>  	/*
>  	 * calibrate timer to run at 1MHz
> diff --git a/arch/arm/mach-zynq/clk-zynq7000.c b/arch/arm/mach-zynq/clk-zynq7000.c
> index 2b9260b..cd49d84 100644
> --- a/arch/arm/mach-zynq/clk-zynq7000.c
> +++ b/arch/arm/mach-zynq/clk-zynq7000.c
> @@ -359,12 +359,14 @@ static struct clk *zynq_cpu_subclk(const char *name,
>  
>  static int zynq_clock_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *slcr_base;
>  	unsigned long ps_clk_rate = 33333330;
>  
> -	slcr_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(slcr_base))
> -		return PTR_ERR(slcr_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	slcr_base = IOMEM(iores->start);
>  
>  	clks[ps_clk]  = clk_fixed("ps_clk", ps_clk_rate);
>  
> diff --git a/arch/mips/mach-ar231x/ar231x_reset.c b/arch/mips/mach-ar231x/ar231x_reset.c
> index 318f772..7c322d8 100644
> --- a/arch/mips/mach-ar231x/ar231x_reset.c
> +++ b/arch/mips/mach-ar231x/ar231x_reset.c
> @@ -54,11 +54,13 @@ EXPORT_SYMBOL(ar231x_reset_bit);
>  
>  static int ar231x_reset_probe(struct device_d *dev)
>  {
> -	reset_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(reset_base)) {
> +	struct resource *iores;
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(reset_base);
> +		return PTR_ERR(iores);
>  	}
> +	reset_base = IOMEM(iores->start);
>  
>  	return 0;
>  }
> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> index 4e42180..c31b337 100644
> --- a/drivers/ata/ahci.c
> +++ b/drivers/ata/ahci.c
> @@ -659,15 +659,17 @@ int ahci_add_host(struct ahci_device *ahci)
>  
>  static int ahci_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct ahci_device *ahci;
>  	void __iomem *regs;
>  	int ret;
>  
>  	ahci = xzalloc(sizeof(*ahci));
>  
> -	regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(regs))
> -		return PTR_ERR(regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	regs = IOMEM(iores->start);
>  
>  	ahci->dev = dev;
>  	ahci->mmio_base = regs;
> diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
> index d0f7984..6e74bfb 100644
> --- a/drivers/ata/intf_platform_ide.c
> +++ b/drivers/ata/intf_platform_ide.c
> @@ -80,6 +80,7 @@ static void platform_ide_setup_port(void *reg_base, void *alt_base,
>  
>  static int platform_ide_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int rc;
>  	struct ide_port_info *pdata = dev->platform_data;
>  	struct ide_port *ide;
> @@ -102,11 +103,17 @@ static int platform_ide_probe(struct device_d *dev)
>  		return -EINVAL;
>  	}
>  
> -	reg_base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	reg_base = IOMEM(iores->start);
>  
>  	if (!IS_ERR(reg_base)) {
>  		mmio = 1;
> -		alt_base = dev_request_mem_region(dev, 1);
> +		iores = dev_request_mem_resource(dev, 1);
> +		if (IS_ERR(iores))
> +			return PTR_ERR(iores);
> +		alt_base = IOMEM(iores->start);
>  		if (IS_ERR(alt_base))
>  			alt_base = NULL;
>  	} else {
> diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
> index d8deba1..8429573 100644
> --- a/drivers/ata/pata-imx.c
> +++ b/drivers/ata/pata-imx.c
> @@ -153,6 +153,7 @@ static int pata_imx_detect(struct device_d *dev)
>  
>  static int imx_pata_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct ide_port *ide;
>  	struct clk *clk;
>  	void __iomem *base;
> @@ -160,9 +161,10 @@ static int imx_pata_probe(struct device_d *dev)
>  	const char *devname = NULL;
>  
>  	ide = xzalloc(sizeof(*ide));
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	clk = clk_get(dev, NULL);
>  	if (IS_ERR(clk)) {
> diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
> index 612762e..6a60195 100644
> --- a/drivers/ata/sata-imx.c
> +++ b/drivers/ata/sata-imx.c
> @@ -84,6 +84,7 @@ static int imx_sata_init_1ms(struct imx_ahci *imx_ahci)
>  
>  static int imx_sata_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct imx_ahci *imx_ahci;
>  	struct imx_sata_data *data;
>  	int ret;
> @@ -100,9 +101,10 @@ static int imx_sata_probe(struct device_d *dev)
>  		goto err_free;
>  	}
>  
> -	imx_ahci->ahci.mmio_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(imx_ahci->ahci.mmio_base))
> -		return PTR_ERR(imx_ahci->ahci.mmio_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	imx_ahci->ahci.mmio_base = IOMEM(iores->start);
>  
>  	data->init(imx_ahci);
>  
> diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
> index bc090cf..53dae83 100644
> --- a/drivers/bus/imx-weim.c
> +++ b/drivers/bus/imx-weim.c
> @@ -130,6 +130,7 @@ static int weim_parse_dt(struct imx_weim *weim)
>  
>  static int weim_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct imx_weim_devtype *devtype;
>  	struct imx_weim *weim;
>  	int ret;
> @@ -144,9 +145,9 @@ static int weim_probe(struct device_d *dev)
>  	weim->devtype = devtype;
>  
>  	/* get the resource */
> -	weim->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(weim->base)) {
> -		ret = PTR_ERR(weim->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
> +		ret = PTR_ERR(iores);
>  		goto weim_err;
>  	}
>  
> diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
> index 79b2571..373f8cc 100644
> --- a/drivers/clk/clk-ar933x.c
> +++ b/drivers/clk/clk-ar933x.c
> @@ -137,11 +137,13 @@ static void ar933x_pll_init(void __iomem *base)
>  
>  static int ar933x_clk_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *base;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	ar933x_ref_clk_init(base);
>  	ar933x_pll_init(base);
> diff --git a/drivers/clk/mvebu/common.c b/drivers/clk/mvebu/common.c
> index 1eded90..a06b29f 100644
> --- a/drivers/clk/mvebu/common.c
> +++ b/drivers/clk/mvebu/common.c
> @@ -42,6 +42,7 @@ static struct of_device_id mvebu_coreclk_ids[] = {
>  
>  int mvebu_coreclk_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct device_node *np = dev->device_node;
>  	const struct of_device_id *match;
>  	const struct coreclk_soc_desc *desc;
> @@ -57,9 +58,10 @@ int mvebu_coreclk_probe(struct device_d *dev)
>  	desc = (const struct coreclk_soc_desc *)match->data;
>  
>  	/* Get SAR base address */
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	/* Allocate struct for TCLK, cpu clk, and core ratio clocks */
>  	clk_data.clk_num = 2 + desc->num_ratios;
> @@ -151,6 +153,7 @@ static struct of_device_id mvebu_clk_gating_ids[] = {
>  
>  int mvebu_clk_gating_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct device_node *np = dev->device_node;
>  	const struct of_device_id *match;
>  	const struct clk_gating_soc_desc *desc;
> @@ -166,9 +169,10 @@ int mvebu_clk_gating_probe(struct device_d *dev)
>  		return -EINVAL;
>  	desc = (const struct clk_gating_soc_desc *)match->data;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	clk = of_clk_get(np, 0);
>  	if (IS_ERR(clk))
> diff --git a/drivers/clk/mvebu/corediv.c b/drivers/clk/mvebu/corediv.c
> index 55f6e6a..87b1f8b 100644
> --- a/drivers/clk/mvebu/corediv.c
> +++ b/drivers/clk/mvebu/corediv.c
> @@ -199,6 +199,7 @@ static struct of_device_id mvebu_corediv_clk_ids[] = {
>  
>  static int mvebu_corediv_clk_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct device_node *np = dev->device_node;
>  	const struct of_device_id *match;
>  	const struct clk_corediv_soc_desc *soc_desc;
> @@ -212,9 +213,10 @@ static int mvebu_corediv_clk_probe(struct device_d *dev)
>  		return -EINVAL;
>  	soc_desc = (const struct clk_corediv_soc_desc *)match->data;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	parent = of_clk_get(np, 0);
>  	if (IS_ERR(parent))
> diff --git a/drivers/clk/mxs/clk-imx23.c b/drivers/clk/mxs/clk-imx23.c
> index 8bf27c1..e28dae1 100644
> --- a/drivers/clk/mxs/clk-imx23.c
> +++ b/drivers/clk/mxs/clk-imx23.c
> @@ -126,11 +126,13 @@ int __init mx23_clocks_init(void __iomem *regs)
>  
>  static int imx23_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *regs;
>  
> -	regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(regs))
> -		return PTR_ERR(regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	regs = IOMEM(iores->start);
>  
>  	mx23_clocks_init(regs);
>  
> diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
> index a408044..ffe03c8 100644
> --- a/drivers/clk/mxs/clk-imx28.c
> +++ b/drivers/clk/mxs/clk-imx28.c
> @@ -167,11 +167,13 @@ int __init mx28_clocks_init(void __iomem *regs)
>  
>  static int imx28_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *regs;
>  
> -	regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(regs))
> -		return PTR_ERR(regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	regs = IOMEM(iores->start);
>  
>  	mx28_clocks_init(regs);
>  
> diff --git a/drivers/clk/socfpga.c b/drivers/clk/socfpga.c
> index 5952efb..37ed038 100644
> --- a/drivers/clk/socfpga.c
> +++ b/drivers/clk/socfpga.c
> @@ -374,12 +374,14 @@ static void socfpga_register_clocks(struct device_d *dev, struct device_node *no
>  
>  static int socfpga_ccm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *regs;
>  	struct device_node *clknode;
>  
> -	regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(regs))
> -		return PTR_ERR(regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	regs = IOMEM(iores->start);
>  
>  	clk_mgr_base_addr = regs;
>  
> diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
> index 7a2f7c0..cec7b5f 100644
> --- a/drivers/clk/tegra/clk-tegra124.c
> +++ b/drivers/clk/tegra/clk-tegra124.c
> @@ -335,9 +335,11 @@ static struct tegra_clk_init_table init_table[] = {
>  
>  static int tegra124_car_probe(struct device_d *dev)
>  {
> -	car_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(car_base))
> -		return PTR_ERR(car_base);
> +	struct resource *iores;
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	car_base = IOMEM(iores->start);
>  
>  	tegra124_osc_clk_init();
>  	tegra124_pll_init();
> diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
> index 2ff42d8..2f843bb 100644
> --- a/drivers/clk/tegra/clk-tegra20.c
> +++ b/drivers/clk/tegra/clk-tegra20.c
> @@ -338,9 +338,11 @@ static struct tegra_clk_init_table init_table[] = {
>  
>  static int tegra20_car_probe(struct device_d *dev)
>  {
> -	car_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(car_base))
> -		return PTR_ERR(car_base);
> +	struct resource *iores;
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	car_base = IOMEM(iores->start);
>  
>  	tegra20_osc_clk_init();
>  	tegra20_pll_init();
> diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
> index 46fd6dd..77f31d2 100644
> --- a/drivers/clk/tegra/clk-tegra30.c
> +++ b/drivers/clk/tegra/clk-tegra30.c
> @@ -366,9 +366,11 @@ static struct tegra_clk_init_table init_table[] = {
>  
>  static int tegra30_car_probe(struct device_d *dev)
>  {
> -	car_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(car_base))
> -		return PTR_ERR(car_base);
> +	struct resource *iores;
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	car_base = IOMEM(iores->start);
>  
>  	tegra30_osc_clk_init();
>  	tegra30_pll_init();
> diff --git a/drivers/clocksource/arm_smp_twd.c b/drivers/clocksource/arm_smp_twd.c
> index c0296cd..226150a 100644
> --- a/drivers/clocksource/arm_smp_twd.c
> +++ b/drivers/clocksource/arm_smp_twd.c
> @@ -42,6 +42,7 @@ static struct clocksource smp_twd_clksrc = {
>  
>  static int smp_twd_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	u32 tick_rate;
>  	u32 val;
>  	int ret;
> @@ -61,9 +62,10 @@ static int smp_twd_probe(struct device_d *dev)
>  		return ret;
>  	}
>  
> -	twd_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(twd_base))
> -		return PTR_ERR(twd_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	twd_base = IOMEM(iores->start);
>  
>  	tick_rate = clk_get_rate(twd_clk);
>  	if (tick_rate > SMP_TWD_MAX_FREQ) {
> diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
> index 0cb8e57..b5831d5 100644
> --- a/drivers/clocksource/bcm2835.c
> +++ b/drivers/clocksource/bcm2835.c
> @@ -42,6 +42,7 @@ static struct clocksource bcm2835_stc = {
>  
>  static int bcm2835_cs_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	static struct clk *stc_clk;
>  	u32 rate;
>  	int ret;
> @@ -61,9 +62,10 @@ static int bcm2835_cs_probe(struct device_d *dev)
>  	}
>  
>  	rate = clk_get_rate(stc_clk);
> -	stc_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(stc_base))
> -		return PTR_ERR(stc_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	stc_base = IOMEM(iores->start);
>  
>  	clocks_calc_mult_shift(&bcm2835_stc.mult, &bcm2835_stc.shift, rate, NSEC_PER_SEC, 60);
>  
> diff --git a/drivers/clocksource/clps711x.c b/drivers/clocksource/clps711x.c
> index a49853f..f6399e9 100644
> --- a/drivers/clocksource/clps711x.c
> +++ b/drivers/clocksource/clps711x.c
> @@ -29,6 +29,7 @@ static struct clocksource clps711x_cs = {
>  
>  static int clps711x_cs_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	u32 rate;
>  	struct clk *timer_clk;
>  
> @@ -37,11 +38,12 @@ static int clps711x_cs_probe(struct device_d *dev)
>  		return PTR_ERR(timer_clk);
>  
>  	rate = clk_get_rate(timer_clk);
> -	clps711x_timer_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(clps711x_timer_base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		clk_put(timer_clk);
> -		return PTR_ERR(clps711x_timer_base);
> +		return PTR_ERR(iores);
>  	}
> +	clps711x_timer_base = IOMEM(iores->start);
>  
>  	clocks_calc_mult_shift(&clps711x_cs.mult, &clps711x_cs.shift, rate,
>  			       NSEC_PER_SEC, 10);
> diff --git a/drivers/clocksource/digic.c b/drivers/clocksource/digic.c
> index 277bb02..1ecd839 100644
> --- a/drivers/clocksource/digic.c
> +++ b/drivers/clocksource/digic.c
> @@ -40,15 +40,17 @@ static struct clocksource digic_cs = {
>  
>  static int digic_timer_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	/* use only one timer */
>  	if (timer_base)
>  		return -EBUSY;
>  
> -	timer_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(timer_base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(timer_base);
> +		return PTR_ERR(iores);
>  	}
> +	timer_base = IOMEM(iores->start);
>  
>  	clocks_calc_mult_shift(&digic_cs.mult, &digic_cs.shift,
>  		DIGIC_TIMER_CLOCK, NSEC_PER_SEC, 1);
> diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
> index 88db0b0..cf80571 100644
> --- a/drivers/clocksource/mvebu.c
> +++ b/drivers/clocksource/mvebu.c
> @@ -56,12 +56,14 @@ static struct clocksource cs = {
>  
>  static int mvebu_timer_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct clk *clk;
>  	u32 rate, div, val;
>  
> -	timer_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(timer_base))
> -		return PTR_ERR(timer_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	timer_base = IOMEM(iores->start);
>  
>  	val = __raw_readl(timer_base + TIMER_CTRL_OFF);
>  	val &= ~(TIMER0_25MHZ | TIMER0_DIV_MASK);
> diff --git a/drivers/clocksource/nomadik.c b/drivers/clocksource/nomadik.c
> index 48f4715..9b20cbc 100644
> --- a/drivers/clocksource/nomadik.c
> +++ b/drivers/clocksource/nomadik.c
> @@ -94,6 +94,7 @@ static void nmdk_timer_reset(void)
>  
>  static int nmdk_mtu_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	static struct clk *mtu_clk;
>  	u32 rate;
>  	int ret;
> @@ -123,9 +124,10 @@ static int nmdk_mtu_probe(struct device_d *dev)
>  	nmdk_cycle = (rate + 1000 / 2) / 1000;
>  
>  	/* Save global pointer to mtu, used by functions above */
> -	mtu_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(mtu_base))
> -		return PTR_ERR(mtu_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	mtu_base = IOMEM(iores->start);
>  
>  	/* Init the timer and register clocksource */
>  	nmdk_timer_reset();
> diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
> index 2e40b49..97008da 100644
> --- a/drivers/clocksource/orion.c
> +++ b/drivers/clocksource/orion.c
> @@ -45,12 +45,14 @@ static struct clocksource clksrc = {
>  
>  static int orion_timer_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct clk *tclk;
>  	uint32_t val;
>  
> -	timer_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(timer_base))
> -		return PTR_ERR(timer_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	timer_base = IOMEM(iores->start);
>  
>  	tclk = clk_get(dev, NULL);
>  
> diff --git a/drivers/clocksource/uemd.c b/drivers/clocksource/uemd.c
> index d4291dd..b80908f 100644
> --- a/drivers/clocksource/uemd.c
> +++ b/drivers/clocksource/uemd.c
> @@ -66,6 +66,7 @@ static struct clocksource uemd_cs = {
>  
>  static int uemd_timer_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int mode;
>  	struct clk *timer_clk;
>  
> @@ -73,11 +74,12 @@ static int uemd_timer_probe(struct device_d *dev)
>  	if (timer_base)
>  		return -EBUSY;
>  
> -	timer_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(timer_base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(timer_base);
> +		return PTR_ERR(iores);
>  	}
> +	timer_base = IOMEM(iores->start);
>  
>  	timer_clk = clk_get(dev, NULL);
>  	if (IS_ERR(timer_clk)) {
> diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
> index bd0017b..64f4326 100644
> --- a/drivers/dma/apbh_dma.c
> +++ b/drivers/dma/apbh_dma.c
> @@ -588,6 +588,7 @@ int mxs_dma_go(int chan)
>   */
>  static int apbh_dma_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct apbh_dma *apbh;
>  	struct mxs_dma_chan *pchan;
>  	enum mxs_dma_id id;
> @@ -598,9 +599,10 @@ static int apbh_dma_probe(struct device_d *dev)
>  		return ret;
>  
>  	apbh_dma = apbh = xzalloc(sizeof(*apbh));
> -	apbh->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(apbh->regs))
> -		return PTR_ERR(apbh->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	apbh->regs = IOMEM(iores->start);
>  
>  	apbh->id = id;
>  
> diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
> index 159644b..5bc36bb 100644
> --- a/drivers/firmware/socfpga.c
> +++ b/drivers/firmware/socfpga.c
> @@ -395,6 +395,7 @@ static int programmed_get(struct param_d *p, void *priv)
>  
>  static int fpgamgr_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct fpgamgr *mgr;
>  	struct firmware_handler *fh;
>  	const char *alias = of_alias_get(dev->device_node);
> @@ -407,13 +408,19 @@ static int fpgamgr_probe(struct device_d *dev)
>  	mgr = xzalloc(sizeof(*mgr));
>  	fh = &mgr->fh;
>  
> -	mgr->regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	mgr->regs = IOMEM(iores->start);
>  	if (!mgr->regs) {
>  		ret = -EBUSY;
>  		goto out;
>  	}
>  
> -	mgr->regs_data = dev_request_mem_region(dev, 1);
> +	iores = dev_request_mem_resource(dev, 1);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	mgr->regs_data = IOMEM(iores->start);
>  	if (!mgr->regs_data) {
>  		ret = -EBUSY;
>  		goto out;
> diff --git a/drivers/gpio/gpio-ath79.c b/drivers/gpio/gpio-ath79.c
> index a1e42c4..d08d743 100644
> --- a/drivers/gpio/gpio-ath79.c
> +++ b/drivers/gpio/gpio-ath79.c
> @@ -107,6 +107,7 @@ static const struct of_device_id ath79_gpio_of_match[] = {
>  
>  static int ath79_gpio_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct device_node *np = dev->device_node;
>  	int err;
>  
> @@ -125,11 +126,12 @@ static int ath79_gpio_probe(struct device_d *dev)
>  		return -EINVAL;
>  	}
>  
> -	ath79_gpio_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(ath79_gpio_base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(ath79_gpio_base);
> +		return PTR_ERR(iores);
>  	}
> +	ath79_gpio_base = IOMEM(iores->start);
>  
>  	ath79_gpio_chip.dev = dev;
>  	ath79_gpio_chip.ngpio = ath79_gpio_count;
> diff --git a/drivers/gpio/gpio-bcm2835.c b/drivers/gpio/gpio-bcm2835.c
> index cec15c9..1802ab7 100644
> --- a/drivers/gpio/gpio-bcm2835.c
> +++ b/drivers/gpio/gpio-bcm2835.c
> @@ -112,11 +112,15 @@ static struct gpio_ops bcm2835_gpio_ops = {
>  
>  static int bcm2835_gpio_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct bcm2835_gpio_chip *bcmgpio;
>  	int ret;
>  
>  	bcmgpio = xzalloc(sizeof(*bcmgpio));
> -	bcmgpio->base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	bcmgpio->base = IOMEM(iores->start);
>  	bcmgpio->chip.ops = &bcm2835_gpio_ops;
>  	bcmgpio->chip.base = 0;
>  	bcmgpio->chip.ngpio = 54;
> diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
> index 43268b6..d71c606 100644
> --- a/drivers/gpio/gpio-clps711x.c
> +++ b/drivers/gpio/gpio-clps711x.c
> @@ -15,6 +15,7 @@
>  
>  static int clps711x_gpio_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int err, id = dev->id;
>  	void __iomem *dat, *dir = NULL, *dir_inv = NULL;
>  	struct bgpio_chip *bgc;
> @@ -25,20 +26,23 @@ static int clps711x_gpio_probe(struct device_d *dev)
>  	if (id < 0 || id > 4)
>  		return -ENODEV;
>  
> -	dat = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(dat))
> -		return PTR_ERR(dat);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	dat = IOMEM(iores->start);
>  
>  	switch (id) {
>  	case 3:
> -		dir_inv = dev_request_mem_region(dev, 1);
> -		if (IS_ERR(dir_inv))
> -			return PTR_ERR(dir_inv);
> +		iores = dev_request_mem_resource(dev, 1);
> +		if (IS_ERR(iores))
> +			return PTR_ERR(iores);
> +		dir_inv = IOMEM(iores->start);
>  		break;
>  	default:
> -		dir = dev_request_mem_region(dev, 1);
> -		if (IS_ERR(dir))
> -			return PTR_ERR(dir);
> +		iores = dev_request_mem_resource(dev, 1);
> +		if (IS_ERR(iores))
> +			return PTR_ERR(iores);
> +		dir = IOMEM(iores->start);
>  		break;
>  	}
>  
> diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
> index 61c6e7e..7c060a0 100644
> --- a/drivers/gpio/gpio-davinci.c
> +++ b/drivers/gpio/gpio-davinci.c
> @@ -142,6 +142,7 @@ static struct gpio_ops davinci_gpio_ops = {
>  
>  static int davinci_gpio_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *gpio_base;
>  	int ret;
>  	u32 val;
> @@ -162,11 +163,12 @@ static int davinci_gpio_probe(struct device_d *dev)
>  
>  	chips = xzalloc((ngpio / 32 + 1) * sizeof(*chips));
>  
> -	gpio_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(gpio_base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(gpio_base);
> +		return PTR_ERR(iores);
>  	}
> +	gpio_base = IOMEM(iores->start);
>  
>  	for (i = 0, base = 0; base < ngpio; i++, base += 32) {
>  		struct davinci_gpio_regs __iomem *regs;
> diff --git a/drivers/gpio/gpio-digic.c b/drivers/gpio/gpio-digic.c
> index 468aaa7..714e3b4 100644
> --- a/drivers/gpio/gpio-digic.c
> +++ b/drivers/gpio/gpio-digic.c
> @@ -122,6 +122,7 @@ static struct gpio_ops digic_gpio_ops = {
>  
>  static int digic_gpio_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct digic_gpio_chip *chip;
>  	struct resource *res;
>  	resource_size_t rsize;
> @@ -136,7 +137,10 @@ static int digic_gpio_probe(struct device_d *dev)
>  	rsize = resource_size(res);
>  	chip->gc.ngpio = rsize / sizeof(int32_t);
>  
> -	chip->base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	chip->base = IOMEM(iores->start);
>  	chip->gc.ops = &digic_gpio_ops;
>  	chip->gc.base = 0;
>  
> diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
> index 258e43b..f145c01 100644
> --- a/drivers/gpio/gpio-dw.c
> +++ b/drivers/gpio/gpio-dw.c
> @@ -164,14 +164,16 @@ static int dw_gpio_add_port(struct device_d *dev, struct device_node *node,
>  
>  static int dw_gpio_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct dw_gpio *gpio;
>  	struct device_node *node;
>  
>  	gpio = xzalloc(sizeof(*gpio));
>  
> -	gpio->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(gpio->regs))
> -		return PTR_ERR(gpio->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	gpio->regs = IOMEM(iores->start);
>  
>  	for_each_child_of_node(dev->device_node, node)
>  		dw_gpio_add_port(dev, node, gpio);
> diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
> index 6311db2..bfb0119 100644
> --- a/drivers/gpio/gpio-imx.c
> +++ b/drivers/gpio/gpio-imx.c
> @@ -132,6 +132,7 @@ static struct gpio_ops imx_gpio_ops = {
>  
>  static int imx_gpio_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct imx_gpio_chip *imxgpio;
>  	struct imx_gpio_regs *regs;
>  	int ret;
> @@ -141,7 +142,10 @@ static int imx_gpio_probe(struct device_d *dev)
>  		return ret;
>  
>  	imxgpio = xzalloc(sizeof(*imxgpio));
> -	imxgpio->base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	imxgpio->base = IOMEM(iores->start);
>  	imxgpio->chip.ops = &imx_gpio_ops;
>  	if (dev->id < 0) {
>  		imxgpio->chip.base = of_alias_get_id(dev->device_node, "gpio");
> diff --git a/drivers/gpio/gpio-jz4740.c b/drivers/gpio/gpio-jz4740.c
> index f7e6781..87e0716 100644
> --- a/drivers/gpio/gpio-jz4740.c
> +++ b/drivers/gpio/gpio-jz4740.c
> @@ -90,15 +90,17 @@ static struct gpio_ops jz4740_gpio_ops = {
>  
>  static int jz4740_gpio_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *base;
>  	struct jz4740_gpio_chip *jz4740_gpio;
>  	int ret;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(base);
> +		return PTR_ERR(iores);
>  	}
> +	base = IOMEM(iores->start);
>  
>  	jz4740_gpio = xzalloc(sizeof(*jz4740_gpio));
>  	jz4740_gpio->base = base;
> diff --git a/drivers/gpio/gpio-malta-fpga-i2c.c b/drivers/gpio/gpio-malta-fpga-i2c.c
> index ff77b8c..0188e51 100644
> --- a/drivers/gpio/gpio-malta-fpga-i2c.c
> +++ b/drivers/gpio/gpio-malta-fpga-i2c.c
> @@ -133,15 +133,17 @@ static struct gpio_ops malta_i2c_gpio_ops = {
>  
>  static int malta_i2c_gpio_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *gpio_base;
>  	struct malta_i2c_gpio *sc;
>  	int ret;
>  
> -	gpio_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(gpio_base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(gpio_base);
> +		return PTR_ERR(iores);
>  	}
> +	gpio_base = IOMEM(iores->start);
>  
>  	sc = xzalloc(sizeof(*sc));
>  	sc->base = gpio_base;
> diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
> index 43449df..b00766a 100644
> --- a/drivers/gpio/gpio-omap.c
> +++ b/drivers/gpio/gpio-omap.c
> @@ -141,15 +141,17 @@ static struct gpio_ops omap_gpio_ops = {
>  
>  static int omap_gpio_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct omap_gpio_chip *omapgpio;
>  	struct omap_gpio_drvdata *drvdata = NULL;
>  
>  	dev_get_drvdata(dev, (const void **)&drvdata);
>  
>  	omapgpio = xzalloc(sizeof(*omapgpio));
> -	omapgpio->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(omapgpio->base))
> -		return PTR_ERR(omapgpio->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	omapgpio->base = IOMEM(iores->start);
>  
>  	if (drvdata)
>  		omapgpio->base += drvdata->regofs;
> diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
> index 5348395..63ef966 100644
> --- a/drivers/gpio/gpio-orion.c
> +++ b/drivers/gpio/gpio-orion.c
> @@ -89,6 +89,7 @@ static struct gpio_ops orion_gpio_ops = {
>  
>  static int orion_gpio_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct orion_gpio_chip *gpio;
>  
>  	dev->id = of_alias_get_id(dev->device_node, "gpio");
> @@ -96,11 +97,12 @@ static int orion_gpio_probe(struct device_d *dev)
>  		return dev->id;
>  
>  	gpio = xzalloc(sizeof(*gpio));
> -	gpio->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(gpio->regs)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		free(gpio);
> -		return PTR_ERR(gpio->regs);
> +		return PTR_ERR(iores);
>  	}
> +	gpio->regs = IOMEM(iores->start);
>  	gpio->chip.dev = dev;
>  	gpio->chip.ops = &orion_gpio_ops;
>  	gpio->chip.base = dev->id * 32;
> diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
> index e2cc3f4..56808b5 100644
> --- a/drivers/gpio/gpio-tegra.c
> +++ b/drivers/gpio/gpio-tegra.c
> @@ -140,6 +140,7 @@ static struct gpio_chip tegra_gpio_chip = {
>  
>  static int tegra_gpio_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int i, j, ret;
>  
>  	ret = dev_get_drvdata(dev, (const void **)&config);
> @@ -148,11 +149,12 @@ static int tegra_gpio_probe(struct device_d *dev)
>  		return ret;
>  	}
>  
> -	gpio_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(gpio_base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(gpio_base);
> +		return PTR_ERR(iores);
>  	}
> +	gpio_base = IOMEM(iores->start);
>  
>  	for (i = 0; i < config->bank_count; i++) {
>  		for (j = 0; j < 4; j++) {
> diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
> index 622c56d..1ba200b 100644
> --- a/drivers/i2c/busses/i2c-at91.c
> +++ b/drivers/i2c/busses/i2c-at91.c
> @@ -410,6 +410,7 @@ static struct of_device_id at91_twi_dt_ids[] = {
>  
>  static int at91_twi_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct at91_twi_dev *i2c_at91;
>  	struct at91_twi_pdata *i2c_data;
>  	int rc = 0;
> @@ -425,7 +426,10 @@ static int at91_twi_probe(struct device_d *dev)
>  
>  	i2c_at91->pdata = i2c_data;
>  
> -	i2c_at91->base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	i2c_at91->base = IOMEM(iores->start);
>  	if (!i2c_at91->base) {
>  		dev_err(dev, "could not get memory region\n");
>  		rc = -ENODEV;
> diff --git a/drivers/i2c/busses/i2c-designware.c b/drivers/i2c/busses/i2c-designware.c
> index a51439f..4129ba5 100644
> --- a/drivers/i2c/busses/i2c-designware.c
> +++ b/drivers/i2c/busses/i2c-designware.c
> @@ -472,6 +472,7 @@ static int i2c_dw_xfer(struct i2c_adapter *adapter,
>  
>  static int i2c_dw_probe(struct device_d *pdev)
>  {
> +	struct resource *iores;
>  	struct dw_i2c_dev *dw;
>  	struct i2c_platform_data *pdata;
>  	int ret, bitrate;
> @@ -494,9 +495,9 @@ static int i2c_dw_probe(struct device_d *pdev)
>  	dw->adapter.dev.parent = pdev;
>  	dw->adapter.dev.device_node = pdev->device_node;
>  
> -	dw->base = dev_request_mem_region(pdev, 0);
> -	if (IS_ERR(dw->base)) {
> -		ret = PTR_ERR(dw->base);
> +	iores = dev_request_mem_resource(pdev, 0);
> +	if (IS_ERR(iores)) {
> +		ret = PTR_ERR(iores);
>  		goto fail;
>  	}
>  
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index affc277..1017971 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -584,6 +584,7 @@ static void i2c_fsl_init_recovery(struct fsl_i2c_struct *i2c_fsl, struct device_
>  
>  static int __init i2c_fsl_probe(struct device_d *pdev)
>  {
> +	struct resource *iores;
>  	struct fsl_i2c_struct *i2c_fsl;
>  	struct i2c_platform_data *pdata;
>  	int ret;
> @@ -604,9 +605,9 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
>  	i2c_fsl->adapter.nr = pdev->id;
>  	i2c_fsl->adapter.dev.parent = pdev;
>  	i2c_fsl->adapter.dev.device_node = pdev->device_node;
> -	i2c_fsl->base = dev_request_mem_region(pdev, 0);
> -	if (IS_ERR(i2c_fsl->base)) {
> -		ret = PTR_ERR(i2c_fsl->base);
> +	iores = dev_request_mem_resource(pdev, 0);
> +	if (IS_ERR(iores)) {
> +		ret = PTR_ERR(iores);
>  		goto fail;
>  	}
>  
> diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
> index 0c38e64..9b9e6c9 100644
> --- a/drivers/i2c/busses/i2c-mv64xxx.c
> +++ b/drivers/i2c/busses/i2c-mv64xxx.c
> @@ -595,6 +595,7 @@ out:
>  static int
>  mv64xxx_i2c_probe(struct device_d *pd)
>  {
> +	struct resource *iores;
>  	struct mv64xxx_i2c_data		*drv_data;
>  	int	rc;
>  
> @@ -603,9 +604,10 @@ mv64xxx_i2c_probe(struct device_d *pd)
>  
>  	drv_data = xzalloc(sizeof(*drv_data));
>  
> -	drv_data->reg_base = dev_request_mem_region(pd, 0);
> -	if (IS_ERR(drv_data->reg_base))
> -		return PTR_ERR(drv_data->reg_base);
> +	iores = dev_request_mem_resource(pd, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	drv_data->reg_base = IOMEM(iores->start);
>  
>  	drv_data->clk = clk_get(pd, NULL);
>  	if (IS_ERR(drv_data->clk))
> diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
> index 48c55da..bdb34ca 100644
> --- a/drivers/i2c/busses/i2c-omap.c
> +++ b/drivers/i2c/busses/i2c-omap.c
> @@ -1070,6 +1070,7 @@ static struct i2c_bus_recovery_info omap_i2c_bus_recovery_info = {
>  static int __init
>  i2c_omap_probe(struct device_d *pdev)
>  {
> +	struct resource *iores;
>  	struct omap_i2c_struct	*i2c_omap;
>  	struct omap_i2c_driver_data *i2c_data;
>  	int r;
> @@ -1109,9 +1110,10 @@ i2c_omap_probe(struct device_d *pdev)
>  		speed = 100;	/* Default speed */
>  
>  	i2c_omap->speed = speed;
> -	i2c_omap->base = dev_request_mem_region(pdev, 0);
> -	if (IS_ERR(i2c_omap->base))
> -		return PTR_ERR(i2c_omap->base);
> +	iores = dev_request_mem_resource(pdev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	i2c_omap->base = IOMEM(iores->start);
>  
>  	/*
>  	 * Read the Rev hi bit-[15:14] ie scheme this is 1 indicates ver2.
> diff --git a/drivers/i2c/busses/i2c-tegra.c b/drivers/i2c/busses/i2c-tegra.c
> index a6c6596..d56c0de 100644
> --- a/drivers/i2c/busses/i2c-tegra.c
> +++ b/drivers/i2c/busses/i2c-tegra.c
> @@ -605,16 +605,18 @@ static const struct tegra_i2c_hw_feature tegra114_i2c_hw = {
>  
>  static int tegra_i2c_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct tegra_i2c_dev *i2c_dev;
>  	struct clk *div_clk, *fast_clk;
>  	void __iomem *base;
>  	int ret = 0;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get iomem region\n");
> -		return PTR_ERR(base);
> +		return PTR_ERR(iores);
>  	}
> +	base = IOMEM(iores->start);
>  
>  	div_clk = clk_get(dev, "div-clk");
>  	if (IS_ERR(div_clk)) {
> diff --git a/drivers/i2c/busses/i2c-versatile.c b/drivers/i2c/busses/i2c-versatile.c
> index bfabc78..607485f 100644
> --- a/drivers/i2c/busses/i2c-versatile.c
> +++ b/drivers/i2c/busses/i2c-versatile.c
> @@ -66,6 +66,7 @@ static struct i2c_algo_bit_data i2c_versatile_algo = {
>  
>  static int i2c_versatile_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct i2c_versatile *i2c;
>  	int ret;
>  
> @@ -75,9 +76,9 @@ static int i2c_versatile_probe(struct device_d *dev)
>  		goto err_release;
>  	}
>  
> -	i2c->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(i2c->base)) {
> -		ret = PTR_ERR(i2c->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
> +		ret = PTR_ERR(iores);
>  		goto err_free;
>  	}
>  
> diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
> index 000e176..44ff9b7 100644
> --- a/drivers/input/imx_keypad.c
> +++ b/drivers/input/imx_keypad.c
> @@ -364,6 +364,7 @@ static void imx_keypad_inhibit(struct imx_keypad *keypad)
>  
>  static int __init imx_keypad_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct imx_keypad *keypad;
>  	const struct matrix_keymap_data *keymap_data = dev->platform_data;
>  	int i, ret, row, col;
> @@ -371,9 +372,10 @@ static int __init imx_keypad_probe(struct device_d *dev)
>  	keypad = xzalloc(sizeof(struct imx_keypad));
>  
>  	keypad->dev = dev;
> -	keypad->mmio_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(keypad->mmio_base))
> -		return PTR_ERR(keypad->mmio_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	keypad->mmio_base = IOMEM(iores->start);
>  
>  	ret = matrix_keypad_build_keymap(dev, keymap_data, MATRIX_ROW_SHIFT,
>  				keypad->keycodes);
> diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
> index 10e769e..2a0ddb0 100644
> --- a/drivers/mci/atmel_mci.c
> +++ b/drivers/mci/atmel_mci.c
> @@ -533,6 +533,7 @@ static void atmci_get_cap(struct atmel_mci *host)
>  
>  static int atmci_probe(struct device_d *hw_dev)
>  {
> +	struct resource *iores;
>  	struct atmel_mci *host;
>  	struct atmel_mci_platform_data *pd = hw_dev->platform_data;
>  	int ret;
> @@ -572,9 +573,10 @@ static int atmci_probe(struct device_d *hw_dev)
>  		host->mci.host_caps |= MMC_CAP_8_BIT_DATA;
>  	host->slot_b = pd->slot_b;
>  
> -	host->regs = dev_request_mem_region(hw_dev, 0);
> -	if (IS_ERR(host->regs))
> -		return PTR_ERR(host->regs);
> +	iores = dev_request_mem_resource(hw_dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	host->regs = IOMEM(iores->start);
>  	host->hw_dev = hw_dev;
>  	hw_dev->priv = host;
>  	host->clk = clk_get(hw_dev, "mci_clk");
> diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
> index cbd3f00..0e004ab 100644
> --- a/drivers/mci/dw_mmc.c
> +++ b/drivers/mci/dw_mmc.c
> @@ -675,6 +675,7 @@ static int dw_mmc_detect(struct device_d *dev)
>  
>  static int dw_mmc_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct dwmci_host *host;
>  	struct dw_mmc_platform_data *pdata = dev->platform_data;
>  
> @@ -692,9 +693,10 @@ static int dw_mmc_probe(struct device_d *dev)
>  	clk_enable(host->clk_ciu);
>  
>  	host->dev = dev;
> -	host->ioaddr = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(host->ioaddr))
> -		return PTR_ERR(host->ioaddr);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	host->ioaddr = IOMEM(iores->start);
>  
>  	host->idmac = dma_alloc_coherent(sizeof(*host->idmac) * DW_MMC_NUM_IDMACS,
>  					 DMA_ADDRESS_BROKEN);
> diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
> index 6caf165..282887b 100644
> --- a/drivers/mci/imx-esdhc.c
> +++ b/drivers/mci/imx-esdhc.c
> @@ -545,6 +545,7 @@ static int fsl_esdhc_detect(struct device_d *dev)
>  
>  static int fsl_esdhc_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct fsl_esdhc_host *host;
>  	struct mci_host *mci;
>  	u32 caps;
> @@ -560,9 +561,10 @@ static int fsl_esdhc_probe(struct device_d *dev)
>  		return PTR_ERR(host->clk);
>  
>  	host->dev = dev;
> -	host->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(host->regs))
> -		return PTR_ERR(host->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	host->regs = IOMEM(iores->start);
>  
>  	/* First reset the eSDHC controller */
>  	ret = esdhc_reset(host);
> diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
> index 9c8c1b1..2788fb9 100644
> --- a/drivers/mci/imx.c
> +++ b/drivers/mci/imx.c
> @@ -492,6 +492,7 @@ static int mxcmci_init(struct mci_host *mci, struct device_d *dev)
>  
>  static int mxcmci_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct mxcmci_host *host;
>  	unsigned long rate;
>  
> @@ -507,9 +508,10 @@ static int mxcmci_probe(struct device_d *dev)
>  	host->mci.host_caps = MMC_CAP_4_BIT_DATA;
>  	host->mci.hw_dev = dev;
>  
> -	host->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(host->base))
> -		return PTR_ERR(host->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	host->base = IOMEM(iores->start);
>  
>  	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
>  
> diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> index 59c667f..c7a8cf9 100644
> --- a/drivers/mci/mci-bcm2835.c
> +++ b/drivers/mci/mci-bcm2835.c
> @@ -480,6 +480,7 @@ static int bcm2835_mci_detect(struct device_d *dev)
>  
>  static int bcm2835_mci_probe(struct device_d *hw_dev)
>  {
> +	struct resource *iores;
>  	struct bcm2835_mci_host *host;
>  	static struct clk *clk;
>  	int ret;
> @@ -505,11 +506,12 @@ static int bcm2835_mci_probe(struct device_d *hw_dev)
>  	host->mci.hw_dev = hw_dev;
>  	host->hw_dev = hw_dev;
>  	host->max_clock = clk_get_rate(clk);
> -	host->regs = dev_request_mem_region(hw_dev, 0);
> -	if (IS_ERR(host->regs)) {
> +	iores = dev_request_mem_resource(hw_dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(host->hw_dev, "Failed request mem region, aborting...\n");
> -		return PTR_ERR(host->regs);
> +		return PTR_ERR(iores);
>  	}
> +	host->regs = IOMEM(iores->start);
>  
>  	host->mci.host_caps |= MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED |
>  		MMC_CAP_MMC_HIGHSPEED;
> diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
> index b36fb13..2355651 100644
> --- a/drivers/mci/mxs.c
> +++ b/drivers/mci/mxs.c
> @@ -544,6 +544,7 @@ static void mxs_mci_info(struct device_d *hw_dev)
>  
>  static int mxs_mci_probe(struct device_d *hw_dev)
>  {
> +	struct resource *iores;
>  	struct mxs_mci_platform_data *pd = hw_dev->platform_data;
>  	struct mxs_mci_host *mxs_mci;
>  	struct mci_host *host;
> @@ -557,9 +558,10 @@ static int mxs_mci_probe(struct device_d *hw_dev)
>  	host->send_cmd = mxs_mci_request;
>  	host->set_ios = mxs_mci_set_ios;
>  	host->init = mxs_mci_initialize;
> -	mxs_mci->regs = dev_request_mem_region(hw_dev, 0);
> -	if (IS_ERR(mxs_mci->regs))
> -		return PTR_ERR(mxs_mci->regs);
> +	iores = dev_request_mem_resource(hw_dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	mxs_mci->regs = IOMEM(iores->start);
>  
>  	/* feed forward the platform specific values */
>  	if (pd) {
> diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
> index 752787a..180afb1 100644
> --- a/drivers/mci/omap_hsmmc.c
> +++ b/drivers/mci/omap_hsmmc.c
> @@ -584,6 +584,7 @@ static int omap_mmc_detect(struct device_d *dev)
>  
>  static int omap_mmc_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct omap_hsmmc *hsmmc;
>  	struct omap_hsmmc_platform_data *pdata;
>  	struct omap_mmc_driver_data *drvdata;
> @@ -604,9 +605,10 @@ static int omap_mmc_probe(struct device_d *dev)
>  		MMC_CAP_MMC_HIGHSPEED | MMC_CAP_8_BIT_DATA;
>  	hsmmc->mci.hw_dev = dev;
>  
> -	hsmmc->iobase = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(hsmmc->iobase))
> -		return PTR_ERR(hsmmc->iobase);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	hsmmc->iobase = IOMEM(iores->start);
>  	hsmmc->base = hsmmc->iobase + reg_ofs;
>  
>  	hsmmc->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
> diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
> index 6b14aba..1a33661 100644
> --- a/drivers/mci/pxamci.c
> +++ b/drivers/mci/pxamci.c
> @@ -334,14 +334,16 @@ static int pxamci_init(struct mci_host *mci, struct device_d *dev)
>  
>  static int pxamci_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct pxamci_host *host;
>  	int gpio_power = -1;
>  
>  	clk_enable();
>  	host = xzalloc(sizeof(*host));
> -	host->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(host->base))
> -		return PTR_ERR(host->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	host->base = IOMEM(iores->start);
>  
>  	host->mci.init = pxamci_init;
>  	host->mci.send_cmd = pxamci_request;
> diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
> index 3afd61e..86a83b6 100644
> --- a/drivers/mci/s3c.c
> +++ b/drivers/mci/s3c.c
> @@ -723,6 +723,7 @@ static void s3c_info(struct device_d *hw_dev)
>  
>  static int s3c_mci_probe(struct device_d *hw_dev)
>  {
> +	struct resource *iores;
>  	struct s3c_mci_host *s3c_host;
>  	struct s3c_mci_platform_data *pd = hw_dev->platform_data;
>  
> @@ -741,9 +742,10 @@ static int s3c_mci_probe(struct device_d *hw_dev)
>  	}
>  
>  	hw_dev->priv = s3c_host;
> -	s3c_host->base = dev_request_mem_region(hw_dev, 0);
> -	if (IS_ERR(s3c_host->base))
> -		return PTR_ERR(s3c_host->base);
> +	iores = dev_request_mem_resource(hw_dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	s3c_host->base = IOMEM(iores->start);
>  
>  	s3c_host->host.hw_dev = hw_dev;
>  
> diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
> index 14c2304..e465d89 100644
> --- a/drivers/mci/tegra-sdmmc.c
> +++ b/drivers/mci/tegra-sdmmc.c
> @@ -422,6 +422,7 @@ static void tegra_sdmmc_parse_dt(struct tegra_sdmmc_host *host)
>  
>  static int tegra_sdmmc_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct tegra_sdmmc_host *host;
>  	struct mci_host *mci;
>  	int ret;
> @@ -437,11 +438,12 @@ static int tegra_sdmmc_probe(struct device_d *dev)
>  	if (IS_ERR(host->reset))
>  		return PTR_ERR(host->reset);
>  
> -	host->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(host->regs)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get iomem region\n");
> -		return PTR_ERR(host->regs);
> +		return PTR_ERR(iores);
>  	}
> +	host->regs = IOMEM(iores->start);
>  
>  	mci->hw_dev = dev;
>  	mci->f_max = 48000000;
> diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
> index 9769325..58b5741 100644
> --- a/drivers/misc/sram.c
> +++ b/drivers/misc/sram.c
> @@ -34,14 +34,16 @@ static struct file_operations memops = {
>  
>  static int sram_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct sram *sram;
>  	struct resource *res;
>  	void __iomem *base;
>  	int ret;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	sram = xzalloc(sizeof(*sram));
>  
> diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
> index 9ae606b..3ff7ddf 100644
> --- a/drivers/mtd/devices/docg3.c
> +++ b/drivers/mtd/devices/docg3.c
> @@ -1146,11 +1146,15 @@ nomem1:
>  
>  static int __init docg3_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct mtd_info *mtd;
>  	void __iomem *base;
>  	int ret, floor, found = 0;
>  
> -	base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	ret = -ENOMEM;
>  	docg3_bch = init_bch(DOC_ECC_BCH_M, DOC_ECC_BCH_T,
> diff --git a/drivers/mtd/devices/mtdram.c b/drivers/mtd/devices/mtdram.c
> index 34db8db..4bbcf60 100644
> --- a/drivers/mtd/devices/mtdram.c
> +++ b/drivers/mtd/devices/mtdram.c
> @@ -49,6 +49,7 @@ static int ram_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retle
>  
>  static int mtdram_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	void __iomem *base;
>  	int device_id;
>  	struct mtd_info *mtd;
> @@ -70,11 +71,13 @@ static int mtdram_probe(struct device_d *dev)
>  		mtd->name = "mtdram";
>  	}
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		ret = -EBUSY;
>  		goto nobase;
> +		return PTR_ERR(iores);
>  	}
> +	base = IOMEM(iores->start);
>  
>  	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
>  	size = (unsigned long) resource_size(res);
> @@ -98,8 +101,6 @@ static int mtdram_probe(struct device_d *dev)
>  
>  nobase:
>  	kfree(mtd);
> -
> -	return PTR_ERR(base);
>  }
>  
>  static __maybe_unused struct of_device_id mtdram_dt_ids[] = {
> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index c1c9390..7711762 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -862,6 +862,7 @@ static int pmecc_build_galois_table(unsigned int mm, int16_t *index_of,
>  static int __init atmel_pmecc_nand_init_params(struct device_d *dev,
>  					 struct atmel_nand_host *host)
>  {
> +	struct resource *iores;
>  	struct mtd_info *mtd = &host->mtd;
>  	struct nand_chip *nand_chip = &host->nand_chip;
>  	int cap, sector_size, err_no;
> @@ -872,20 +873,25 @@ static int __init atmel_pmecc_nand_init_params(struct device_d *dev,
>  	dev_info(host->dev, "Initialize PMECC params, cap: %d, sector: %d\n",
>  		 cap, sector_size);
>  
> -	host->ecc = dev_request_mem_region(dev, 1);
> -	if (IS_ERR(host->ecc)) {
> +	iores = dev_request_mem_resource(dev, 1);
> +	if (IS_ERR(iores)) {
>  		dev_err(host->dev, "ioremap failed\n");
> -		return PTR_ERR(host->ecc);
> +		return PTR_ERR(iores);
>  	}
> +	host->ecc = IOMEM(iores->start);
>  
> -	host->pmerrloc_base = dev_request_mem_region(dev, 2);
> -	if (IS_ERR(host->pmerrloc_base)) {
> +	iores = dev_request_mem_resource(dev, 2);
> +	if (IS_ERR(iores)) {
>  		dev_err(host->dev,
>  			"Can not get I/O resource for PMECC ERRLOC controller!\n");
> -		return PTR_ERR(host->pmerrloc_base);
> +		return PTR_ERR(iores);
>  	}
> +	host->pmerrloc_base = IOMEM(iores->start);
>  
> -	host->pmecc_rom_base = dev_request_mem_region(dev, 3);
> +	iores = dev_request_mem_resource(dev, 3);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	host->pmecc_rom_base = IOMEM(iores->start);
>  	if (!host->pmecc_rom_base) {
>  		/* Set pmecc_rom_base as the begin of gf table */
>  		int size = sector_size == 512 ? 0x2000 : 0x4000;
> @@ -1245,14 +1251,16 @@ static int atmel_nand_of_init(struct atmel_nand_host *host, struct device_node *
>  static int atmel_hw_nand_init_params(struct device_d *dev,
>  					 struct atmel_nand_host *host)
>  {
> +	struct resource *iores;
>  	struct mtd_info *mtd = &host->mtd;
>  	struct nand_chip *nand_chip = &host->nand_chip;
>  
> -	host->ecc = dev_request_mem_region(dev, 1);
> -	if (IS_ERR(host->ecc)) {
> +	iores = dev_request_mem_resource(dev, 1);
> +	if (IS_ERR(iores)) {
>  		dev_err(host->dev, "ioremap failed\n");
> -		return PTR_ERR(host->ecc);
> +		return PTR_ERR(iores);
>  	}
> +	host->ecc = IOMEM(iores->start);
>  
>  	/* ECC is calculated for the whole page (1 step) */
>  	nand_chip->ecc.size = mtd->writesize;
> @@ -1297,6 +1305,7 @@ static int atmel_hw_nand_init_params(struct device_d *dev,
>   */
>  static int __init atmel_nand_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct atmel_nand_data *pdata = NULL;
>  	struct atmel_nand_host *host;
>  	struct mtd_info *mtd;
> @@ -1312,9 +1321,10 @@ static int __init atmel_nand_probe(struct device_d *dev)
>  	if (!pdata)
>  		return -ENOMEM;
>  
> -	host->io_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(host->io_base))
> -		return PTR_ERR(host->io_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	host->io_base = IOMEM(iores->start);
>  
>  	mtd = &host->mtd;
>  	nand_chip = &host->nand_chip;
> diff --git a/drivers/mtd/nand/nand_denali_dt.c b/drivers/mtd/nand/nand_denali_dt.c
> index 6a3aee1..fd2a799 100644
> --- a/drivers/mtd/nand/nand_denali_dt.c
> +++ b/drivers/mtd/nand/nand_denali_dt.c
> @@ -36,6 +36,7 @@ struct denali_dt {
>  
>  static int denali_dt_probe(struct device_d *ofdev)
>  {
> +	struct resource *iores;
>  	struct denali_dt *dt;
>  	struct denali_nand_info *denali;
>  	int ret;
> @@ -51,12 +52,14 @@ static int denali_dt_probe(struct device_d *ofdev)
>  	denali->platform = DT;
>  	denali->dev = ofdev;
>  
> -	denali->flash_mem = dev_request_mem_region(ofdev, 0);
> -	if (IS_ERR(denali->flash_mem))
> -		return PTR_ERR(denali->flash_mem);
> -	denali->flash_reg = dev_request_mem_region(ofdev, 1);
> -	if (IS_ERR(denali->flash_reg))
> -		return PTR_ERR(denali->flash_reg);
> +	iores = dev_request_mem_resource(ofdev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	denali->flash_mem = IOMEM(iores->start);iores = dev_request_mem_resource(ofdev,
> +										 1);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	denali->flash_reg = IOMEM(iores->start);
>  
>  	dt->clk = clk_get(ofdev, NULL);
>  	if (IS_ERR(dt->clk)) {
> diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
> index 00c05d0..601da5f 100644
> --- a/drivers/mtd/nand/nand_imx.c
> +++ b/drivers/mtd/nand/nand_imx.c
> @@ -1105,6 +1105,7 @@ static int __init mxcnd_probe_dt(struct imx_nand_host *host)
>  
>  static int __init imxnd_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct nand_chip *this;
>  	struct mtd_info *mtd;
>  	struct imx_nand_host *host;
> @@ -1146,7 +1147,10 @@ static int __init imxnd_probe(struct device_d *dev)
>  	}
>  
>  	if (nfc_is_v21()) {
> -		host->base = dev_request_mem_region(dev, 0);
> +		iores = dev_request_mem_resource(dev, 0);
> +		if (IS_ERR(iores))
> +			return PTR_ERR(iores);
> +		host->base = IOMEM(iores->start);
>  		host->main_area0 = host->base;
>  		host->regs = host->base + 0x1e00;
>  		host->spare0 = host->base + 0x1000;
> @@ -1155,7 +1159,10 @@ static int __init imxnd_probe(struct device_d *dev)
>  		oob_largepage = &nandv2_hw_eccoob_largepage;
>  		oob_4kpage = &nandv2_hw_eccoob_4k; /* FIXME : to check */
>  	} else if (nfc_is_v1()) {
> -		host->base = dev_request_mem_region(dev, 0);
> +		iores = dev_request_mem_resource(dev, 0);
> +		if (IS_ERR(iores))
> +			return PTR_ERR(iores);
> +		host->base = IOMEM(iores->start);
>  		host->main_area0 = host->base;
>  		host->regs = host->base + 0xe00;
>  		host->spare0 = host->base + 0x800;
> @@ -1164,8 +1171,14 @@ static int __init imxnd_probe(struct device_d *dev)
>  		oob_largepage = &nandv1_hw_eccoob_largepage;
>  		oob_4kpage = &nandv1_hw_eccoob_smallpage; /* FIXME : to check  */
>  	} else if (nfc_is_v3_2()) {
> -		host->regs_ip = dev_request_mem_region(dev, 0);
> -		host->base = dev_request_mem_region(dev, 1);
> +		iores = dev_request_mem_resource(dev, 0);
> +		if (IS_ERR(iores))
> +			return PTR_ERR(iores);
> +		host->regs_ip = IOMEM(iores->start);iores = dev_request_mem_resource(dev,
> +										     1);
> +		if (IS_ERR(iores))
> +			return PTR_ERR(iores);
> +		host->base = IOMEM(iores->start);
>  		host->main_area0 = host->base;
>  
>  		if (!host->regs_ip) {
> diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
> index f160d15..578790d 100644
> --- a/drivers/mtd/nand/nand_mrvl_nfc.c
> +++ b/drivers/mtd/nand/nand_mrvl_nfc.c
> @@ -1105,6 +1105,7 @@ static int mrvl_nand_scan(struct mtd_info *mtd)
>  
>  static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct mrvl_nand_platform_data *pdata;
>  	struct mrvl_nand_host *host;
>  	struct nand_chip *chip = NULL;
> @@ -1135,7 +1136,10 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
>  	chip->chip_delay	= CHIP_DELAY_TIMEOUT_US;
>  
>  	host->dev = dev;
> -	host->mmio_base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	host->mmio_base = IOMEM(iores->start);
>  	if (IS_ERR(host->mmio_base)) {
>  		free(host);
>  		return host->mmio_base;
> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index 7635e2a..2a00d63 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -1274,6 +1274,7 @@ static void mxs_nand_probe_dt(struct device_d *dev, struct mxs_nand_info *nand_i
>  
>  static int mxs_nand_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct mxs_nand_info *nand_info;
>  	struct nand_chip *nand;
>  	struct mtd_info *mtd;
> @@ -1293,13 +1294,14 @@ static int mxs_nand_probe(struct device_d *dev)
>  	mxs_nand_probe_dt(dev, nand_info);
>  
>  	nand_info->type = type;
> -	nand_info->io_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(nand_info->io_base))
> -		return PTR_ERR(nand_info->io_base);
> -
> -	nand_info->bch_base = dev_request_mem_region(dev, 1);
> -	if (IS_ERR(nand_info->bch_base))
> -		return PTR_ERR(nand_info->bch_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	nand_info->io_base = IOMEM(iores->start);iores = dev_request_mem_resource(dev,
> +										  1);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	nand_info->bch_base = IOMEM(iores->start);
>  
>  	nand_info->clk = clk_get(dev, NULL);
>  	if (IS_ERR(nand_info->clk))
> diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
> index 9d9d27e..a920522 100644
> --- a/drivers/mtd/nand/nand_omap_gpmc.c
> +++ b/drivers/mtd/nand/nand_omap_gpmc.c
> @@ -846,6 +846,7 @@ static int gpmc_set_buswidth(struct nand_chip *chip, int buswidth)
>   */
>  static int gpmc_nand_probe(struct device_d *pdev)
>  {
> +	struct resource *iores;
>  	struct gpmc_nand_info *oinfo;
>  	struct gpmc_nand_platform_data *pdata;
>  	struct nand_chip *nand;
> @@ -881,7 +882,10 @@ static int gpmc_nand_probe(struct device_d *pdev)
>  	}
>  	/* Setup register specific data */
>  	oinfo->gpmc_cs = pdata->cs;
> -	oinfo->gpmc_base = dev_request_mem_region(pdev, 0);
> +	iores = dev_request_mem_resource(pdev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	oinfo->gpmc_base = IOMEM(iores->start);
>  	cs_base = oinfo->gpmc_base + GPMC_CONFIG1_0 +
>  		(pdata->cs * GPMC_CONFIG_CS_SIZE);
>  	oinfo->gpmc_command = (void *)(cs_base + GPMC_CS_NAND_COMMAND);
> diff --git a/drivers/mtd/nand/nand_orion.c b/drivers/mtd/nand/nand_orion.c
> index fe06ef7..881ffee 100644
> --- a/drivers/mtd/nand/nand_orion.c
> +++ b/drivers/mtd/nand/nand_orion.c
> @@ -80,6 +80,7 @@ static void orion_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
>  
>  static int orion_nand_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct device_node *dev_node = dev->device_node;
>  	struct orion_nand *priv;
>  	struct mtd_info *mtd;
> @@ -93,9 +94,10 @@ static int orion_nand_probe(struct device_d *dev)
>  	mtd = &priv->mtd;
>  	chip = &priv->chip;
>  
> -	io_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(io_base))
> -		return PTR_ERR(io_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	io_base = IOMEM(iores->start);
>  
>  	if (!of_property_read_u32(dev_node, "cle", &val))
>  		priv->cle = (u8)val;
> diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
> index 37bba39..83d4517 100644
> --- a/drivers/mtd/nand/nand_s3c24xx.c
> +++ b/drivers/mtd/nand/nand_s3c24xx.c
> @@ -408,6 +408,7 @@ static int s3c24x0_nand_inithw(struct s3c24x0_nand_host *host)
>  
>  static int s3c24x0_nand_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct nand_chip *chip;
>  	struct s3c24x0_nand_platform_data *pdata = dev->platform_data;
>  	struct mtd_info *mtd;
> @@ -420,7 +421,10 @@ static int s3c24x0_nand_probe(struct device_d *dev)
>  		return -ENOMEM;
>  
>  	host->dev = dev;
> -	host->base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	host->base = IOMEM(iores->start);
>  
>  	/* structures must be linked */
>  	chip = &host->nand;
> diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
> index feffbd0..e50f0e6 100644
> --- a/drivers/mtd/nor/cfi_flash.c
> +++ b/drivers/mtd/nor/cfi_flash.c
> @@ -966,13 +966,15 @@ static void cfi_init_mtd(struct flash_info *info)
>  
>  static int cfi_probe_one(struct flash_info *info, int num)
>  {
> +	struct resource *iores;
>  	int ret;
>  
>  	info->flash_id = FLASH_UNKNOWN;
>  	info->cmd_reset = FLASH_CMD_RESET;
> -	info->base = dev_request_mem_region(info->dev, num);
> -	if (IS_ERR(info->base))
> -		return PTR_ERR(info->base);
> +	iores = dev_request_mem_resource(info->dev, num);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	info->base = IOMEM(iores->start);
>  
>  	ret = flash_detect_size(info);
>  	if (ret) {
> diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
> index ff7bb7a..680f30f 100644
> --- a/drivers/mtd/spi-nor/cadence-quadspi.c
> +++ b/drivers/mtd/spi-nor/cadence-quadspi.c
> @@ -1109,6 +1109,7 @@ static void cqspi_controller_init(struct cqspi_st *cqspi)
>  
>  static int cqspi_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct device_node *np = dev->device_node;
>  	struct cqspi_st *cqspi;
>  	struct cadence_qspi_platform_data *pdata = dev->platform_data;
> @@ -1142,14 +1143,20 @@ static int cqspi_probe(struct device_d *dev)
>  
>  	clk_enable(cqspi->qspi_clk);
>  
> -	cqspi->iobase = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	cqspi->iobase = IOMEM(iores->start);
>  	if (IS_ERR(cqspi->iobase)) {
>  		dev_err(dev, "dev_request_mem_region 0 failed\n");
>  		ret = PTR_ERR(cqspi->iobase);
>  		goto probe_failed;
>  	}
>  
> -	cqspi->ahb_base = dev_request_mem_region(dev, 1);
> +	iores = dev_request_mem_resource(dev, 1);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	cqspi->ahb_base = IOMEM(iores->start);
>  	if (IS_ERR(cqspi->ahb_base)) {
>  		dev_err(dev, "dev_request_mem_region 0 failed\n");
>  		ret = PTR_ERR(cqspi->ahb_base);
> diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
> index a186365..787ba47 100644
> --- a/drivers/net/altera_tse.c
> +++ b/drivers/net/altera_tse.c
> @@ -492,6 +492,7 @@ static int tse_init_dev(struct eth_device *edev)
>  
>  static int tse_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct altera_tse_priv *priv;
>  	struct mii_bus *miibus;
>  	struct eth_device *edev;
> @@ -516,9 +517,10 @@ static int tse_probe(struct device_d *dev)
>  	edev->parent = dev;
>  
>  #ifdef CONFIG_TSE_USE_DEDICATED_DESC_MEM
> -	tx_desc = dev_request_mem_region(dev, 3);
> -	if (IS_ERR(tx_desc))
> -		return PTR_ERR(tx_desc);
> +	iores = dev_request_mem_resource(dev, 3);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	tx_desc = IOMEM(iores->start);
>  	rx_desc = tx_desc + 2;
>  #else
>  	tx_desc = dma_alloc_coherent(sizeof(*tx_desc) * (3 + PKTBUFSRX), (dma_addr_t *)&dma_handle);
> @@ -534,15 +536,18 @@ static int tse_probe(struct device_d *dev)
>  	memset(rx_desc, 0, (sizeof *rx_desc) * (PKTBUFSRX + 1)); 
>  	memset(tx_desc, 0, (sizeof *tx_desc) * 2);
>  
> -	priv->tse_regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->tse_regs))
> -		return PTR_ERR(priv->tse_regs);
> -	priv->sgdma_rx_regs = dev_request_mem_region(dev, 1);
> -	if (IS_ERR(priv->sgdma_rx_regs))
> -		return PTR_ERR(priv->sgdma_rx_regs);
> -	priv->sgdma_tx_regs = dev_request_mem_region(dev, 2);
> -	if (IS_ERR(priv->sgdma_tx_regs))
> -		return PTR_ERR(priv->sgdma_tx_regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->tse_regs = IOMEM(iores->start);iores = dev_request_mem_resource(dev,
> +									      1);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->sgdma_rx_regs = IOMEM(iores->start);iores = dev_request_mem_resource(dev,
> +										   2);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->sgdma_tx_regs = IOMEM(iores->start);
>  	priv->rx_desc = rx_desc;
>  	priv->tx_desc = tx_desc;
>  
> diff --git a/drivers/net/ar231x.c b/drivers/net/ar231x.c
> index 7447c44..1ef9ce8 100644
> --- a/drivers/net/ar231x.c
> +++ b/drivers/net/ar231x.c
> @@ -363,6 +363,7 @@ static int ar231x_mdiibus_reset(struct mii_bus *bus)
>  
>  static int ar231x_eth_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct ar231x_eth_priv *priv;
>  	struct eth_device *edev;
>  	struct mii_bus *miibus;
> @@ -384,20 +385,22 @@ static int ar231x_eth_probe(struct device_d *dev)
>  	priv->mac = pdata->mac;
>  	priv->reset_bit = pdata->reset_bit;
>  
> -	priv->eth_regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->eth_regs)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "No eth_regs!!\n");
> -		return PTR_ERR(priv->eth_regs);
> +		return PTR_ERR(iores);
>  	}
> +	priv->eth_regs = IOMEM(iores->start);
>  	/* we have 0x100000 for eth, part of it are dma regs.
>  	 * So they are already requested */
>  	priv->dma_regs = (void *)(priv->eth_regs + 0x1000);
>  
> -	priv->phy_regs = dev_request_mem_region(dev, 1);
> -	if (IS_ERR(priv->phy_regs)) {
> +	iores = dev_request_mem_resource(dev, 1);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "No phy_regs!!\n");
> -		return PTR_ERR(priv->phy_regs);
> +		return PTR_ERR(iores);
>  	}
> +	priv->phy_regs = IOMEM(iores->start);
>  
>  	priv->cfg = pdata;
>  	edev->init = ar231x_eth_init;
> diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
> index 3dc54cd..2155349 100644
> --- a/drivers/net/arc_emac.c
> +++ b/drivers/net/arc_emac.c
> @@ -391,6 +391,7 @@ static int arc_emac_mdio_write(struct mii_bus *bus, int phy_addr, int reg_num,
>  
>  static int arc_emac_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct eth_device *edev;
>  	struct arc_emac_priv *priv;
>  	unsigned long clock_frequency;
> @@ -406,9 +407,10 @@ static int arc_emac_probe(struct device_d *dev)
>  	miibus = xzalloc(sizeof(struct mii_bus));
>  
>  	priv = edev->priv;
> -	priv->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->regs))
> -		return PTR_ERR(priv->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->regs = IOMEM(iores->start);
>  	priv->bus = miibus;
>  
>  	priv->clk = clk_get(dev, "hclk");
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index 4d6b7b2..d11ca33 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -1126,6 +1126,7 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
>  
>  int cpsw_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct cpsw_platform_data *data = (struct cpsw_platform_data *)dev->platform_data;
>  	struct cpsw_priv	*priv;
>  	void __iomem		*regs;
> @@ -1136,9 +1137,10 @@ int cpsw_probe(struct device_d *dev)
>  
>  	dev_dbg(dev, "* %s\n", __func__);
>  
> -	regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(regs))
> -		return PTR_ERR(regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	regs = IOMEM(iores->start);
>  
>  	priv = xzalloc(sizeof(*priv));
>  	priv->dev = dev;
> diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
> index a4a5dca..1be49e8 100644
> --- a/drivers/net/cs8900.c
> +++ b/drivers/net/cs8900.c
> @@ -435,13 +435,17 @@ static int cs8900_check_id(struct cs8900_priv *priv)
>  
>  static int cs8900_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct eth_device *edev;
>  	struct cs8900_priv *priv;
>  
>  	debug("cs8900_init()\n");
>  
>  	priv = (struct cs8900_priv *)xmalloc(sizeof(*priv));
> -	priv->regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->regs = IOMEM(iores->start);
>  	if (cs8900_check_id(priv)) {
>  		free(priv);
>  		return -1;
> diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
> index 9f8f0e1..3c6ae6a 100644
> --- a/drivers/net/davinci_emac.c
> +++ b/drivers/net/davinci_emac.c
> @@ -516,6 +516,7 @@ out:
>  
>  static int davinci_emac_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct davinci_emac_platform_data *pdata;
>  	struct davinci_emac_priv *priv;
>  	uint64_t start;
> @@ -534,10 +535,22 @@ static int davinci_emac_probe(struct device_d *dev)
>  
>  	priv->dev = dev;
>  
> -	priv->adap_emac = dev_request_mem_region(dev, 0);
> -	priv->adap_ewrap = dev_request_mem_region(dev, 1);
> -	priv->adap_mdio = dev_request_mem_region(dev, 2);
> -	priv->emac_desc_base = dev_request_mem_region(dev, 3);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->adap_emac = IOMEM(iores->start);iores = dev_request_mem_resource(dev,
> +									       1);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->adap_ewrap = IOMEM(iores->start);iores = dev_request_mem_resource(dev,
> +										2);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->adap_mdio = IOMEM(iores->start);iores = dev_request_mem_resource(dev,
> +									       3);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->emac_desc_base = IOMEM(iores->start);
>  
>  	/* EMAC descriptors */
>  	priv->emac_rx_desc = priv->emac_desc_base + EMAC_RX_DESC_BASE;
> diff --git a/drivers/net/designware.c b/drivers/net/designware.c
> index 966f64f..3b21244 100644
> --- a/drivers/net/designware.c
> +++ b/drivers/net/designware.c
> @@ -445,6 +445,7 @@ static int dwc_probe_dt(struct device_d *dev, struct dw_eth_dev *priv)
>  
>  static int dwc_ether_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct dw_eth_dev *priv;
>  	struct eth_device *edev;
>  	struct mii_bus *miibus;
> @@ -471,9 +472,10 @@ static int dwc_ether_probe(struct device_d *dev)
>  			return ret;
>  	}
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	priv->mac_regs_p = base;
>  	dwc_version(dev, readl(&priv->mac_regs_p->version));
> diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
> index 1f1938d..672a07f 100644
> --- a/drivers/net/dm9k.c
> +++ b/drivers/net/dm9k.c
> @@ -785,6 +785,7 @@ static int dm9000_parse_pdata(struct device_d *dev, struct dm9k *priv)
>  
>  static int dm9k_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	unsigned io_mode;
>  	struct eth_device *edev;
>  	struct dm9k *priv;
> @@ -808,13 +809,19 @@ static int dm9k_probe(struct device_d *dev)
>  	if (ret)
>  		goto err;
>  
> -	priv->iodata = dev_request_mem_region(dev, 1);
> +	iores = dev_request_mem_resource(dev, 1);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->iodata = IOMEM(iores->start);
>  	if (!priv->iodata) {
>  		ret = -EBUSY;
>  		goto err;
>  	}
>  
> -	priv->iobase = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->iobase = IOMEM(iores->start);
>  	if (!priv->iobase) {
>  		ret = -EBUSY;
>  		goto err;
> diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
> index 6bae7d6..1cb9fc2 100644
> --- a/drivers/net/ethoc.c
> +++ b/drivers/net/ethoc.c
> @@ -534,6 +534,7 @@ static int ethoc_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val)
>  
>  static int ethoc_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct eth_device *edev;
>  	struct ethoc *priv;
>  
> @@ -542,9 +543,10 @@ static int ethoc_probe(struct device_d *dev)
>  	edev->priv = (struct ethoc *)(edev + 1);
>  
>  	priv = edev->priv;
> -	priv->iobase = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->iobase))
> -		return PTR_ERR(priv->iobase);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->iobase = IOMEM(iores->start);
>  
>  	priv->miibus.read = ethoc_mdio_read;
>  	priv->miibus.write = ethoc_mdio_write;
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 5418034..de31ec4 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -647,6 +647,7 @@ static int fec_probe_dt(struct device_d *dev, struct fec_priv *fec)
>  #endif
>  static int fec_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct fec_platform_data *pdata = (struct fec_platform_data *)dev->platform_data;
>  	struct eth_device *edev;
>  	struct fec_priv *fec;
> @@ -681,7 +682,10 @@ static int fec_probe(struct device_d *dev)
>  
>  	clk_enable(fec->clk);
>  
> -	fec->regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	fec->regs = IOMEM(iores->start);
>  
>  	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
>  	if (gpio_is_valid(phy_reset)) {
> diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
> index 30be8f7..bb57c34 100644
> --- a/drivers/net/fec_mpc5200.c
> +++ b/drivers/net/fec_mpc5200.c
> @@ -638,6 +638,7 @@ static int mpc5xxx_fec_recv(struct eth_device *dev)
>  
>  int mpc5xxx_fec_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct fec_platform_data *pdata = dev->platform_data;
>  	struct eth_device *edev;
>  	mpc5xxx_fec_priv *fec;
> @@ -655,9 +656,10 @@ int mpc5xxx_fec_probe(struct device_d *dev)
>  	edev->set_ethaddr = mpc5xxx_fec_set_ethaddr;
>  	edev->parent = dev;
>  
> -	fec->eth = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(fec->eth))
> -		return PTR_ERR(fec->eth);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	fec->eth = IOMEM(iores->start);
>  	fec->tbdBase = (FEC_TBD *)FEC_BD_BASE;
>  	fec->rbdBase = (FEC_RBD *)(FEC_BD_BASE + FEC_TBD_NUM * sizeof(FEC_TBD));
>  
> diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
> index 854a666..4a77c43 100644
> --- a/drivers/net/ks8851_mll.c
> +++ b/drivers/net/ks8851_mll.c
> @@ -809,6 +809,7 @@ static void ks8851_eth_halt(struct eth_device *edev)
>  
>  static int ks8851_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct eth_device *edev;
>  	struct ks_net *ks;
>  	u16 id;
> @@ -823,13 +824,14 @@ static int ks8851_probe(struct device_d *dev)
>  		return -ENODEV;
>  	}
>  
> -	ks->hw_addr = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(ks->hw_addr))
> -		return PTR_ERR(ks->hw_addr);
> -
> -	ks->hw_addr_cmd = dev_request_mem_region(dev, 1);
> -	if (IS_ERR(ks->hw_addr_cmd))
> -		return PTR_ERR(ks->hw_addr_cmd);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	ks->hw_addr = IOMEM(iores->start);iores = dev_request_mem_resource(dev,
> +									   1);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	ks->hw_addr_cmd = IOMEM(iores->start);
>  	ks->bus_width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
>  
>  	edev->init = ks8851_init_dev;
> diff --git a/drivers/net/macb.c b/drivers/net/macb.c
> index 6d4973f..5f2e5e5 100644
> --- a/drivers/net/macb.c
> +++ b/drivers/net/macb.c
> @@ -612,6 +612,7 @@ static void macb_init_rx_buffer_size(struct macb_device *bp, size_t size)
>  
>  static int macb_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct eth_device *edev;
>  	struct macb_device *macb;
>  	u32 ncfgr;
> @@ -649,9 +650,10 @@ static int macb_probe(struct device_d *dev)
>  
>  	macb->phy_flags = pdata->phy_flags;
>  
> -	macb->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(macb->regs))
> -		return PTR_ERR(macb->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	macb->regs = IOMEM(iores->start);
>  
>  	/*
>  	 * Do some basic initialization so that we at least can talk
> diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
> index 1199b37..b705591 100644
> --- a/drivers/net/smc91111.c
> +++ b/drivers/net/smc91111.c
> @@ -1444,6 +1444,7 @@ static int smc91c111_init_dev(struct eth_device *edev)
>  
>  static int smc91c111_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct eth_device *edev;
>  	struct smc91c111_priv *priv;
>  
> @@ -1481,9 +1482,10 @@ static int smc91c111_probe(struct device_d *dev)
>  	priv->miibus.write = smc91c111_phy_write;
>  	priv->miibus.priv = priv;
>  	priv->miibus.parent = dev;
> -	priv->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->base))
> -		return PTR_ERR(priv->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->base = IOMEM(iores->start);
>  
>  	smc91c111_reset(edev);
>  
> diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
> index 60cf36e..9b1a38a 100644
> --- a/drivers/net/smc911x.c
> +++ b/drivers/net/smc911x.c
> @@ -494,6 +494,7 @@ static int smc911x_init_dev(struct eth_device *edev)
>  
>  static int smc911x_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct eth_device *edev;
>  	struct smc911x_priv *priv;
>  	uint32_t val;
> @@ -506,7 +507,10 @@ static int smc911x_probe(struct device_d *dev)
>  		is_32bit = 1;
>  	else
>  		is_32bit = is_32bit == IORESOURCE_MEM_32BIT;
> -	priv->base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->base = IOMEM(iores->start);
>  
>  	if (pdata) {
>  		priv->shift = pdata->shift;
> diff --git a/drivers/net/xgmac.c b/drivers/net/xgmac.c
> index 7cc4d48..47ab6e7 100644
> --- a/drivers/net/xgmac.c
> +++ b/drivers/net/xgmac.c
> @@ -689,11 +689,15 @@ static int xgmac_set_ethaddr(struct eth_device *dev, const unsigned char *addr)
>  
>  static int hb_xgmac_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct eth_device *edev;
>  	struct xgmac_priv *priv;
>  	void __iomem *base;
>  
> -	base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	/* check hardware version */
>  	if (readl(base + XGMAC_VERSION) != 0x1012)
> diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
> index d32bd2b..46483b4 100644
> --- a/drivers/pci/pci-imx6.c
> +++ b/drivers/pci/pci-imx6.c
> @@ -555,6 +555,7 @@ static int __init imx6_add_pcie_port(struct pcie_port *pp,
>  
>  static int __init imx6_pcie_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct imx6_pcie *imx6_pcie;
>  	struct pcie_port *pp;
>  	struct device_node *np = dev->device_node;
> @@ -567,9 +568,10 @@ static int __init imx6_pcie_probe(struct device_d *dev)
>  	pp = &imx6_pcie->pp;
>  	pp->dev = dev;
>  
> -	pp->dbi_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(pp->dbi_base))
> -		return PTR_ERR(pp->dbi_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	pp->dbi_base = IOMEM(iores->start);
>  
>  	/* Fetch GPIOs */
>  	imx6_pcie->reset_gpio = of_get_named_gpio(np, "reset-gpio", 0);
> diff --git a/drivers/pinctrl/imx-iomux-v2.c b/drivers/pinctrl/imx-iomux-v2.c
> index 1e0e8e9..0c985a6 100644
> --- a/drivers/pinctrl/imx-iomux-v2.c
> +++ b/drivers/pinctrl/imx-iomux-v2.c
> @@ -118,9 +118,11 @@ int imx_iomux_setup_multiple_pins(const unsigned int *pin_list, unsigned count)
>  
>  static int imx_iomux_probe(struct device_d *dev)
>  {
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	struct resource *iores;
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	return 0;
>  }
> diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
> index 62a352b..66443b7 100644
> --- a/drivers/pinctrl/imx-iomux-v3.c
> +++ b/drivers/pinctrl/imx-iomux-v3.c
> @@ -171,12 +171,16 @@ static int imx_pinctrl_dt(struct device_d *dev, void __iomem *base)
>  
>  static int imx_iomux_v3_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int ret = 0;
>  
>  	if (iomuxv3_base)
>  		return -EBUSY;
>  
> -	iomuxv3_base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	iomuxv3_base = IOMEM(iores->start);
>  	iomuxv3_dev = dev;
>  
>  	if (IS_ENABLED(CONFIG_PINCTRL) && dev->device_node)
> diff --git a/drivers/pinctrl/mvebu/armada-370.c b/drivers/pinctrl/mvebu/armada-370.c
> index 7ad8d04..1c79bd6 100644
> --- a/drivers/pinctrl/mvebu/armada-370.c
> +++ b/drivers/pinctrl/mvebu/armada-370.c
> @@ -391,14 +391,16 @@ static struct of_device_id armada_370_pinctrl_of_match[] = {
>  
>  static int armada_370_pinctrl_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	const struct of_device_id *match =
>  		of_match_node(armada_370_pinctrl_of_match, dev->device_node);
>  	struct mvebu_pinctrl_soc_info *soc =
>  		(struct mvebu_pinctrl_soc_info *)match->data;
>  
> -	mpp_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(mpp_base))
> -		return PTR_ERR(mpp_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	mpp_base = IOMEM(iores->start);
>  
>  	return mvebu_pinctrl_probe(dev, soc);
>  }
> diff --git a/drivers/pinctrl/mvebu/armada-xp.c b/drivers/pinctrl/mvebu/armada-xp.c
> index 51db35d..f1bc8b4 100644
> --- a/drivers/pinctrl/mvebu/armada-xp.c
> +++ b/drivers/pinctrl/mvebu/armada-xp.c
> @@ -370,13 +370,15 @@ static struct of_device_id armada_xp_pinctrl_of_match[] = {
>  
>  static int armada_xp_pinctrl_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	const struct of_device_id *match =
>  		of_match_node(armada_xp_pinctrl_of_match, dev->device_node);
>  	struct mvebu_pinctrl_soc_info *soc = &armada_xp_pinctrl_info;
>  
> -	mpp_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(mpp_base))
> -		return PTR_ERR(mpp_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	mpp_base = IOMEM(iores->start);
>  
>  	soc->variant = (enum armada_xp_variant)match->data;
>  
> diff --git a/drivers/pinctrl/mvebu/dove.c b/drivers/pinctrl/mvebu/dove.c
> index d1848a7..b49cfac 100644
> --- a/drivers/pinctrl/mvebu/dove.c
> +++ b/drivers/pinctrl/mvebu/dove.c
> @@ -696,6 +696,7 @@ static struct of_device_id dove_pinctrl_of_match[] = {
>  
>  static int dove_pinctrl_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	const struct of_device_id *match =
>  		of_match_node(dove_pinctrl_of_match, dev->device_node);
>  	struct mvebu_pinctrl_soc_info *soc =
> @@ -706,8 +707,14 @@ static int dove_pinctrl_probe(struct device_d *dev)
>  	clk = clk_get(dev, NULL);
>  	clk_enable(clk);
>  
> -	mpp_base = dev_request_mem_region(dev, 0);
> -	mpp4_base = dev_request_mem_region(dev, 1);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	mpp_base = IOMEM(iores->start);iores = dev_request_mem_resource(dev,
> +									1);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	mpp4_base = IOMEM(iores->start);
>  	if (!mpp_base || !mpp4_base)
>  		return -EBUSY;
>  
> diff --git a/drivers/pinctrl/mvebu/kirkwood.c b/drivers/pinctrl/mvebu/kirkwood.c
> index e2ac559..4b2618c 100644
> --- a/drivers/pinctrl/mvebu/kirkwood.c
> +++ b/drivers/pinctrl/mvebu/kirkwood.c
> @@ -432,14 +432,16 @@ static struct of_device_id kirkwood_pinctrl_of_match[] = {
>  
>  static int kirkwood_pinctrl_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	const struct of_device_id *match =
>  		of_match_node(kirkwood_pinctrl_of_match, dev->device_node);
>  	struct mvebu_pinctrl_soc_info *soc =
>  		(struct mvebu_pinctrl_soc_info *)match->data;
>  
> -	mpp_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(mpp_base))
> -		return PTR_ERR(mpp_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	mpp_base = IOMEM(iores->start);
>  
>  	return mvebu_pinctrl_probe(dev, soc);
>  }
> diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
> index 5c60c70..15b74cc 100644
> --- a/drivers/pinctrl/pinctrl-single.c
> +++ b/drivers/pinctrl/pinctrl-single.c
> @@ -98,12 +98,16 @@ static struct pinctrl_ops pcs_ops = {
>  
>  static int pcs_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct pinctrl_single *pcs;
>  	struct device_node *np = dev->device_node;
>  	int ret = 0;
>  
>  	pcs = xzalloc(sizeof(*pcs));
> -	pcs->base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	pcs->base = IOMEM(iores->start);
>  	pcs->pinctrl.dev = dev;
>  	pcs->pinctrl.ops = &pcs_ops;
>  
> diff --git a/drivers/pinctrl/pinctrl-tegra-xusb.c b/drivers/pinctrl/pinctrl-tegra-xusb.c
> index d567754..a7a75bb 100644
> --- a/drivers/pinctrl/pinctrl-tegra-xusb.c
> +++ b/drivers/pinctrl/pinctrl-tegra-xusb.c
> @@ -378,6 +378,7 @@ static struct pinctrl_ops pinctrl_tegra_xusb_ops = {
>  
>  static int pinctrl_tegra_xusb_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct tegra_xusb_padctl *padctl;
>  	struct phy *phy;
>  	int err;
> @@ -389,11 +390,12 @@ static int pinctrl_tegra_xusb_probe(struct device_d *dev)
>  
>  	dev_get_drvdata(dev, (const void **)&padctl->soc);
>  
> -	padctl->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(padctl->regs)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "Could not get iomem region\n");
> -		return PTR_ERR(padctl->regs);
> +		return PTR_ERR(iores);
>  	}
> +	padctl->regs = IOMEM(iores->start);
>  
>  	padctl->rst = reset_control_get(dev, NULL);
>  	if (IS_ERR(padctl->rst))
> diff --git a/drivers/pinctrl/pinctrl-tegra20.c b/drivers/pinctrl/pinctrl-tegra20.c
> index be9d8a9..eaaba9e 100644
> --- a/drivers/pinctrl/pinctrl-tegra20.c
> +++ b/drivers/pinctrl/pinctrl-tegra20.c
> @@ -295,6 +295,7 @@ static struct pinctrl_ops pinctrl_tegra20_ops = {
>  
>  static int pinctrl_tegra20_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct pinctrl_tegra20 *ctrl;
>  	int i, ret;
>  	u32 **regs;
> @@ -309,11 +310,12 @@ static int pinctrl_tegra20_probe(struct device_d *dev)
>  	 */
>  	regs = (u32 **)&ctrl->regs;
>  	for (i = 0; i <= 2; i++) {
> -		regs[i] = dev_request_mem_region(dev, i);
> -		if (IS_ERR(regs[i])) {
> +		iores = dev_request_mem_resource(dev, i);
> +		if (IS_ERR(iores)) {
>  			dev_err(dev, "Could not get iomem region %d\n", i);
> -			return PTR_ERR(regs[i]);
> +			return PTR_ERR(iores);
>  		}
> +		regs[i] = IOMEM(iores->start);
>  	}
>  
>  	ctrl->pinctrl.dev = dev;
> diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
> index 145a1a8..4b271dd 100644
> --- a/drivers/pinctrl/pinctrl-tegra30.c
> +++ b/drivers/pinctrl/pinctrl-tegra30.c
> @@ -870,6 +870,7 @@ static struct pinctrl_ops pinctrl_tegra30_ops = {
>  
>  static int pinctrl_tegra30_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct pinctrl_tegra30 *ctrl;
>  	int i, ret;
>  	u32 **regs;
> @@ -884,11 +885,12 @@ static int pinctrl_tegra30_probe(struct device_d *dev)
>  	 */
>  	regs = (u32 **)&ctrl->regs;
>  	for (i = 0; i <= 1; i++) {
> -		regs[i] = dev_request_mem_region(dev, i);
> -		if (IS_ERR(regs[i])) {
> +		iores = dev_request_mem_resource(dev, i);
> +		if (IS_ERR(iores)) {
>  			dev_err(dev, "Could not get iomem region %d\n", i);
> -			return PTR_ERR(regs[i]);
> +			return PTR_ERR(iores);
>  		}
> +		regs[i] = IOMEM(iores->start);
>  	}
>  
>  	dev_get_drvdata(dev, (const void **)&ctrl->drvdata);
> diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
> index bd99cf3..0845c23 100644
> --- a/drivers/pwm/pwm-imx.c
> +++ b/drivers/pwm/pwm-imx.c
> @@ -212,6 +212,7 @@ static struct of_device_id imx_pwm_dt_ids[] = {
>  
>  static int imx_pwm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	const struct imx_pwm_data *data;
>  	struct imx_chip *imx;
>  	int ret = 0;
> @@ -226,9 +227,10 @@ static int imx_pwm_probe(struct device_d *dev)
>  	if (IS_ERR(imx->clk_per))
>  		return PTR_ERR(imx->clk_per);
>  
> -	imx->mmio_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(imx->mmio_base))
> -		return PTR_ERR(imx->mmio_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	imx->mmio_base = IOMEM(iores->start);
>  
>  	imx->chip.ops = &imx_pwm_ops;
>  	if (dev->device_node) {
> diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
> index e667442..011d900 100644
> --- a/drivers/pwm/pwm-mxs.c
> +++ b/drivers/pwm/pwm-mxs.c
> @@ -110,6 +110,7 @@ static struct pwm_ops mxs_pwm_ops = {
>  
>  static int mxs_pwm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct device_node *np = dev->device_node;
>  	struct mxs_pwm *mxs;
>  	int ret, i;
> @@ -117,9 +118,10 @@ static int mxs_pwm_probe(struct device_d *dev)
>  
>  	mxs = xzalloc(sizeof(*mxs));
>  
> -	mxs->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(mxs->base))
> -		return PTR_ERR(mxs->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	mxs->base = IOMEM(iores->start);
>  
>  	mxs->clk = clk_get(dev, NULL);
>  	if (IS_ERR(mxs->clk))
> diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
> index 8b2ebe4..e399d03 100644
> --- a/drivers/pwm/pxa_pwm.c
> +++ b/drivers/pwm/pxa_pwm.c
> @@ -130,12 +130,16 @@ static struct pwm_ops pxa_pwm_ops = {
>  
>  static int pxa_pwm_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct pxa_pwm_chip *chip;
>  
>  	chip = xzalloc(sizeof(*chip));
>  	chip->chip.devname = asprintf("pwm%d", dev->id);
>  	chip->chip.ops = &pxa_pwm_ops;
> -	chip->iobase = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	chip->iobase = IOMEM(iores->start);
>  	chip->id = dev->id;
>  	dev->priv = chip;
>  
> diff --git a/drivers/rtc/rtc-jz4740.c b/drivers/rtc/rtc-jz4740.c
> index 762f356..9588535 100644
> --- a/drivers/rtc/rtc-jz4740.c
> +++ b/drivers/rtc/rtc-jz4740.c
> @@ -113,16 +113,18 @@ static struct rtc_class_ops jz4740_rtc_ops = {
>  
>  static int jz4740_rtc_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int ret;
>  	struct jz4740_rtc *rtc;
>  	uint32_t scratchpad;
>  	void __iomem *base;
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(base);
> +		return PTR_ERR(iores);
>  	}
> +	base = IOMEM(iores->start);
>  
>  	rtc = xzalloc(sizeof(*rtc));
>  
> diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
> index d519a87..10d1506 100644
> --- a/drivers/serial/serial_altera.c
> +++ b/drivers/serial/serial_altera.c
> @@ -78,13 +78,17 @@ static int altera_serial_getc(struct console_device *cdev)
>  
>  static int altera_serial_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct console_device *cdev;
>  	struct altera_serial_priv *priv;
>  
>  	priv = xzalloc(sizeof(*priv));
>  	cdev = &priv->cdev;
>  
> -	priv->regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->regs = IOMEM(iores->start);
>  	cdev->dev = dev;
>  	cdev->tstc = altera_serial_tstc;
>  	cdev->putc = altera_serial_putc;
> diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
> index 4219a4b..0164ea5 100644
> --- a/drivers/serial/serial_altera_jtag.c
> +++ b/drivers/serial/serial_altera_jtag.c
> @@ -82,6 +82,7 @@ static int altera_serial_jtag_getc(struct console_device *cdev)
>  }
>  
>  static int altera_serial_jtag_probe(struct device_d *dev) {
> +	struct resource *iores;
>  
>  	struct console_device *cdev;
>  	struct altera_serial_jtag_priv *priv;
> @@ -89,7 +90,10 @@ static int altera_serial_jtag_probe(struct device_d *dev) {
>  	priv = xzalloc(sizeof(*priv));
>  	cdev = &priv->cdev;
>  
> -	priv->regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->regs = IOMEM(iores->start);
>  	cdev->dev = dev;
>  	cdev->tstc = altera_serial_jtag_tstc;
>  	cdev->putc = altera_serial_jtag_putc;
> diff --git a/drivers/serial/serial_ar933x.c b/drivers/serial/serial_ar933x.c
> index 59bb5b2..676b9fa 100644
> --- a/drivers/serial/serial_ar933x.c
> +++ b/drivers/serial/serial_ar933x.c
> @@ -156,15 +156,17 @@ static int ar933x_serial_getc(struct console_device *cdev)
>  
>  static int ar933x_serial_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct console_device *cdev;
>  	struct ar933x_uart_priv	*priv;
>  	u32 uart_cs;
>  
>  	cdev = xzalloc(sizeof(struct console_device));
>  	priv = xzalloc(sizeof(struct ar933x_uart_priv));
> -	priv->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->base))
> -		return PTR_ERR(priv->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->base = IOMEM(iores->start);
>  
>  	dev->priv = priv;
>  
> diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
> index 87b2e33..9bef576 100644
> --- a/drivers/serial/serial_auart.c
> +++ b/drivers/serial/serial_auart.c
> @@ -180,6 +180,7 @@ static void auart_serial_init_port(struct auart_priv *priv)
>  
>  static int auart_serial_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct auart_priv *priv;
>  	struct console_device *cdev;
>  
> @@ -194,9 +195,10 @@ static int auart_serial_probe(struct device_d *dev)
>  	cdev->dev = dev;
>  
>  	dev->priv = priv;
> -	priv->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->base))
> -		return PTR_ERR(priv->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->base = IOMEM(iores->start);
>  	priv->clk = clk_get(dev, NULL);
>  	if (IS_ERR(priv->clk))
>  		return PTR_ERR(priv->clk);
> diff --git a/drivers/serial/serial_cadence.c b/drivers/serial/serial_cadence.c
> index 6b48a48..79e30dd 100644
> --- a/drivers/serial/serial_cadence.c
> +++ b/drivers/serial/serial_cadence.c
> @@ -216,6 +216,7 @@ static int cadence_clocksource_clock_change(struct notifier_block *nb,
>  
>  static int cadence_serial_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct console_device *cdev;
>  	struct cadence_serial_priv *priv;
>  	struct cadence_serial_devtype_data *devtype;
> @@ -239,9 +240,9 @@ static int cadence_serial_probe(struct device_d *dev)
>  	if (devtype->mode & CADENCE_MODE_CLK_REF_DIV)
>  		clk_set_rate(priv->clk, clk_get_rate(priv->clk) / 8);
>  
> -	priv->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->regs)) {
> -		ret = PTR_ERR(priv->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
> +		ret = PTR_ERR(iores);
>  		goto err_free;
>  	}
>  
> diff --git a/drivers/serial/serial_digic.c b/drivers/serial/serial_digic.c
> index 235ea0f..06b6e15 100644
> --- a/drivers/serial/serial_digic.c
> +++ b/drivers/serial/serial_digic.c
> @@ -101,10 +101,14 @@ static int digic_serial_tstc(struct console_device *cdev)
>  
>  static int digic_serial_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct console_device *cdev;
>  
>  	cdev = xzalloc(sizeof(struct console_device));
> -	dev->priv = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	dev->priv = IOMEM(iores->start);
>  	cdev->dev = dev;
>  	cdev->tstc = &digic_serial_tstc;
>  	cdev->putc = &digic_serial_putc;
> diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
> index 68b438b..3d08e13 100644
> --- a/drivers/serial/serial_imx.c
> +++ b/drivers/serial/serial_imx.c
> @@ -202,6 +202,7 @@ static int imx_clocksource_clock_change(struct notifier_block *nb,
>  
>  static int imx_serial_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct console_device *cdev;
>  	struct imx_serial_priv *priv;
>  	uint32_t val;
> @@ -224,7 +225,10 @@ static int imx_serial_probe(struct device_d *dev)
>  		goto err_free;
>  	}
>  
> -	priv->regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->regs = IOMEM(iores->start);
>  	cdev->dev = dev;
>  	cdev->tstc = imx_serial_tstc;
>  	cdev->putc = imx_serial_putc;
> diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
> index 711163c..cc63a84 100644
> --- a/drivers/serial/serial_mpc5xxx.c
> +++ b/drivers/serial/serial_mpc5xxx.c
> @@ -145,12 +145,14 @@ static int mpc5xxx_serial_tstc (struct console_device *cdev)
>  
>  static int mpc5xxx_serial_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct console_device *cdev;
>  
>  	cdev = xzalloc(sizeof(struct console_device));
> -	dev->priv = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(dev->priv))
> -		return PTR_ERR(dev->priv);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	dev->priv = IOMEM(iores->start);
>  	cdev->dev = dev;
>  	cdev->tstc = mpc5xxx_serial_tstc;
>  	cdev->putc = mpc5xxx_serial_putc;
> diff --git a/drivers/serial/serial_netx.c b/drivers/serial/serial_netx.c
> index c659cfa..55ed89b 100644
> --- a/drivers/serial/serial_netx.c
> +++ b/drivers/serial/serial_netx.c
> @@ -133,10 +133,14 @@ static int netx_serial_tstc(struct console_device *cdev)
>  
>  static int netx_serial_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct console_device *cdev;
>  
>  	cdev = xzalloc(sizeof(struct console_device));
> -	dev->priv = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	dev->priv = IOMEM(iores->start);
>  	cdev->dev = dev;
>  	cdev->tstc = netx_serial_tstc;
>  	cdev->putc = netx_serial_putc;
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index 1af226a..4ad52ea 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -321,6 +321,7 @@ static __maybe_unused struct ns16550_drvdata tegra_drvdata = {
>  
>  static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
>  {
> +	struct resource *iores;
>  	struct resource *res;
>  	int width;
>  
> @@ -328,9 +329,10 @@ static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
>  	if (IS_ERR(res))
>  		return PTR_ERR(res);
>  
> -	priv->mmiobase = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->mmiobase))
> -		return PTR_ERR(priv->mmiobase);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->mmiobase = IOMEM(iores->start);
>  
>  	width = res->flags & IORESOURCE_MEM_TYPE_MASK;
>  	switch (width) {
> diff --git a/drivers/serial/serial_pl010.c b/drivers/serial/serial_pl010.c
> index 81cea77..06f9d2d 100644
> --- a/drivers/serial/serial_pl010.c
> +++ b/drivers/serial/serial_pl010.c
> @@ -135,10 +135,14 @@ static int pl010_tstc(struct console_device *cdev)
>  
>  static int pl010_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct console_device *cdev;
>  
>  	cdev = xzalloc(sizeof(struct console_device));
> -	dev->priv = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	dev->priv = IOMEM(iores->start);
>  	cdev->dev = dev;
>  	cdev->tstc = pl010_tstc;
>  	cdev->putc = pl010_putc;
> diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
> index 20ac4be..1a4d7b4 100644
> --- a/drivers/serial/serial_pxa.c
> +++ b/drivers/serial/serial_pxa.c
> @@ -161,12 +161,16 @@ static int pxa_serial_setbaudrate(struct console_device *cdev, int baudrate)
>  
>  static int pxa_serial_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct console_device *cdev;
>  	struct pxa_serial_priv *priv;
>  
>  	priv = xzalloc(sizeof(*priv));
>  	cdev = &priv->cdev;
> -	priv->regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->regs = IOMEM(iores->start);
>  
>  	dev->priv = priv;
>  	cdev->dev = dev;
> diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
> index 038193d..0a6e22d 100644
> --- a/drivers/serial/serial_s3c.c
> +++ b/drivers/serial/serial_s3c.c
> @@ -176,12 +176,16 @@ static void s3c_serial_flush(struct console_device *cdev)
>  
>  static int s3c_serial_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct s3c_uart *priv;
>  	struct console_device *cdev;
>  
>  	priv = xzalloc(sizeof(struct s3c_uart));
>  	cdev = &priv->cdev;
> -	priv->regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->regs = IOMEM(iores->start);
>  	dev->priv = priv;
>  	cdev->dev = dev;
>  	cdev->tstc = s3c_serial_tstc;
> diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
> index 8bb242b..83328f4 100644
> --- a/drivers/serial/stm-serial.c
> +++ b/drivers/serial/stm-serial.c
> @@ -145,6 +145,7 @@ static int stm_serial_init_port(struct stm_priv *priv)
>  
>  static int stm_serial_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct stm_priv *priv;
>  	struct console_device *cdev;
>  
> @@ -160,9 +161,10 @@ static int stm_serial_probe(struct device_d *dev)
>  	cdev->dev = dev;
>  
>  	dev->priv = priv;
> -	priv->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->base))
> -		return PTR_ERR(priv->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->base = IOMEM(iores->start);
>  	priv->clk = clk_get(dev, NULL);
>  	if (IS_ERR(priv->clk))
>  		return PTR_ERR(priv->clk);
> diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
> index bf1add8..4506e27 100644
> --- a/drivers/spi/altera_spi.c
> +++ b/drivers/spi/altera_spi.c
> @@ -206,6 +206,7 @@ static int altera_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
>  
>  static int altera_spi_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct spi_master *master;
>  	struct altera_spi *altera_spi;
>  	struct spi_altera_master *pdata = dev->platform_data;
> @@ -221,9 +222,10 @@ static int altera_spi_probe(struct device_d *dev)
>  	master->num_chipselect = pdata->num_chipselect;
>  	master->bus_num = pdata->bus_num;
>  
> -	altera_spi->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(altera_spi->regs))
> -		return PTR_ERR(altera_spi->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	altera_spi->regs = IOMEM(iores->start);
>  
>  	altera_spi->databits = pdata->databits;
>  	altera_spi->speed = pdata->speed;
> diff --git a/drivers/spi/ath79_spi.c b/drivers/spi/ath79_spi.c
> index bdb39ef..68b4c7c 100644
> --- a/drivers/spi/ath79_spi.c
> +++ b/drivers/spi/ath79_spi.c
> @@ -233,6 +233,7 @@ static void ath79_spi_disable(struct ath79_spi *sp)
>  
>  static int ath79_spi_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct spi_master *master;
>  	struct ath79_spi *ath79_spi;
>  
> @@ -263,7 +264,10 @@ static int ath79_spi_probe(struct device_d *dev)
>  		master->num_chipselect = num_cs;
>  	}
>  
> -	ath79_spi->regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	ath79_spi->regs = IOMEM(iores->start);
>  
>  	/* enable gpio mode */
>  	ath79_spi_enable(ath79_spi);
> diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
> index 0bf9d08..3f2c527 100644
> --- a/drivers/spi/atmel_spi.c
> +++ b/drivers/spi/atmel_spi.c
> @@ -371,6 +371,7 @@ err:
>  
>  static int atmel_spi_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int ret = 0;
>  	int i;
>  	struct spi_master *master;
> @@ -399,7 +400,10 @@ static int atmel_spi_probe(struct device_d *dev)
>  	master->transfer = atmel_spi_transfer;
>  	master->num_chipselect = pdata->num_chipselect;
>  	as->cs_pins = pdata->chipselect;
> -	as->regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	as->regs = IOMEM(iores->start);
>  
>  	for (i = 0; i < master->num_chipselect; i++) {
>  		ret = gpio_request(as->cs_pins[i], dev_name(dev));
> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index 2e48967..5bd1845 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -538,6 +538,7 @@ static int imx_spi_dt_probe(struct imx_spi *imx)
>  
>  static int imx_spi_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct spi_master *master;
>  	struct imx_spi *imx;
>  	struct spi_imx_master *pdata = dev->platform_data;
> @@ -574,7 +575,10 @@ static int imx_spi_probe(struct device_d *dev)
>  	imx->chipselect = devdata->chipselect;
>  	imx->xchg_single = devdata->xchg_single;
>  	imx->do_transfer = devdata->do_transfer;
> -	imx->regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	imx->regs = IOMEM(iores->start);
>  
>  	if (devdata->init)
>  		devdata->init(imx);
> diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
> index bc0655f..d58bb11 100644
> --- a/drivers/spi/mvebu_spi.c
> +++ b/drivers/spi/mvebu_spi.c
> @@ -332,6 +332,7 @@ static struct of_device_id mvebu_spi_dt_ids[] = {
>  
>  static int mvebu_spi_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct spi_master *master;
>  	struct mvebu_spi *priv;
>  	const struct of_device_id *match;
> @@ -342,9 +343,9 @@ static int mvebu_spi_probe(struct device_d *dev)
>  		return -EINVAL;
>  
>  	priv = xzalloc(sizeof(*priv));
> -	priv->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->base)) {
> -		ret = PTR_ERR(priv->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
> +		ret = PTR_ERR(iores);
>  		goto err_free;
>  	}
>  	priv->set_baudrate = (void *)match->data;
> diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
> index 9fe2fd4..420d122 100644
> --- a/drivers/spi/mxs_spi.c
> +++ b/drivers/spi/mxs_spi.c
> @@ -250,6 +250,7 @@ static int mxs_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
>  
>  static int mxs_spi_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct spi_master *master;
>  	struct mxs_spi *mxs;
>  
> @@ -264,9 +265,10 @@ static int mxs_spi_probe(struct device_d *dev)
>  	master->num_chipselect = 3;
>  	mxs->mode = SPI_CPOL | SPI_CPHA;
>  
> -	mxs->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(mxs->regs))
> -		return PTR_ERR(mxs->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	mxs->regs = IOMEM(iores->start);
>  
>  	mxs->clk = clk_get(dev, NULL);
>  	if (IS_ERR(mxs->clk))
> diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
> index 8e29fde..f630397 100644
> --- a/drivers/spi/omap3_spi.c
> +++ b/drivers/spi/omap3_spi.c
> @@ -358,6 +358,7 @@ static int omap3_spi_probe_dt(struct device_d *dev, struct omap3_spi_master *oma
>  
>  static int omap3_spi_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct spi_master *master;
>  	struct omap3_spi_master *omap3_master;
>  	struct omap_spi_drvdata *devtype;
> @@ -399,7 +400,10 @@ static int omap3_spi_probe(struct device_d *dev)
>  	master->setup = omap3_spi_setup;
>  	master->transfer = omap3_spi_transfer;
>  
> -	omap3_master->base = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	omap3_master->base = IOMEM(iores->start);
>  	omap3_master->regs = omap3_master->base;
>  
>  	omap3_master->regs += devtype->register_offset;
> diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
> index b36ef19..5f6bebc 100644
> --- a/drivers/usb/gadget/at91_udc.c
> +++ b/drivers/usb/gadget/at91_udc.c
> @@ -1379,6 +1379,7 @@ static void at91_udc_gadget_poll(struct usb_gadget *gadget)
>  
>  static int __init at91udc_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct at91_udc	*udc = &controller;
>  	int		retval;
>  
> @@ -1422,7 +1423,10 @@ static int __init at91udc_probe(struct device_d *dev)
>  		udc->ep[3].maxpacket = 64;
>  	}
>  
> -	udc->udp_baseaddr = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	udc->udp_baseaddr = IOMEM(iores->start);
>  	if (IS_ERR(udc->udp_baseaddr)) {
>  		retval = PTR_ERR(udc->udp_baseaddr);
>  		goto fail0a;
> diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
> index 831fbde..372c07b 100644
> --- a/drivers/usb/gadget/pxa27x_udc.c
> +++ b/drivers/usb/gadget/pxa27x_udc.c
> @@ -1449,12 +1449,14 @@ static struct pxa_udc memory = {
>  
>  static int __init pxa_udc_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct pxa_udc *udc = &memory;
>  	int gpio, ret;
>  
> -	udc->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(udc->regs))
> -		return PTR_ERR(udc->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	udc->regs = IOMEM(iores->start);
>  
>  	udc->dev = dev;
>  	udc->mach = dev->platform_data;
> diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
> index 11b1a89..cc9636c 100644
> --- a/drivers/usb/host/ehci-atmel.c
> +++ b/drivers/usb/host/ehci-atmel.c
> @@ -46,6 +46,7 @@ static void atmel_stop_clock(void)
>  
>  static int atmel_ehci_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct ehci_data data;
>  
>  	iclk = clk_get(dev, "ehci_clk");
> @@ -67,7 +68,10 @@ static int atmel_ehci_probe(struct device_d *dev)
>  
>  	data.flags = 0;
>  
> -	data.hccr = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	data.hccr = IOMEM(iores->start);
>  
>  	ehci_register(dev, &data);
>  
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 91c6d73..8ea26e3 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -1334,6 +1334,7 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
>  
>  static int ehci_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct ehci_data data = {};
>  	struct ehci_platform_data *pdata = dev->platform_data;
>  	struct device_node *dn = dev->device_node;
> @@ -1350,12 +1351,17 @@ static int ehci_probe(struct device_d *dev)
>  		 */
>  		data.flags = EHCI_HAS_TT;
>  
> -	data.hccr = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(data.hccr))
> -		return PTR_ERR(data.hccr);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	data.hccr = IOMEM(iores->start);
>  
> -	if (dev->num_resources > 1)
> -		data.hcor = dev_request_mem_region(dev, 1);
> +	if (dev->num_resources > 1) {
> +		iores = dev_request_mem_resource(dev, 1);
> +		if (IS_ERR(iores))
> +			return PTR_ERR(iores);
> +		data.hcor = IOMEM(iores->start);
> +	}
>  	else
>  		data.hcor = NULL;
>  
> diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
> index 1d511b7..612c3a1 100644
> --- a/drivers/usb/host/ohci-hcd.c
> +++ b/drivers/usb/host/ohci-hcd.c
> @@ -1793,6 +1793,7 @@ static int ohci_init(struct usb_host *host)
>  
>  static int ohci_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct usb_host *host;
>  	struct ohci *ohci;
>  
> @@ -1818,9 +1819,10 @@ static int ohci_probe(struct device_d *dev)
>  
>  	usb_register_host(host);
>  
> -	ohci->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(ohci->regs))
> -		return PTR_ERR(ohci->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	ohci->regs = IOMEM(iores->start);
>  
>  	return 0;
>  }
> diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
> index a44a1a4..2b808cc 100644
> --- a/drivers/usb/host/xhci-hcd.c
> +++ b/drivers/usb/host/xhci-hcd.c
> @@ -1509,9 +1509,13 @@ int xhci_register(struct device_d *dev, struct xhci_data *data)
>  
>  static int xhci_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct xhci_data data = {};
>  
> -	data.regs = dev_request_mem_region(dev, 0);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	data.regs = IOMEM(iores->start);
>  
>  	return xhci_register(dev, &data);
>  }
> diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
> index a1c36cf..a799abe 100644
> --- a/drivers/usb/imx/chipidea-imx.c
> +++ b/drivers/usb/imx/chipidea-imx.c
> @@ -216,6 +216,7 @@ static int ci_register_otg_device(struct imx_chipidea *ci)
>  
>  static int imx_chipidea_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct imxusb_platformdata *pdata = dev->platform_data;
>  	int ret;
>  	void __iomem *base;
> @@ -245,9 +246,10 @@ static int imx_chipidea_probe(struct device_d *dev)
>  	if (!IS_ERR(ci->vbus))
>  		regulator_enable(ci->vbus);
>  
> -	base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	base = IOMEM(iores->start);
>  
>  	ci->base = base;
>  
> diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
> index 576dc9a..d938a2c 100644
> --- a/drivers/usb/imx/imx-usb-misc.c
> +++ b/drivers/usb/imx/imx-usb-misc.c
> @@ -545,6 +545,7 @@ int imx_usbmisc_port_post_init(int port, unsigned flags)
>  
>  static int imx_usbmisc_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct imx_usb_misc_data *devtype;
>  	int ret;
>  
> @@ -552,9 +553,10 @@ static int imx_usbmisc_probe(struct device_d *dev)
>  	if (ret)
>  		return ret;
>  
> -	usbmisc_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(usbmisc_base))
> -		return PTR_ERR(usbmisc_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	usbmisc_base = IOMEM(iores->start);
>  
>  	imxusbmisc_data = devtype;
>  
> diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
> index 4562fb2..e17a8e1 100644
> --- a/drivers/usb/imx/imx-usb-phy.c
> +++ b/drivers/usb/imx/imx-usb-phy.c
> @@ -65,16 +65,19 @@ static int imx_usbphy_enable(struct imx_usbphy *imxphy)
>  
>  static int imx_usbphy_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int ret;
>  	struct imx_usbphy *imxphy;
>  
>  	imxphy = xzalloc(sizeof(*imxphy));
>  
> -	imxphy->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(imxphy->base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		ret = -ENODEV;
>  		goto err_free;
> +		return PTR_ERR(iores);
>  	}
> +	imxphy->base = IOMEM(iores->start);
>  
>  	imxphy->clk = clk_get(dev, NULL);
>  	if (IS_ERR(imxphy->clk)) {
> @@ -91,8 +94,6 @@ static int imx_usbphy_probe(struct device_d *dev)
>  err_clk:
>  err_free:
>  	free(imxphy);
> -
> -	return PTR_ERR(imxphy->base);
>  };
>  
>  static __maybe_unused struct of_device_id imx_usbphy_dt_ids[] = {
> diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
> index 958aeec..dfb4b1e 100644
> --- a/drivers/usb/musb/musb_dsps.c
> +++ b/drivers/usb/musb/musb_dsps.c
> @@ -349,6 +349,7 @@ static int dsps_register_otg_device(struct dsps_glue *glue)
>  
>  static int dsps_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct musb_hdrc_platform_data *pdata;
>  	struct musb_hdrc_config	*config;
>  	struct device_node *dn = dev->device_node;
> @@ -378,13 +379,14 @@ static int dsps_probe(struct device_d *dev)
>  
>  	pdata = &glue->pdata;
>  
> -	glue->musb.mregs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(glue->musb.mregs))
> -		return PTR_ERR(glue->musb.mregs);
> -
> -	glue->musb.ctrl_base = dev_request_mem_region(dev, 1);
> -	if (IS_ERR(glue->musb.ctrl_base))
> -		return PTR_ERR(glue->musb.ctrl_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	glue->musb.mregs = IOMEM(iores->start);iores = dev_request_mem_resource(dev,
> +										1);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	glue->musb.ctrl_base = IOMEM(iores->start);
>  
>  	glue->musb.controller = dev;
>  
> diff --git a/drivers/usb/musb/phy-am335x-control.c b/drivers/usb/musb/phy-am335x-control.c
> index 809c518..35c7e1b 100644
> --- a/drivers/usb/musb/phy-am335x-control.c
> +++ b/drivers/usb/musb/phy-am335x-control.c
> @@ -129,6 +129,7 @@ EXPORT_SYMBOL(am335x_get_phy_control);
>  
>  static int am335x_control_usb_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	/*struct resource	*res;*/
>  	struct am335x_control_usb *ctrl_usb;
>  	const struct phy_control *phy_ctrl;
> @@ -146,13 +147,14 @@ static int am335x_control_usb_probe(struct device_d *dev)
>  
>  	ctrl_usb->dev = dev;
>  
> -	ctrl_usb->phy_reg = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(ctrl_usb->phy_reg))
> -		return PTR_ERR(ctrl_usb->phy_reg);
> -
> -	ctrl_usb->wkup = dev_request_mem_region(dev, 1);
> -	if (IS_ERR(ctrl_usb->wkup))
> -		return PTR_ERR(ctrl_usb->wkup);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	ctrl_usb->phy_reg = IOMEM(iores->start);iores = dev_request_mem_resource(dev,
> +										 1);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	ctrl_usb->wkup = IOMEM(iores->start);
>  
>  	spin_lock_init(&ctrl_usb->lock);
>  	ctrl_usb->phy_ctrl = *phy_ctrl;
> diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
> index 2be31ea..c4103f3 100644
> --- a/drivers/usb/musb/phy-am335x.c
> +++ b/drivers/usb/musb/phy-am335x.c
> @@ -30,17 +30,20 @@ static int am335x_init(struct usb_phy *phy)
>  
>  static int am335x_phy_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int ret;
>  
>  	am_usbphy = xzalloc(sizeof(*am_usbphy));
>  	if (!am_usbphy)
>  		return -ENOMEM;
>  
> -	am_usbphy->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(am_usbphy->base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		ret = -ENODEV;
>  		goto err_free;
> +		return PTR_ERR(iores);
>  	}
> +	am_usbphy->base = IOMEM(iores->start);
>  
>  	am_usbphy->phy_ctrl = am335x_get_phy_control(dev);
>  	if (!am_usbphy->phy_ctrl)
> @@ -61,8 +64,6 @@ static int am335x_phy_probe(struct device_d *dev)
>  
>  err_free:
>  	free(am_usbphy);
> -
> -	return PTR_ERR(am_usbphy->base);
>  };
>  
>  static __maybe_unused struct of_device_id am335x_phy_dt_ids[] = {
> diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
> index 76116af..555799e 100644
> --- a/drivers/video/atmel_lcdfb_core.c
> +++ b/drivers/video/atmel_lcdfb_core.c
> @@ -245,6 +245,7 @@ static struct fb_ops atmel_lcdc_ops = {
>  
>  int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
>  {
> +	struct resource *iores;
>  	struct atmel_lcdfb_info *sinfo;
>  	struct atmel_lcdfb_platform_data *pdata = dev->platform_data;
>  	int ret = 0;
> @@ -257,9 +258,10 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
>  
>  	sinfo = xzalloc(sizeof(*sinfo));
>  	sinfo->pdata = pdata;
> -	sinfo->mmio = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(sinfo->mmio))
> -		return PTR_ERR(sinfo->mmio);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	sinfo->mmio = IOMEM(iores->start);
>  
>  	sinfo->dev_data = data;
>  
> diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
> index 03d191a..7c3a800 100644
> --- a/drivers/video/imx-ipu-fb.c
> +++ b/drivers/video/imx-ipu-fb.c
> @@ -988,6 +988,7 @@ static int sdc_fb_register_overlay(struct ipu_fb_info *fbi, void *fb)
>  
>  static int imxfb_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct ipu_fb_info *fbi;
>  	struct fb_info *info;
>  	const struct imx_ipu_fb_platform_data *pdata = dev->platform_data;
> @@ -1003,9 +1004,10 @@ static int imxfb_probe(struct device_d *dev)
>  	if (IS_ERR(fbi->clk))
>  		return PTR_ERR(fbi->clk);
>  
> -	fbi->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(fbi->regs))
> -		return PTR_ERR(fbi->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	fbi->regs = IOMEM(iores->start);
>  	fbi->dev = dev;
>  	fbi->enable = pdata->enable;
>  	fbi->disp_data_fmt = pdata->disp_data_fmt;
> diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
> index 49cbca1..8b251a5 100644
> --- a/drivers/video/imx-ipu-v3/imx-hdmi.c
> +++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
> @@ -1271,6 +1271,7 @@ static int dw_hdmi_ioctl(struct vpl *vpl, unsigned int port,
>  
>  static int dw_hdmi_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct device_node *np = dev->device_node;
>  	struct dw_hdmi *hdmi;
>  	int ret;
> @@ -1293,9 +1294,10 @@ static int dw_hdmi_probe(struct device_d *dev)
>  
>  	hdmi->ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
>  
> -	hdmi->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(hdmi->regs))
> -		return PTR_ERR(hdmi->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	hdmi->regs = IOMEM(iores->start);
>  
>  	hdmi->isfr_clk = clk_get(hdmi->dev, "isfr");
>  	if (IS_ERR(hdmi->isfr_clk)) {
> diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
> index 398eefb..1811e50 100644
> --- a/drivers/video/imx-ipu-v3/ipu-common.c
> +++ b/drivers/video/imx-ipu-v3/ipu-common.c
> @@ -751,6 +751,7 @@ err_register:
>  
>  static int ipu_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct ipu_soc *ipu;
>  	void __iomem *ipu_base;
>  	int i, ret;
> @@ -760,9 +761,10 @@ static int ipu_probe(struct device_d *dev)
>  	if (ret)
>  		return ret;
>  
> -	ipu_base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(ipu_base))
> -		return PTR_ERR(ipu_base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	ipu_base = IOMEM(iores->start);
>  
>  	ipu = xzalloc(sizeof(*ipu));
>  
> diff --git a/drivers/video/imx.c b/drivers/video/imx.c
> index 11d49c6..78cb5c0 100644
> --- a/drivers/video/imx.c
> +++ b/drivers/video/imx.c
> @@ -539,6 +539,7 @@ static int imxfb_register_overlay(struct imxfb_info *fbi, void *fb)
>  
>  static int imxfb_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct imxfb_info *fbi;
>  	struct fb_info *info;
>  	struct imx_fb_platform_data *pdata = dev->platform_data;
> @@ -573,9 +574,10 @@ static int imxfb_probe(struct device_d *dev)
>  		return PTR_ERR(fbi->ipg_clk);
>  
>  	fbi->mode = pdata->mode;
> -	fbi->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(fbi->regs))
> -		return PTR_ERR(fbi->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	fbi->regs = IOMEM(iores->start);
>  
>  	fbi->pcr = pdata->mode->pcr;
>  	fbi->pwmr = pdata->pwmr;
> diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
> index e76404d..d444e09 100644
> --- a/drivers/video/pxa.c
> +++ b/drivers/video/pxa.c
> @@ -487,6 +487,7 @@ static struct fb_ops pxafb_ops = {
>  
>  static int pxafb_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct pxafb_platform_data *pdata = dev->platform_data;
>  	struct pxafb_info *fbi;
>  	struct fb_info *info;
> @@ -499,9 +500,10 @@ static int pxafb_probe(struct device_d *dev)
>  	info = &fbi->info;
>  
>  	fbi->mode = pdata->mode;
> -	fbi->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(fbi->regs))
> -		return PTR_ERR(fbi->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	fbi->regs = IOMEM(iores->start);
>  
>  	fbi->dev = dev;
>  	fbi->lcd_power = pdata->lcd_power;
> diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
> index b1883e2..84ed0ae 100644
> --- a/drivers/video/s3c24xx.c
> +++ b/drivers/video/s3c24xx.c
> @@ -358,13 +358,17 @@ static struct s3cfb_info fbi = {
>  
>  static int s3cfb_probe(struct device_d *hw_dev)
>  {
> +	struct resource *iores;
>  	struct s3c_fb_platform_data *pdata = hw_dev->platform_data;
>  	int ret;
>  
>  	if (! pdata)
>  		return -ENODEV;
>  
> -	fbi.base = dev_request_mem_region(hw_dev, 0);
> +	iores = dev_request_mem_resource(hw_dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	fbi.base = IOMEM(iores->start);
>  	writel(0, fbi.base + LCDCON1);
>  	writel(0, fbi.base + LCDCON5); /* FIXME not 0 for some displays */
>  
> diff --git a/drivers/video/stm.c b/drivers/video/stm.c
> index e5c1ef3..0c190d3 100644
> --- a/drivers/video/stm.c
> +++ b/drivers/video/stm.c
> @@ -505,6 +505,7 @@ static struct imxfb_info fbi = {
>  
>  static int stmfb_probe(struct device_d *hw_dev)
>  {
> +	struct resource *iores;
>  	struct imx_fb_platformdata *pdata = hw_dev->platform_data;
>  	int ret;
>  
> @@ -513,7 +514,10 @@ static int stmfb_probe(struct device_d *hw_dev)
>  
>  	/* add runtime hardware info */
>  	fbi.hw_dev = hw_dev;
> -	fbi.base = dev_request_mem_region(hw_dev, 0);
> +	iores = dev_request_mem_resource(hw_dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	fbi.base = IOMEM(iores->start);
>  	fbi.clk = clk_get(hw_dev, NULL);
>  	if (IS_ERR(fbi.clk))
>  		return PTR_ERR(fbi.clk);
> diff --git a/drivers/watchdog/davinci_wdt.c b/drivers/watchdog/davinci_wdt.c
> index dfabee2..03dc834 100644
> --- a/drivers/watchdog/davinci_wdt.c
> +++ b/drivers/watchdog/davinci_wdt.c
> @@ -131,14 +131,16 @@ static int davinci_wdt_set_timeout(struct watchdog *wd, unsigned timeout)
>  
>  static int davinci_wdt_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	int ret = 0;
>  	struct davinci_wdt *davinci_wdt;
>  
>  	davinci_wdt = xzalloc(sizeof(*davinci_wdt));
>  
> -	davinci_wdt->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(davinci_wdt->base))
> -		return PTR_ERR(davinci_wdt->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	davinci_wdt->base = IOMEM(iores->start);
>  
>  	davinci_wdt->clk = clk_get(dev, NULL);
>  	if (WARN_ON(IS_ERR(davinci_wdt->clk)))
> diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
> index 3510776..1956fdb 100644
> --- a/drivers/watchdog/im28wd.c
> +++ b/drivers/watchdog/im28wd.c
> @@ -189,13 +189,15 @@ static void __maybe_unused imx28_detect_reset_source(const struct imx28_wd *p)
>  
>  static int imx28_wd_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct imx28_wd *priv;
>  	int rc;
>  
>  	priv = xzalloc(sizeof(struct imx28_wd));
> -	priv->regs = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->regs))
> -		return PTR_ERR(priv->regs);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	priv->regs = IOMEM(iores->start);
>  	priv->wd.set_timeout = imx28_watchdog_set_timeout;
>  	priv->wd.dev = dev;
>  
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index 1458894..03e116e 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -173,6 +173,7 @@ static int imx21_wd_init(struct imx_wd *priv)
>  
>  static int imx_wd_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct imx_wd *priv;
>  	void *ops;
>  	int ret;
> @@ -182,11 +183,12 @@ static int imx_wd_probe(struct device_d *dev)
>  		return ret;
>  
>  	priv = xzalloc(sizeof(struct imx_wd));
> -	priv->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(priv->base);
> +		return PTR_ERR(iores);
>  	}
> +	priv->base = IOMEM(iores->start);
>  	priv->ops = ops;
>  	priv->wd.set_timeout = imx_watchdog_set_timeout;
>  	priv->wd.dev = dev;
> diff --git a/drivers/watchdog/jz4740.c b/drivers/watchdog/jz4740.c
> index 85a1c1d..f28bb91 100644
> --- a/drivers/watchdog/jz4740.c
> +++ b/drivers/watchdog/jz4740.c
> @@ -67,14 +67,16 @@ static void __noreturn jz4740_reset_soc(struct restart_handler *rst)
>  
>  static int jz4740_wdt_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct jz4740_wdt_drvdata *priv;
>  
>  	priv = xzalloc(sizeof(struct jz4740_wdt_drvdata));
> -	priv->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(priv->base)) {
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
>  		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(priv->base);
> +		return PTR_ERR(iores);
>  	}
> +	priv->base = IOMEM(iores->start);
>  
>  	dev->priv = priv;
>  
> diff --git a/drivers/watchdog/omap_wdt.c b/drivers/watchdog/omap_wdt.c
> index 06301b3..51f4f20 100644
> --- a/drivers/watchdog/omap_wdt.c
> +++ b/drivers/watchdog/omap_wdt.c
> @@ -154,6 +154,7 @@ static int omap_wdt_set_timeout(struct watchdog *wdog,
>  
>  static int omap_wdt_probe(struct device_d *dev)
>  {
> +	struct resource *iores;
>  	struct omap_wdt_dev *wdev;
>  	int ret;
>  
> @@ -162,9 +163,9 @@ static int omap_wdt_probe(struct device_d *dev)
>  	wdev->wdt_trgr_pattern	= 0x1234;
>  
>  	/* reserve static register mappings */
> -	wdev->base = dev_request_mem_region(dev, 0);
> -	if (IS_ERR(wdev->base)) {
> -		ret =  PTR_ERR(wdev->base);
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
> +		ret = PTR_ERR(iores);
>  		goto error;
>  	}
>  



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
