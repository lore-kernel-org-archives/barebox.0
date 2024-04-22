Delivery-date: Mon, 22 Apr 2024 10:55:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rypSf-00BJy7-07
	for lore@lore.pengutronix.de;
	Mon, 22 Apr 2024 10:55:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rypSc-0001I7-6w
	for lore@pengutronix.de; Mon, 22 Apr 2024 10:55:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iTI0uA7k8EQSYaYg4Ps8MDYpHbQ8jBA0sEjedbfvxm0=; b=guAx4dEMH2j3tkp6tG+g3nH3mo
	w3quGnAVRrtFgdGxvaPBDuQPOJldrlrVqL9xyfYNFRkzpp1hpEAUsm/IvP/PdzXwJXd9GQFIvtd0d
	uyM2XyuUJ+fYMXEi9ktnixCvsJsFv5qw0IO1tS7CB6qIMBbztxcJmZEKjgj5LWt+SEmzZWEcUCkfZ
	g+sWVngnB9dRcksw86VILOzCLATkTku3Lw7pfH8jXiWD9q6c83ggIlRvWTZDTHbkSQwLn2SlRh/74
	qmUfto+qqP8zIelYkS/OtSimRBey0UedYWx5QId26nx/HE2pNUrokxeZUWq/0ZvIW7QBMdmtEgpn9
	yM+MuMWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rypRr-0000000CnR0-0OoM;
	Mon, 22 Apr 2024 08:54:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rypRp-0000000CnPU-0LGV
	for barebox@bombadil.infradead.org;
	Mon, 22 Apr 2024 08:54:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=iTI0uA7k8EQSYaYg4Ps8MDYpHbQ8jBA0sEjedbfvxm0=; b=ZoMMGovxQzc32fA5+avHJNoOZg
	80nNnj7aldfRnZI/jWW3c42BOozwJpH8FzEqctO28XIVRAKjYyvDJs/15I7jUl8nHA487EwXIR0YQ
	23otpVUgo17gfPROa6XBQp0vfTbEG6oqVkoSPdtBINh8BCWeuoDCeLgACt0n67OHd8c3Fp7D3sRv/
	eR6W1JzeREgrCenhyEPtavn5KG+Ts0dhrko8qf7hlOYqLIkUyk/SaSMFzyRvWx7KZahMaRpXK499L
	0K/TD/TnJAjpNnb0w0DQLTHk0qh500zHaO/lKZRzwi9lkZ4tay0DLvUhGn2Ea/9kOu6gqnLynbmhp
	2Sd72fZQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rypRl-0000000Db9c-3O2l
	for barebox@lists.infradead.org;
	Mon, 22 Apr 2024 08:54:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1rypRl-0000NI-9r; Mon, 22 Apr 2024 10:54:45 +0200
Message-ID: <15119e931e142564427d88a2504d894996166e92.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Mon, 22 Apr 2024 10:54:44 +0200
In-Reply-To: <20240419061331.2592739-6-a.fatoum@pengutronix.de>
References: <20240419061331.2592739-1-a.fatoum@pengutronix.de>
	 <20240419061331.2592739-6-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_095446_088538_1B2ADFF4 
X-CRM114-Status: GOOD (  14.72  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] ARM: dts: i.MX8MP: Add optional nominal drive mode
 DTSI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Freitag, dem 19.04.2024 um 08:13 +0200 schrieb Ahmad Fatoum:
> Unlike the i.MX8MM and i.MX8MN SoCs added earlier, the device tree for
> the i.MX8MP configures some clocks at frequencies that are only
> validated for overdrive mode, i.e. when VDD_SOC is 950 mV.
>=20
> Boards may want to run their SoC at the lower voltage of 850 mV though
> to reduce heat generation and power usage. For this to work, clock rates
> need to adhere to the limits of the nominal drive mode.
>=20
> Add an optional DTSI file which can be included by various boards to run
> in this mode.
>=20
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp-nominal.dtsi | 51 ++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 arch/arm/dts/imx8mp-nominal.dtsi
>=20
> diff --git a/arch/arm/dts/imx8mp-nominal.dtsi b/arch/arm/dts/imx8mp-nomin=
al.dtsi
> new file mode 100644
> index 000000000000..a9f46503f656
> --- /dev/null
> +++ b/arch/arm/dts/imx8mp-nominal.dtsi
> @@ -0,0 +1,51 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +&clk {
> +	assigned-clocks =3D <&clk IMX8MP_CLK_A53_SRC>,
> +			  <&clk IMX8MP_CLK_A53_CORE>,
> +			  <&clk IMX8MP_SYS_PLL3>,
> +			  <&clk IMX8MP_CLK_NOC>,
> +			  <&clk IMX8MP_CLK_NOC_IO>,
> +			  <&clk IMX8MP_CLK_GIC>;
> +	assigned-clock-parents =3D <&clk IMX8MP_SYS_PLL1_800M>,
> +				 <&clk IMX8MP_ARM_PLL_OUT>,
> +				 <0>,
> +				 <&clk IMX8MP_SYS_PLL1_800M>,
> +				 <&clk IMX8MP_SYS_PLL3_OUT>,
> +				 <&clk IMX8MP_SYS_PLL1_800M>;
> +	assigned-clock-rates =3D <0>, <0>,
> +			       <600000000>,
> +			       <800000000>,
> +			       <600000000>,
> +			       <400000000>;
> +};
> +
> +&pgc_hsiomix {
> +	assigned-clocks =3D <&clk IMX8MP_CLK_HSIO_AXI>;
> +	assigned-clock-parents =3D <&clk IMX8MP_SYS_PLL1_800M>;
> +	assigned-clock-rates =3D <400000000>;
> +};
> +
> +&pgc_gpumix {
> +	assigned-clocks =3D <&clk IMX8MP_GPU_PLL>,
> +			  <&clk IMX8MP_CLK_GPU_AXI>,
> +			  <&clk IMX8MP_CLK_GPU_AHB>;
> +	assigned-clock-parents =3D <0>,
> +				 <&clk IMX8MP_GPU_PLL_OUT>,
> +				 <&clk IMX8MP_GPU_PLL_OUT>;
> +	assigned-clock-rates =3D <600000000>, <600000000>, <300000000>;

Use SYS_PLL3 as the parent clock, instead of GPU PLL.

> +};
> +
> +&media_blk_ctrl {
> +	assigned-clocks =3D <&clk IMX8MP_CLK_MEDIA_AXI>,
> +			  <&clk IMX8MP_CLK_MEDIA_APB>,
> +			  <&clk IMX8MP_CLK_MEDIA_DISP1_PIX>,
> +			  <&clk IMX8MP_CLK_MEDIA_DISP2_PIX>,
> +			  <&clk IMX8MP_VIDEO_PLL1>;
> +	assigned-clock-parents =3D <&clk IMX8MP_SYS_PLL1_800M>,
> +				 <&clk IMX8MP_SYS_PLL1_800M>,
> +				 <&clk IMX8MP_VIDEO_PLL1_OUT>,
> +				 <&clk IMX8MP_VIDEO_PLL1_OUT>;
> +	assigned-clock-rates =3D <400000000>, <200000000>,
> +			       <0>, <0>, <1039500000>;
> +};



