Delivery-date: Mon, 13 Nov 2023 08:21:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2RFy-009i0c-1S
	for lore@lore.pengutronix.de;
	Mon, 13 Nov 2023 08:21:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2RFy-0003d7-2s
	for lore@pengutronix.de; Mon, 13 Nov 2023 08:21:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9Plsy5jLggein2e9RKU/QmNpmVXBmkLNQopVtc/L35U=; b=jE8D3SkwOCJf/RjK60SCVyBw3D
	z+3qur88BvVJGrgVp3stt1W37umBBdRei3gOp6sulpS+LSFUiO3G1u2phcrf6jxe99UcHU4Ah514V
	eS3fCqNac+ysuGDMBvkkx22sjfb/O3+NmLuIxvRD33shCLYfNyLpgMd9fZdMCVmgyiLlpSkfSX3aR
	CLQ7WwHIAa8AxX6Xj7oISsY4wA7MuDTzLPmSd+ZA+J0wHLtDdo9UP9DyFQfb84Iw8Obm02yUCHOUV
	jp92Wo/aLgpQwpX/t/OuVBAykBg1C5LtqmVd6YO11gTzn9xM7haOZtYX9yIQmTG+zkxxvdV8lNyv2
	/W6S72Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2REI-00DQZq-1q;
	Mon, 13 Nov 2023 07:19:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2REE-00DQZP-0f
	for barebox@lists.infradead.org;
	Mon, 13 Nov 2023 07:19:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r2REB-0003O4-Es; Mon, 13 Nov 2023 08:19:23 +0100
Message-ID: <1e68befa-bae2-150e-6ac7-6bd450fb14f8@pengutronix.de>
Date: Mon, 13 Nov 2023 08:19:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20231110130206.2172907-1-s.hauer@pengutronix.de>
 <20231110130206.2172907-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231110130206.2172907-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231112_231926_422771_DC718186 
X-CRM114-Status: GOOD (  28.34  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] net: eqos: rename i.MX8 driver glue code to i.MX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 10.11.23 14:02, Sascha Hauer wrote:
> The i.MX8 glue code for the designware ethernet driver will be used by
> i.MX9 as well. Rename the file accordingly.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/configs/imx_v8_defconfig             |  2 +-
>  arch/arm/configs/multi_v8_defconfig           |  2 +-
>  drivers/net/Kconfig                           |  6 +-
>  drivers/net/Makefile                          |  2 +-
>  .../{designware_imx8.c => designware_imx.c}   | 58 +++++++++----------
>  5 files changed, 35 insertions(+), 35 deletions(-)
>  rename drivers/net/{designware_imx8.c => designware_imx.c} (73%)
> 
> diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
> index 8084e72ea0..66dab8c4a7 100644
> --- a/arch/arm/configs/imx_v8_defconfig
> +++ b/arch/arm/configs/imx_v8_defconfig
> @@ -92,7 +92,7 @@ CONFIG_NET_NETCONSOLE=y
>  CONFIG_OFDEVICE=y
>  CONFIG_OF_BAREBOX_DRIVERS=y
>  CONFIG_SERIAL_DEV_BUS=y
> -CONFIG_DRIVER_NET_DESIGNWARE_IMX8=y
> +CONFIG_DRIVER_NET_DESIGNWARE_IMX=y
>  CONFIG_DRIVER_NET_FEC_IMX=y
>  CONFIG_DP83867_PHY=y
>  CONFIG_MICREL_PHY=y
> diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
> index 9c538e698d..2599519351 100644
> --- a/arch/arm/configs/multi_v8_defconfig
> +++ b/arch/arm/configs/multi_v8_defconfig
> @@ -141,7 +141,7 @@ CONFIG_SERIAL_AMBA_PL011=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
>  CONFIG_DRIVER_SERIAL_CADENCE=y
>  CONFIG_VIRTIO_CONSOLE=y
> -CONFIG_DRIVER_NET_DESIGNWARE_IMX8=y
> +CONFIG_DRIVER_NET_DESIGNWARE_IMX=y
>  CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP=y
>  CONFIG_DRIVER_NET_FEC_IMX=y
>  CONFIG_DRIVER_NET_MACB=y
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 1c89cf9e41..9be03cf20c 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -107,14 +107,14 @@ config DRIVER_NET_DESIGNWARE_EQOS
>  	  This option enables support for the Synopsys
>  	  Designware Ethernet Quality-of-Service (GMAC4).
>  
> -config DRIVER_NET_DESIGNWARE_IMX8
> -	bool "Designware EQOS i.MX8 Ethernet driver"
> +config DRIVER_NET_DESIGNWARE_IMX
> +	bool "Designware EQOS i.MX Ethernet driver"
>  	depends on HAS_DMA && COMMON_CLK && OFTREE && (ARCH_IMX8M || COMPILE_TEST)
>  	select DRIVER_NET_DESIGNWARE_EQOS
>  	select MFD_SYSCON

