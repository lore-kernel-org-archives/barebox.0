Delivery-date: Mon, 25 Nov 2024 09:55:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUs5-0008PS-09
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:55:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUs5-0005Jb-0v
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:55:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H5XT+veLbK/zNOzMqxMTDPztytF43FBD+a4EN8ogX1Q=; b=BwVaSvH1xS4qqGlAtkJ6uZIWqv
	0yJjmtKf9lDYShNb84etrGvD3sZ6bfA1n25q/Z9PcpzE0xwgo+MvuPQSacOOnWDopRExibc5Jmizw
	K7rs0qpN7JHsF2zmEBlNd3BhAQJSZSzWem4KU+m0ZaxWbCNUjFmJGJEggQzprKYM9aF84vritj7zk
	9Rts26ThvHWDgoIv1iCVc7R16xVG/eNLc7Jq+6K+exMqmBf3URTDToLd6XzCSF9eYBW2ikfH9/Om8
	O0WTxwtj/2KeE0mEIA8pNUBezQbxc8BsFhL/9BogJJQRYGkmdoOjc3qhTnORCK2QmAANwEWv60lUe
	cZjVvCGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUri-00000007Sxh-011A;
	Mon, 25 Nov 2024 08:54:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUrg-00000007Swo-0eJA
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:54:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tFUre-0005D4-UF; Mon, 25 Nov 2024 09:54:38 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tFUrd-0003Al-39;
	Mon, 25 Nov 2024 09:54:38 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tFUre-00EbA3-28;
	Mon, 25 Nov 2024 09:54:38 +0100
Date: Mon, 25 Nov 2024 09:54:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Sven =?iso-8859-15?Q?P=FCschel?= <s.pueschel@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <ore@pengutronix.de>,
	Ulrich Oelmann <uol@pengutronix.de>
Message-ID: <Z0Q7Tsd59M7MrpQP@pengutronix.de>
References: <20241118164344.48806-1-s.pueschel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241118164344.48806-1-s.pueschel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_005440_191117_DF8A1165 
X-CRM114-Status: GOOD (  19.44  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP: imx8mp-skov: skip sd/sdio detection
 on the eMMC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 18, 2024 at 05:43:44PM +0100, Sven Püschel wrote:
> Skip sd/sdio detection on the eMMC to reduce the detection time by
> about 270ms. This change is already part of the kernel dtsi file
> (see  dts/src/arm64/freescale/imx8mp-skov-reva.dtsi).

Oleksij, Ulrich,

Wouldn't it make sense to use the upstream dts?

Sascha

> 
> Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp-skov.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
> index 0c0ada1a5c..5271c9deab 100644
> --- a/arch/arm/dts/imx8mp-skov.dts
> +++ b/arch/arm/dts/imx8mp-skov.dts
> @@ -425,6 +425,8 @@ &usdhc3 {
>  	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
>  	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
>  	bus-width = <8>;
> +	no-sd;
> +	no-sdio;
>  	non-removable;
>  	status = "okay";
>  };
> -- 
> 2.47.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


