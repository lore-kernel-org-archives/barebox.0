Delivery-date: Mon, 24 Oct 2022 10:26:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omsmX-000RRN-LW
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 10:26:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omsmV-0004HP-Ur
	for lore@pengutronix.de; Mon, 24 Oct 2022 10:26:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mw/AhcNkvY9fTzacMw7xxO8gpfnvu4QlWgDnWCcEe9E=; b=oZ+R0s2DSMtvrBK3jbADUmNmwY
	iZtXpFrvQsGWxPZe9bJZLNrWRbI92O5s9hrTYerOw9ELFCR0h0QCDM33H7CdKjvNHxxRCP44zAg8S
	uopBg3Mz+H7jJvkB+Wwtv4AJDfCbJdGe3LYG2avc3Rf7wEsB+BrG+qZs6nZvyxJ33N5HdV15FAB7d
	4V7mU7mmAfJurly2862k4TqhXwt4hZh5+wRHegAp/GvLUP+ncdhJCY4fE+sEBYUF/FWifk+8UnV/o
	B66ESmAY8T0H2oyyMXhNPj1C0Bw8ApKrXB48N2B0xD54X/meonQtpiLtw+ngUEuHaI7TqKskNLjRl
	q9No5YrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omslC-0004ep-Q1; Mon, 24 Oct 2022 08:24:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omsl7-0004e9-9o
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 08:24:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omsl5-000437-JN; Mon, 24 Oct 2022 10:24:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omsl5-00055s-8e; Mon, 24 Oct 2022 10:24:31 +0200
Date: Mon, 24 Oct 2022 10:24:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Dominik Haller <d.haller@phytec.de>
Cc: barebox@lists.infradead.org, upstream@phytec.de
Message-ID: <20221024082431.GH6702@pengutronix.de>
References: <20221020144112.52506-1-d.haller@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221020144112.52506-1-d.haller@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_012433_677760_D721BA5E 
X-CRM114-Status: GOOD (  20.21  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: configs: Remove NS16550_OMAP_EXTENSIONS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Oct 20, 2022 at 04:41:12PM +0200, Dominik Haller wrote:
> Config NS16550_OMAP_EXTENSIONS has been removed a while ago in
> commit 11a1f28cbf22 ("serial: Kconfig: Remove DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS option").
> 
> Remove it from the defconfigs too.
> 
> Signed-off-by: Dominik Haller <d.haller@phytec.de>
> ---
>  arch/arm/configs/am335x_mlo_defconfig                         | 1 -
>  arch/arm/configs/am35xx_pfc200_xload_defconfig                | 1 -
>  arch/arm/configs/archosg9_defconfig                           | 1 -
>  arch/arm/configs/archosg9_xload_defconfig                     | 1 -
>  arch/arm/configs/omap3430_sdp3430_per_uart_defconfig          | 1 -
>  arch/arm/configs/omap3530_beagle_defconfig                    | 1 -
>  arch/arm/configs/omap3530_beagle_per_uart_defconfig           | 1 -
>  arch/arm/configs/omap3530_beagle_xload_defconfig              | 1 -
>  arch/arm/configs/omap3_evm_defconfig                          | 1 -
>  arch/arm/configs/omap_defconfig                               | 1 -
>  arch/arm/configs/panda_defconfig                              | 1 -
>  arch/arm/configs/panda_xload_defconfig                        | 1 -
>  arch/arm/configs/phytec-phycard-omap3-xload_defconfig         | 1 -
>  arch/arm/configs/phytec-phycard-omap3_defconfig               | 1 -
>  arch/arm/configs/phytec-phycard-omap4-xload_defconfig         | 1 -
>  arch/arm/configs/phytec-phycard-omap4_defconfig               | 1 -
>  arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig  | 1 -
>  arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig | 1 -
>  arch/arm/configs/phytec-phycore-omap4460_defconfig            | 1 -
>  19 files changed, 19 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
> index 83bb20e4b50c..57602ba30918 100644
> --- a/arch/arm/configs/am335x_mlo_defconfig
> +++ b/arch/arm/configs/am335x_mlo_defconfig
> @@ -21,7 +21,6 @@ CONFIG_SHELL_NONE=y
>  CONFIG_CONSOLE_ACTIVATE_NONE=y
>  CONFIG_OFDEVICE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  CONFIG_DRIVER_SPI_OMAP3=y
>  CONFIG_MTD=y
>  # CONFIG_MTD_WRITE is not set
> diff --git a/arch/arm/configs/am35xx_pfc200_xload_defconfig b/arch/arm/configs/am35xx_pfc200_xload_defconfig
> index da55382f0566..710e39ff61da 100644
> --- a/arch/arm/configs/am35xx_pfc200_xload_defconfig
> +++ b/arch/arm/configs/am35xx_pfc200_xload_defconfig
> @@ -17,7 +17,6 @@ CONFIG_SHELL_NONE=y
>  # CONFIG_TIMESTAMP is not set
>  CONFIG_CONSOLE_SIMPLE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  # CONFIG_SPI is not set
>  CONFIG_MTD=y
>  # CONFIG_MTD_WRITE is not set
> diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
> index aafd849185c7..dd509fca7266 100644
> --- a/arch/arm/configs/archosg9_defconfig
> +++ b/arch/arm/configs/archosg9_defconfig
> @@ -67,7 +67,6 @@ CONFIG_CMD_TIME=y
>  CONFIG_NET=y
>  CONFIG_NET_NETCONSOLE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
>  CONFIG_NET_USB=y
>  CONFIG_NET_USB_SMSC95XX=y
> diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
> index 27f471cf0bbb..b6a0475d40fb 100644
> --- a/arch/arm/configs/archosg9_xload_defconfig
> +++ b/arch/arm/configs/archosg9_xload_defconfig
> @@ -14,7 +14,6 @@ CONFIG_SHELL_NONE=y
>  # CONFIG_TIMESTAMP is not set
>  CONFIG_CONSOLE_SIMPLE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
>  # CONFIG_SPI is not set
>  CONFIG_MCI=y
> diff --git a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
> index d43355cdf1e3..646a392b6b56 100644
> --- a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
> +++ b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
> @@ -23,5 +23,4 @@ CONFIG_CMD_LOADB=y
>  # CONFIG_CMD_CLEAR is not set
>  # CONFIG_CMD_ECHO is not set
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  # CONFIG_SPI is not set
> diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
> index 5d09abf61550..e959bdfde304 100644
> --- a/arch/arm/configs/omap3530_beagle_defconfig
> +++ b/arch/arm/configs/omap3530_beagle_defconfig
> @@ -72,7 +72,6 @@ CONFIG_NET=y
>  CONFIG_NET_NFS=y
>  CONFIG_NET_NETCONSOLE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  CONFIG_NET_USB=y
>  CONFIG_NET_USB_ASIX=y
>  CONFIG_NET_USB_SMSC95XX=y
> diff --git a/arch/arm/configs/omap3530_beagle_per_uart_defconfig b/arch/arm/configs/omap3530_beagle_per_uart_defconfig
> index e4112b49107f..2439bd955ed5 100644
> --- a/arch/arm/configs/omap3530_beagle_per_uart_defconfig
> +++ b/arch/arm/configs/omap3530_beagle_per_uart_defconfig
> @@ -22,5 +22,4 @@ CONFIG_CMD_LOADB=y
>  # CONFIG_CMD_CLEAR is not set
>  # CONFIG_CMD_ECHO is not set
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  # CONFIG_SPI is not set
> diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
> index e9484ed852bb..0a47479f1892 100644
> --- a/arch/arm/configs/omap3530_beagle_xload_defconfig
> +++ b/arch/arm/configs/omap3530_beagle_xload_defconfig
> @@ -17,7 +17,6 @@ CONFIG_SHELL_NONE=y
>  # CONFIG_TIMESTAMP is not set
>  CONFIG_CONSOLE_SIMPLE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  # CONFIG_SPI is not set
>  CONFIG_MTD=y
>  # CONFIG_MTD_WRITE is not set
> diff --git a/arch/arm/configs/omap3_evm_defconfig b/arch/arm/configs/omap3_evm_defconfig
> index 973acbff683d..8c5df029a75a 100644
> --- a/arch/arm/configs/omap3_evm_defconfig
> +++ b/arch/arm/configs/omap3_evm_defconfig
> @@ -21,5 +21,4 @@ CONFIG_CMD_RESET=y
>  # CONFIG_CMD_RM is not set
>  # CONFIG_CMD_RMDIR is not set
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  # CONFIG_SPI is not set
> diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
> index ae4d1a67da3a..433d9bdd7d09 100644
> --- a/arch/arm/configs/omap_defconfig
> +++ b/arch/arm/configs/omap_defconfig
> @@ -100,7 +100,6 @@ CONFIG_NET_NFS=y
>  CONFIG_NET_NETCONSOLE=y
>  CONFIG_OF_BAREBOX_DRIVERS=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  CONFIG_DRIVER_NET_CPSW=y
>  CONFIG_DRIVER_NET_DAVINCI_EMAC=y
>  CONFIG_MICREL_PHY=y
> diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
> index 9c1efe168a1c..b199e7990bfe 100644
> --- a/arch/arm/configs/panda_defconfig
> +++ b/arch/arm/configs/panda_defconfig
> @@ -62,7 +62,6 @@ CONFIG_CMD_TIME=y
>  CONFIG_NET=y
>  CONFIG_NET_NETCONSOLE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  CONFIG_NET_USB=y
>  CONFIG_NET_USB_SMSC95XX=y
>  # CONFIG_SPI is not set
> diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
> index e3d87c42dd53..bc33882c855a 100644
> --- a/arch/arm/configs/panda_xload_defconfig
> +++ b/arch/arm/configs/panda_xload_defconfig
> @@ -12,7 +12,6 @@ CONFIG_SHELL_NONE=y
>  # CONFIG_TIMESTAMP is not set
>  CONFIG_CONSOLE_SIMPLE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  # CONFIG_SPI is not set
>  CONFIG_MCI=y
>  CONFIG_MCI_STARTUP=y
> diff --git a/arch/arm/configs/phytec-phycard-omap3-xload_defconfig b/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
> index 6eab808f7c07..26a539f7f784 100644
> --- a/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
> +++ b/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
> @@ -17,7 +17,6 @@ CONFIG_SHELL_NONE=y
>  # CONFIG_TIMESTAMP is not set
>  CONFIG_CONSOLE_SIMPLE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  # CONFIG_SPI is not set
>  CONFIG_MTD=y
>  # CONFIG_MTD_WRITE is not set
> diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
> index 6cc1c1e80b3f..a9abf12a138f 100644
> --- a/arch/arm/configs/phytec-phycard-omap3_defconfig
> +++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
> @@ -54,7 +54,6 @@ CONFIG_NET_NFS=y
>  CONFIG_NET_NETCONSOLE=y
>  CONFIG_NET_RESOLV=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  CONFIG_DRIVER_NET_SMC911X=y
>  # CONFIG_SPI is not set
>  CONFIG_MTD=y
> diff --git a/arch/arm/configs/phytec-phycard-omap4-xload_defconfig b/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
> index af3ada634375..a1859140db0d 100644
> --- a/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
> +++ b/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
> @@ -13,7 +13,6 @@ CONFIG_SHELL_NONE=y
>  # CONFIG_TIMESTAMP is not set
>  CONFIG_CONSOLE_SIMPLE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  # CONFIG_SPI is not set
>  CONFIG_MTD=y
>  # CONFIG_MTD_WRITE is not set
> diff --git a/arch/arm/configs/phytec-phycard-omap4_defconfig b/arch/arm/configs/phytec-phycard-omap4_defconfig
> index 2f3970725dce..a0bb846a6d59 100644
> --- a/arch/arm/configs/phytec-phycard-omap4_defconfig
> +++ b/arch/arm/configs/phytec-phycard-omap4_defconfig
> @@ -36,7 +36,6 @@ CONFIG_CMD_GPIO=y
>  CONFIG_NET=y
>  CONFIG_NET_NFS=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  CONFIG_DRIVER_NET_KS8851_MLL=y
>  # CONFIG_SPI is not set
>  CONFIG_MTD=y
> diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
> index 61f85c837f89..19365a6fcd92 100644
> --- a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
> +++ b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
> @@ -15,7 +15,6 @@ CONFIG_SHELL_NONE=y
>  # CONFIG_TIMESTAMP is not set
>  CONFIG_CONSOLE_SIMPLE=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  # CONFIG_SPI is not set
>  CONFIG_MCI=y
>  CONFIG_MCI_STARTUP=y
> diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
> index 77f124b33f14..14cab44b5dce 100644
> --- a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
> +++ b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
> @@ -16,7 +16,6 @@ CONFIG_SHELL_NONE=y
>  CONFIG_CONSOLE_SIMPLE=y
>  CONFIG_PARTITION=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  # CONFIG_SPI is not set
>  CONFIG_MTD=y
>  # CONFIG_MTD_WRITE is not set
> diff --git a/arch/arm/configs/phytec-phycore-omap4460_defconfig b/arch/arm/configs/phytec-phycore-omap4460_defconfig
> index e65a76570b3f..7d5369cb23be 100644
> --- a/arch/arm/configs/phytec-phycore-omap4460_defconfig
> +++ b/arch/arm/configs/phytec-phycore-omap4460_defconfig
> @@ -49,7 +49,6 @@ CONFIG_CMD_TIME=y
>  CONFIG_NET=y
>  CONFIG_NET_NFS=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
> -CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
>  CONFIG_DRIVER_NET_SMC911X=y
>  CONFIG_SMSC_PHY=y
>  # CONFIG_SPI is not set
> -- 
> 2.25.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