Please add an imply of a def_bool, so existing users with i.MX8MP defconfigs
don't lose driver support on an olddefconfig.

>  	help
>  	  This option enables support for the Designware EQOS MAC implemented on
> -	  the NXP i.MX8 SoCs.
> +	  the NXP i.MX SoCs.
>  
>  config DRIVER_NET_DESIGNWARE_STM32
>  	bool "STM32 Designware Ethernet driver"
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 1a272d9158..697b5bdfb7 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -15,7 +15,7 @@ obj-$(CONFIG_DRIVER_NET_DESIGNWARE_GENERIC) += designware_generic.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA) += designware_socfpga.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE_STARFIVE) += designware_starfive.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE_EQOS) += designware_eqos.o
> -obj-$(CONFIG_DRIVER_NET_DESIGNWARE_IMX8) += designware_imx8.o
> +obj-$(CONFIG_DRIVER_NET_DESIGNWARE_IMX) += designware_imx.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE_STM32) += designware_stm32.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE_TEGRA186) += designware_tegra186.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP) += designware_rockchip.o
> diff --git a/drivers/net/designware_imx8.c b/drivers/net/designware_imx.c
> similarity index 73%
> rename from drivers/net/designware_imx8.c
> rename to drivers/net/designware_imx.c
> index 73a16d5e65..00164fa7c7 100644
> --- a/drivers/net/designware_imx8.c
> +++ b/drivers/net/designware_imx.c
> @@ -18,7 +18,7 @@
>  #define GPR_ENET_QOS_RGMII_EN		BIT(21)
>  
>  
> -struct eqos_imx8_priv {
> +struct eqos_imx_priv {
>  	struct device *dev;
>  	struct clk_bulk_data *clks;
>  	int num_clks;
> @@ -28,25 +28,25 @@ struct eqos_imx8_priv {
>  };
>  
>  enum { CLK_STMMACETH, CLK_PCLK, CLK_PTP_REF, CLK_TX};
> -static const struct clk_bulk_data imx8_clks[] = {
> +static const struct clk_bulk_data imx_clks[] = {
>  	[CLK_STMMACETH] = { .id = "stmmaceth" },
>  	[CLK_PCLK]      = { .id = "pclk" },
>  	[CLK_PTP_REF]   = { .id = "ptp_ref" },
>  	[CLK_TX]        = { .id = "tx" },
>  };
>  
> -static unsigned long eqos_get_csr_clk_rate_imx8(struct eqos *eqos)
> +static unsigned long eqos_get_csr_clk_rate_imx(struct eqos *eqos)
>  {
> -	struct eqos_imx8_priv *priv = eqos->priv;
> +	struct eqos_imx_priv *priv = eqos->priv;
>  
>  	return clk_get_rate(priv->clks[CLK_PCLK].clk);
>  }
>  
>  
> -static void eqos_adjust_link_imx8(struct eth_device *edev)
> +static void eqos_adjust_link_imx(struct eth_device *edev)
>  {
>  	struct eqos *eqos = edev->priv;
> -	struct eqos_imx8_priv *priv = eqos->priv;
> +	struct eqos_imx_priv *priv = eqos->priv;
>  	unsigned long rate;
>  	int ret;
>  
> @@ -74,9 +74,9 @@ static void eqos_adjust_link_imx8(struct eth_device *edev)
>  	eqos_adjust_link(edev);
>  }
>  
> -static void eqos_imx8_set_interface_mode(struct eqos *eqos)
> +static void eqos_imx_set_interface_mode(struct eqos *eqos)
>  {
> -	struct eqos_imx8_priv *priv = eqos->priv;
> +	struct eqos_imx_priv *priv = eqos->priv;
>  	struct device_node *np = priv->dev->device_node;
>  	int val;
>  
> @@ -109,10 +109,10 @@ static void eqos_imx8_set_interface_mode(struct eqos *eqos)
>  			   GPR_ENET_QOS_INTF_MODE_MASK, val);
>  }
>  
> -static int eqos_init_imx8(struct device *dev, struct eqos *eqos)
> +static int eqos_init_imx(struct device *dev, struct eqos *eqos)
>  {
>  	struct device_node *np = dev->device_node;
> -	struct eqos_imx8_priv *priv = eqos->priv;
> +	struct eqos_imx_priv *priv = eqos->priv;
>  	int ret;
>  
>  	priv->dev = dev;
> @@ -132,9 +132,9 @@ static int eqos_init_imx8(struct device *dev, struct eqos *eqos)
>  		}
>  	}
>  
> -	priv->num_clks = ARRAY_SIZE(imx8_clks);
> +	priv->num_clks = ARRAY_SIZE(imx_clks);
>  	priv->clks = xmalloc(priv->num_clks * sizeof(*priv->clks));
> -	memcpy(priv->clks, imx8_clks, sizeof imx8_clks);
> +	memcpy(priv->clks, imx_clks, sizeof imx_clks);
>  
>  	ret = clk_bulk_get(dev, priv->num_clks, priv->clks);
>  	if (ret) {
> @@ -148,31 +148,31 @@ static int eqos_init_imx8(struct device *dev, struct eqos *eqos)
>  		return ret;
>  	}
>  
> -	eqos_imx8_set_interface_mode(eqos);
> +	eqos_imx_set_interface_mode(eqos);
>  
>  	return 0;
>  }
>  
> -static struct eqos_ops imx8_ops = {
> -	.init = eqos_init_imx8,
> +static struct eqos_ops imx_ops = {
> +	.init = eqos_init_imx,
>  	.get_ethaddr = eqos_get_ethaddr,
>  	.set_ethaddr = eqos_set_ethaddr,
> -	.adjust_link = eqos_adjust_link_imx8,
> -	.get_csr_clk_rate = eqos_get_csr_clk_rate_imx8,
> +	.adjust_link = eqos_adjust_link_imx,
> +	.get_csr_clk_rate = eqos_get_csr_clk_rate_imx,
>  
>  	.clk_csr = EQOS_MDIO_ADDR_CR_250_300,
>  	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_DCB,
>  };
>  
> -static int eqos_probe_imx8(struct device *dev)
> +static int eqos_probe_imx(struct device *dev)
>  {
> -	return eqos_probe(dev, &imx8_ops, xzalloc(sizeof(struct eqos_imx8_priv)));
> +	return eqos_probe(dev, &imx_ops, xzalloc(sizeof(struct eqos_imx_priv)));
>  }
>  
> -static void eqos_remove_imx8(struct device *dev)
> +static void eqos_remove_imx(struct device *dev)
>  {
>  	struct eqos *eqos = dev->priv;
> -	struct eqos_imx8_priv *priv = eqos->priv;
> +	struct eqos_imx_priv *priv = eqos->priv;
>  
>  	eqos_remove(dev);
>  
> @@ -180,16 +180,16 @@ static void eqos_remove_imx8(struct device *dev)
>  	clk_bulk_put(priv->num_clks, priv->clks);
>  }
>  
> -static __maybe_unused struct of_device_id eqos_imx8_ids[] = {
> +static __maybe_unused struct of_device_id eqos_imx_ids[] = {
>  	{ .compatible = "nxp,imx8mp-dwmac-eqos"},
>  	{ /* sentinel */ }
>  };
> -MODULE_DEVICE_TABLE(of, eqos_imx8_ids);
> +MODULE_DEVICE_TABLE(of, eqos_imx_ids);
>  
> -static struct driver eqos_imx8_driver = {
> -	.name = "eqos-imx8",
> -	.probe = eqos_probe_imx8,
> -	.remove = eqos_remove_imx8,
> -	.of_compatible = DRV_OF_COMPAT(eqos_imx8_ids),
> +static struct driver eqos_imx_driver = {
> +	.name = "eqos-imx",
> +	.probe = eqos_probe_imx,
> +	.remove = eqos_remove_imx,
> +	.of_compatible = DRV_OF_COMPAT(eqos_imx_ids),
>  };
> -device_platform_driver(eqos_imx8_driver);
> +device_platform_driver(eqos_imx_driver);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



