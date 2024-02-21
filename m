Delivery-date: Wed, 21 Feb 2024 17:43:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcpgz-00HTnl-24
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 17:43:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcpgy-0007uZ-RO
	for lore@pengutronix.de; Wed, 21 Feb 2024 17:43:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TSh176FwlcLlEvi5T6aJdx6bmH614N0+UTMLFwD2RPY=; b=wcwGGUx8pxZp3vo+uEAaaqFn0H
	EtdXaJGGe8WIYVWveMr6386XfmlC8NxafUDkvtIMrXFRBW3Ppr7+Z5EjjjxuDG9sKlbJuxNMQuwBn
	EkrUeWwzIQcPL+A/zqtQoKgSSc9iVdbHwd6v5F5wxX6MxhdFncNMRqh06haAdnOrAFiA+3wgF8ztO
	Suu2+/uycaQxFn61MHMIZEWeuzmtDeUBPLzoHSPgYmKhlXrzTYq1Yt3yufyzpPc/Lf9vAcaZIae/8
	2mtp31K1Ey74I5hcTAd81GB9uWd5JtwNtGL1DK4Gg0qSgOaPpLkPfnNGnyfadjgO70xcWORQjfY+z
	YS3wkJGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcpgO-00000001lyp-3SK2;
	Wed, 21 Feb 2024 16:42:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcpgL-00000001lxh-0x2j
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 16:42:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcpgH-0007mg-OQ; Wed, 21 Feb 2024 17:42:49 +0100
Message-ID: <a27b45a4-2e4c-4ad0-8f81-85ed7638d79b@pengutronix.de>
Date: Wed, 21 Feb 2024 17:42:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240221150323.2715164-1-s.hauer@pengutronix.de>
 <20240221150323.2715164-9-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240221150323.2715164-9-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_084253_302716_58FC3737 
X-CRM114-Status: GOOD (  33.20  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 8/8] ARM: tqma6ul: use upstream device trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 21.02.24 16:03, Sascha Hauer wrote:
> The tqma6ul has several upstream device trees depending on the exact
> board type. This removes the downstream device tree in favour for the
> upstream device trees. The board type can be determined from an EEPROM
> on the board. This patch also adds support for reading the EEPROM and
> picking the right device tree for the board found.

Is the existing "mba6ulx" device tree not a subset of all boards?
Would it make sense to fall back to that instead of using a specific
DT that may fail on other variants?

