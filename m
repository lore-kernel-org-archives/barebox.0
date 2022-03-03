Delivery-date: Thu, 03 Mar 2022 11:01:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiGq-00GOYO-D7
	for lore@lore.pengutronix.de; Thu, 03 Mar 2022 11:01:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiGo-0008Ib-OA
	for lore@pengutronix.de; Thu, 03 Mar 2022 11:01:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y4oS6tbWM82oRlx/rSivKbBoQxW2Cd7tZoU2dgxmx+Q=; b=WeyzAFZVPtOtUlRSUpzFa8/fsa
	asf/xWEXeYuwlG6/GEseoE7Ke3TaDva/8pc3/k9yRp45gE0SS9I2qNvBtlMmM/GtNNslEUtaqCgxN
	73UeGHpAcxEOGKo6d/SLUE15s2dKnViGRTWeG70DPc5A/K8pZTBSWr5xfXKzg2KnEqBXfy+AwAWmL
	WraQAMa8IEmJjLaVddKkI2RqosLAAAhfgM845Mci1Fkfa9I3vvAfN112GJdYlKQ+2XdBRQOO0mAJo
	F9ANjFffJ+fH4dj0FS/e5D2mNeJvoX0TyDGAAkrf11RIqAEe+RHuQTMAMCt2WtXMdpzZeO0Cqbycp
	0GfSiDjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPiFY-005yXO-Ak; Thu, 03 Mar 2022 09:59:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPiFT-005yWv-6J
 for barebox@lists.infradead.org; Thu, 03 Mar 2022 09:59:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiFR-0007nM-Vh; Thu, 03 Mar 2022 10:59:50 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiFR-0001Bg-DL; Thu, 03 Mar 2022 10:59:49 +0100
Date: Thu, 3 Mar 2022 10:59:49 +0100
To: Joacim Zetterling <joacim.zetterling@westermo.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20220303095949.GA19585@pengutronix.de>
References: <20220301132308.343496-1-joacim.zetterling@westermo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220301132308.343496-1-joacim.zetterling@westermo.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:59:41 up 82 days, 18:45, 83 users,  load average: 0.17, 0.20, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_015951_262215_EF00F29F 
X-CRM114-Status: GOOD (  26.23  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] ARM: arch: dts: qspi: Add QSPI config to the NXP
 IMX8MN-EVK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 01, 2022 at 02:23:08PM +0100, Joacim Zetterling wrote:
> Add QSPI support in the default config and DTS files for the
> NXP IMX8MN-EVK board. To be able to use it You also need the
> QSPI driver enabled.
> 
> Tested on the NXP IMX8MN-EVK board as well as on an IMX8MN
> custom bord supporting a QSPI flash. Tested with the memory
> dump command i.e. 'md -s /dev/m25p0'.
> 
> Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
> ---

Applied, thanks

Sascha

> 
> Changes v2:
>   - Removed the "default" pinctrl names from iomuxc
>   - Renamed the flexspi device name
> 
>  arch/arm/configs/imx_v8_defconfig |  1 +
>  arch/arm/dts/imx8mn-evk.dts       | 30 ++++++++++++++++++++++++++++++
>  2 files changed, 31 insertions(+)
> 
> diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
> index b28c868a99bf..fe6398cc873d 100644
> --- a/arch/arm/configs/imx_v8_defconfig
> +++ b/arch/arm/configs/imx_v8_defconfig
> @@ -99,6 +99,7 @@ CONFIG_NET_USB=y
>  CONFIG_NET_USB_ASIX=y
>  CONFIG_NET_USB_SMSC95XX=y
>  CONFIG_DRIVER_SPI_IMX=y
> +CONFIG_SPI_NXP_FLEXSPI=y
>  CONFIG_I2C=y
>  CONFIG_I2C_IMX=y
>  CONFIG_MTD=y
> diff --git a/arch/arm/dts/imx8mn-evk.dts b/arch/arm/dts/imx8mn-evk.dts
> index 9fe24b3184f1..b8e7e1acf539 100644
> --- a/arch/arm/dts/imx8mn-evk.dts
> +++ b/arch/arm/dts/imx8mn-evk.dts
> @@ -60,3 +60,33 @@
>  &ocotp {
>  	barebox,provide-mac-address = <&fec1 0x640>;
>  };
> +
> +&iomuxc {
> +	pinctrl_flexspi0: flexspi0grp {
> +		fsl,pins = <
> +		MX8MN_IOMUXC_NAND_ALE_QSPI_A_SCLK	0x1c4
> +		MX8MN_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B	0x84
> +		MX8MN_IOMUXC_NAND_DATA00_QSPI_A_DATA0	0x84
> +		MX8MN_IOMUXC_NAND_DATA01_QSPI_A_DATA1	0x84
> +		MX8MN_IOMUXC_NAND_DATA02_QSPI_A_DATA2	0x84
> +		MX8MN_IOMUXC_NAND_DATA03_QSPI_A_DATA3	0x84
> +		>;
> +	};
> +};
> +
> +&flexspi {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexspi0>;
> +
> +	system_flash: flash@0 {
> +		reg = <0>;
> +		compatible = "jedec,spi-nor";
> +		spi-max-frequency = <80000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};
> +};
> +
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

