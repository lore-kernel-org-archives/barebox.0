Delivery-date: Mon, 28 Feb 2022 18:13:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOjaM-00DSpj-T4
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 18:13:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOjaL-0008Q3-G9
	for lore@pengutronix.de; Mon, 28 Feb 2022 18:13:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdXT2lf7qyoZf6AB+Vv1PargZo2nLRWonIhmRiD8Ghs=; b=VUy9s2rcnxBj/y
	7OGHce+LLoWa+YZiKEd4gNRPnDx0CGPO7+zmi/Ql4XGGoGwQg9QcS1cb58uRa34gSxRwrr5f/3LLI
	QkfrP3PotvawOsxwHC2waNYEkAlfXz/I3ND2dppe5ZLgRk9+XKLKuwJ/tiOBldrbV+LmpqyJcXJ+9
	zZmqPb8wKk4wFPlptrDh67UxzqzwANlc9nv826jOhNMZuDiE5iz6GG7hZpIPHITpz1xK7f5ys7NPl
	HIvcfvu8HqSn1FbKG1oG4dzTJVyhAs66fHB+MndSd7kzFViYGsJFkD3VSZ7h8A/7ctYd8pE1Czy6k
	VwMvi0piTzxaZGjAfFBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOjZ2-00DUd6-DH; Mon, 28 Feb 2022 17:12:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOjYr-00DUau-T8
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 17:11:56 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nOjYq-0008Ae-Mt; Mon, 28 Feb 2022 18:11:48 +0100
Message-ID: <0a264b58-8b8c-a873-1ab0-4eccee0e6845@pengutronix.de>
Date: Mon, 28 Feb 2022 18:11:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Joacim Zetterling <joacim.zetterling@westermo.com>,
 barebox@lists.infradead.org
References: <20220228170328.248391-1-joacim.zetterling@westermo.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220228170328.248391-1-joacim.zetterling@westermo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_091149_995898_4FF84840 
X-CRM114-Status: GOOD (  23.04  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: arch: dts: qspi: Add QSPI support to the NXP
 IMX8MN-EVK board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.02.22 18:03, Joacim Zetterling wrote:
> Add QSPI support in the default config and DTS files for the
> NXP IMX8MN-EVK board. To be able to use it You also need the
> QSPI driver enabled.
> 
> Tested on the NXP IMX8MN-EVK board as well as on an IMX8MN
> custom bord supporting a QSPI flash. Tested with the memory
> dump command i.e. 'md -s /dev/m25p0'.
> 
> Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>

With below feedback addressed, Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

For reference, an equivalent patch has been submitted upstream as well:
https://lore.kernel.org/linux-arm-kernel/20220228132523.2679099-1-michael@walle.cc/

> ---
>  arch/arm/configs/imx_v8_defconfig |  1 +
>  arch/arm/dts/imx8mn-evk.dts       | 32 +++++++++++++++++++++++++++++++
>  2 files changed, 33 insertions(+)
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
> index 9fe24b3184f1..3d418f894283 100644
> --- a/arch/arm/dts/imx8mn-evk.dts
> +++ b/arch/arm/dts/imx8mn-evk.dts
> @@ -60,3 +60,35 @@
>  &ocotp {
>  	barebox,provide-mac-address = <&fec1 0x640>;
>  };
> +
> +&iomuxc {
> +	pinctrl-names = "default";

This line should be dropped.

> +
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
> +	system_flash: mt25ql01g@0 {

Can you rename to flash@0? That way we avoid breakage when upstream
merges the patch.

> +		reg = <0>;
> +		compatible = "jedec,spi-nor";
> +		spi-max-frequency = <80000000>;

Can you test with 166000000? That way we can just drop this change
again with a future DT update without change in functionality.

> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};
> +};
> +


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