> The EEPROM has the board described as strings. I do not know the correct
> strings for the boards I don't have, so right now only the device tree
> for the "TQMa6UL2L-AB.0202" board is picked. A warning is printed when
> an unknown board type is found, so this can be added as new board type
> when found.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/tqma6ulx/board.c              |   7 +-
>  arch/arm/boards/tqma6ulx/lowlevel.c           |  45 ++-
>  arch/arm/dts/Makefile                         |   5 +-
>  arch/arm/dts/imx6ul-mba6ulx.dtsi              | 333 ------------------
>  ...mba6ulx.dts => imx6ul-tqma6ul-common.dtsi} |   5 -
>  arch/arm/dts/imx6ul-tqma6ul2-mba6ulx.dts      |   4 +
>  arch/arm/dts/imx6ul-tqma6ul2l-mba6ulx.dts     |   4 +
>  arch/arm/dts/imx6ull-tqma6ull2-mba6ulx.dts    |   4 +
>  arch/arm/dts/imx6ull-tqma6ull2l-mba6ulx.dts   |   4 +
>  arch/arm/dts/tqma6ul-common.dtsi              | 191 ----------
>  arch/arm/dts/tqma6ulx-common.dtsi             |  28 --
>  arch/arm/mach-imx/Kconfig                     |   3 +
>  12 files changed, 72 insertions(+), 561 deletions(-)
>  delete mode 100644 arch/arm/dts/imx6ul-mba6ulx.dtsi
>  rename arch/arm/dts/{imx6ul-mba6ulx.dts => imx6ul-tqma6ul-common.dtsi} (96%)
>  create mode 100644 arch/arm/dts/imx6ul-tqma6ul2-mba6ulx.dts
>  create mode 100644 arch/arm/dts/imx6ul-tqma6ul2l-mba6ulx.dts
>  create mode 100644 arch/arm/dts/imx6ull-tqma6ull2-mba6ulx.dts
>  create mode 100644 arch/arm/dts/imx6ull-tqma6ull2l-mba6ulx.dts
>  delete mode 100644 arch/arm/dts/tqma6ul-common.dtsi
>  delete mode 100644 arch/arm/dts/tqma6ulx-common.dtsi
> 
> diff --git a/arch/arm/boards/tqma6ulx/board.c b/arch/arm/boards/tqma6ulx/board.c
> index be0abe443e..378cadc018 100644
> --- a/arch/arm/boards/tqma6ulx/board.c
> +++ b/arch/arm/boards/tqma6ulx/board.c
> @@ -40,7 +40,10 @@ static int mba6ulx_probe(struct device *dev)
>  }
>  
>  static const struct of_device_id mba6ulx_of_match[] = {
> -	{ .compatible = "tq,mba6ulx" },
> +	{ .compatible = "tq,imx6ul-tqma6ul2l" },
> +	{ .compatible = "tq,imx6ul-tqma6ul2" },
> +	{ .compatible = "tq,imx6ull-tqma6ull2" },
> +	{ .compatible = "tq,imx6ull-tqma6ull2l" },
>  	{ /* sentinel */ },
>  };
>  MODULE_DEVICE_TABLE(of, mba6ulx_of_match);
> @@ -51,3 +54,5 @@ static struct driver mba6ulx_board_driver = {
>  	.of_compatible = mba6ulx_of_match,
>  };
>  device_platform_driver(mba6ulx_board_driver);
> +
> +BAREBOX_DEEP_PROBE_ENABLE(mba6ulx_of_match);
> diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
> index 052471a99c..eff38c336a 100644
> --- a/arch/arm/boards/tqma6ulx/lowlevel.c
> +++ b/arch/arm/boards/tqma6ulx/lowlevel.c
> @@ -13,8 +13,13 @@
>  #include <mach/imx/esdctl.h>
>  #include <mach/imx/iomux-mx6ul.h>
>  #include <asm/cache.h>
> +#include <pbl/i2c.h>
> +#include <boards/tq/tq_eeprom.h>
>  
> -extern char __dtb_z_imx6ul_mba6ulx_start[];
> +extern char __dtb_z_imx6ul_tqma6ul2_mba6ulx_start[];
> +extern char __dtb_z_imx6ul_tqma6ul2l_mba6ulx_start[];
> +extern char __dtb_z_imx6ull_tqma6ull2_mba6ulx_start[];
> +extern char __dtb_z_imx6ull_tqma6ull2l_mba6ulx_start[];
>  
>  static void setup_uart(void)
>  {
> @@ -30,11 +35,47 @@ static void setup_uart(void)
>  
>  }
>  
> +static void *read_eeprom(void)
> +{
> +	struct pbl_i2c *i2c;
> +	struct tq_eeprom *eeprom;
> +	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
> +	void *fdt = __dtb_z_imx6ul_tqma6ul2l_mba6ulx_start;
> +
> +	writel(0x12, iomux + 0x0094);
> +	writel(0x0, iomux + 0x05bc);
> +	writel(0x1b8b0, iomux + 0x0320);
> +	writel(0x12, iomux + 0x0098);
> +	writel(0x0, iomux + 0x05c0);
> +	writel(0x1b8b0, iomux + 0x0324);

Could iomux_v3_setup_pad and pinctrl macros be used here instead?

> +
> +	i2c = imx6_i2c_early_init(IOMEM(MX6_I2C4_BASE_ADDR));
> +
> +	eeprom = pbl_tq_read_eeprom(i2c, 0x50, I2C_ADDR_16_BIT);
> +	if (!eeprom) {
> +		pr_err("Cannot read EEPROM\n");
> +		goto out;
> +	}
> +
> +	pr_info("Board: %s\n", eeprom->id);
> +
> +	if (!strcmp(eeprom->id, "TQMa6UL2L-AB.0202"))
> +		fdt = __dtb_z_imx6ul_tqma6ul2l_mba6ulx_start;
> +	else
> +		pr_err("Unknown board type\n");
> +out:
> +	return fdt;
> +}

[snip]

> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index f7b1d88dd6..d585aa0485 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -500,6 +500,9 @@ config MACH_TQMA6UL
>  	bool "TQ tqma6ul on mba6ulx"
>  	select ARCH_IMX6UL
>  	select ARM_USE_COMPRESSED_DTB
> +	select BOARD_TQ
> +	select I2C

Is I2C absolutely needed in barebox proper?

> +	select I2C_IMX_EARLY
>  
>  config MACH_VARISCITE_MX6
>  	bool "Variscite i.MX6 Quad SOM"

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



