Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f171.google.com ([74.125.82.171])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XSScb-0003tF-JM
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 15:18:50 +0000
Received: by mail-we0-f171.google.com with SMTP id p10so901200wes.30
 for <barebox@lists.infradead.org>; Fri, 12 Sep 2014 08:18:23 -0700 (PDT)
Message-ID: <54130EBA.3080402@gmail.com>
Date: Fri, 12 Sep 2014 17:18:18 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1410516439-25951-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410516439-25951-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] pinctrl: fix Kconfig dependencies
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

On 09/12/2014 12:07 PM, Sascha Hauer wrote:
> - Remove OFDEVICE dependency from PINCTRL. It won't do
>    much then, so add a comment to Kconfig when PINCTRL is
>    selected without OFDEVICE
> - Let Architectures only select PINCTRL instead of the
>    particular driver. Change the drivers to 'default y if $SOC'
>    to make sure the drivers are still compiled if the corresponding
>    SoC is selected
>
> This fixes Kconfig warnings like:
>
> warning: (PINCTRL_ARMADA_370 && PINCTRL_ARMADA_XP && PINCTRL_DOVE && PINCTRL_KIRKWOOD) selects PINCTRL which has unmet direct dependencies (OFDEVICE)
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   arch/arm/mach-mvebu/Kconfig        |  8 ++++----
>   arch/arm/mach-tegra/Kconfig        |  6 +++---
>   drivers/pinctrl/Kconfig            | 24 ++++++++++++++++--------
>   drivers/pinctrl/mvebu/Kconfig      |  8 ++++----
>   drivers/pinctrl/pinctrl-rockchip.c |  3 +++
>   drivers/pinctrl/pinctrl.c          |  6 ++++++
>   6 files changed, 36 insertions(+), 19 deletions(-)

For mvebu, you could also move 'select PINCTRL' to config MACH_MVEBU.
I guess the same is also true for Tegra?

But that is just a nit, so

Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Thanks!

> diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
> index 3270f92..111816a 100644
> --- a/arch/arm/mach-mvebu/Kconfig
> +++ b/arch/arm/mach-mvebu/Kconfig
> @@ -14,25 +14,25 @@ config ARCH_ARMADA_370
>   	bool "Armada 370"
>   	select CPU_V7
>   	select CLOCKSOURCE_MVEBU
> -	select PINCTRL_ARMADA_370
> +	select PINCTRL
>
>   config ARCH_ARMADA_XP
>   	bool "Armada XP"
>   	select CPU_V7
>   	select CLOCKSOURCE_MVEBU
> -	select PINCTRL_ARMADA_XP
> +	select PINCTRL
>
>   config ARCH_DOVE
>   	bool "Dove 88AP510"
>   	select CPU_V7
>   	select CLOCKSOURCE_ORION
> -	select PINCTRL_DOVE
> +	select PINCTRL
>
>   config ARCH_KIRKWOOD
>   	bool "Kirkwood"
>   	select CPU_FEROCEON
>   	select CLOCKSOURCE_ORION
> -	select PINCTRL_KIRKWOOD
> +	select PINCTRL
>
>   endchoice
>
> diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
> index 7214eca..ced2e6d 100644
> --- a/arch/arm/mach-tegra/Kconfig
> +++ b/arch/arm/mach-tegra/Kconfig
> @@ -44,15 +44,15 @@ endchoice
>
>   config ARCH_TEGRA_2x_SOC
>   	bool
> -	select PINCTRL_TEGRA20
> +	select PINCTRL
>
>   config ARCH_TEGRA_3x_SOC
>   	bool
> -	select PINCTRL_TEGRA30
> +	select PINCTRL
>
>   config ARCH_TEGRA_124_SOC
>   	bool
> -	select PINCTRL_TEGRA30
> +	select PINCTRL
>
>   menu "select Tegra boards to be built"
>
> diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
> index 398b931..770fb2d 100644
> --- a/drivers/pinctrl/Kconfig
> +++ b/drivers/pinctrl/Kconfig
> @@ -1,20 +1,21 @@
>   config PINCTRL
>   	bool "Pin controller core support"
> -	depends on OFDEVICE
> +	default y if OFDEVICE
>   	help
>   	  Pincontrollers allow to setup the iomux unit of SoCs. The pin
>   	  controller core is needed when pin muxing shall be configured
>   	  from the devicetree. Legacy drivers here may not need this core
>   	  support but instead provide their own SoC specific APIs
>
> +# The following drivers are needed even without PINCTRL because
> +# the either have a legacy iomux interface or also register a gpio
> +# chip.
>   config PINCTRL_AT91
> -	select PINCTRL if OFDEVICE
>   	bool
>   	help
>   	    The pinmux controller found on AT91 SoCs.
>
>   config PINCTRL_IMX_IOMUX_V1
> -	select PINCTRL if OFDEVICE
>   	bool
>   	help
>   	  This iomux controller is found on i.MX1,21,27.
> @@ -25,13 +26,18 @@ config PINCTRL_IMX_IOMUX_V2
>   	  This iomux controller is found on i.MX31.
>
>   config PINCTRL_IMX_IOMUX_V3
> -	select PINCTRL if OFDEVICE
>   	bool
>   	help
>   	  This iomux controller is found on i.MX25,35,51,53,6.
>
> +if PINCTRL
> +
> +if !OFDEVICE
> +comment "OFDEVICE is not enabled."
> +comment "Without device tree support PINCTRL won't do anything"
> +endif
> +
>   config PINCTRL_ROCKCHIP
> -	select PINCTRL
>   	select GPIO_GENERIC
>   	select MFD_SYSCON
>   	bool
> @@ -39,19 +45,21 @@ config PINCTRL_ROCKCHIP
>   	  The pinmux controller found on Rockchip SoCs.
>
>   config PINCTRL_SINGLE
> -	select PINCTRL
>   	bool "pinctrl single"
>
>   config PINCTRL_TEGRA20
> -	select PINCTRL
>   	bool
> +	default y if ARCH_TEGRA_2x_SOC
>   	help
>   	  The pinmux controller found on the Tegra 20 line of SoCs.
>
>   config PINCTRL_TEGRA30
> -	select PINCTRL
>   	bool
> +	default y if ARCH_TEGRA_3x_SOC
> +	default y if ARCH_TEGRA_124_SOC
>   	help
>   	  The pinmux controller found on the Tegra 30+ line of SoCs.
>
>   source drivers/pinctrl/mvebu/Kconfig
> +
> +endif
> diff --git a/drivers/pinctrl/mvebu/Kconfig b/drivers/pinctrl/mvebu/Kconfig
> index be154ed..af20cad 100644
> --- a/drivers/pinctrl/mvebu/Kconfig
> +++ b/drivers/pinctrl/mvebu/Kconfig
> @@ -1,15 +1,15 @@
>   config PINCTRL_ARMADA_370
> +	default y if ARCH_ARMADA_370
>   	bool
> -	select PINCTRL
>
>   config PINCTRL_ARMADA_XP
>   	bool
> -	select PINCTRL
> +	default y if ARCH_ARMADA_XP
>
>   config PINCTRL_DOVE
>   	bool
> -	select PINCTRL
> +	default y if ARCH_DOVE
>
>   config PINCTRL_KIRKWOOD
>   	bool
> -	select PINCTRL
> +	default y if ARCH_KIRKWOOD
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 56377ea..5f04c04 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -443,6 +443,9 @@ static int rockchip_pinctrl_probe(struct device_d *dev)
>   	if (ret)
>   		return ret;
>
> +	if (!IS_ENABLED(CONFIG_PINCTRL))
> +		return 0;
> +
>   	ret = pinctrl_register(&info->pctl_dev);
>   	if (ret)
>   		return ret;
> diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
> index 8963ac7..d6479b9 100644
> --- a/drivers/pinctrl/pinctrl.c
> +++ b/drivers/pinctrl/pinctrl.c
> @@ -62,6 +62,9 @@ int of_pinctrl_select_state(struct device_node *np, const char *name)
>   	struct device_node *np_config;
>   	const char *statename;
>
> +	if (!IS_ENABLED(CONFIG_PINCTRL))
> +		return -ENOSYS;
> +
>   	if (!of_find_property(np, "pinctrl-0", NULL))
>   		return 0;
>
> @@ -146,6 +149,9 @@ int pinctrl_select_state_default(struct device_d *dev)
>
>   int pinctrl_register(struct pinctrl_device *pdev)
>   {
> +	if (!IS_ENABLED(CONFIG_PINCTRL))
> +		return -ENOSYS;
> +
>   	BUG_ON(!pdev->dev->device_node);
>
>   	list_add_tail(&pdev->list, &pinctrl_list);
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
