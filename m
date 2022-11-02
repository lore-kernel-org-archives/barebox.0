Delivery-date: Wed, 02 Nov 2022 09:15:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8ty-00C1ha-SW
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 09:15:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8tw-0002CP-SX
	for lore@pengutronix.de; Wed, 02 Nov 2022 09:15:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w7hw+qQ0TWvkA9nHQyUhx4BUcL+uvdwaIF8FQGdKQjA=; b=LvAfyqGlCs23zkO7MCJFxfGSIv
	SthNbkRyRoqTTNgpuXStpM1f2CwGjT5nyW4C3AhjjC4BfH0DzrrZxZSukwK99v0PLi1g1rKnmX4bY
	FAyE3ogYNWpaIUfCsYLuAxK8f2kabK9+78ZDzIAa77jliIzeLW2OPdoGLBDh0sb1aI2qNIws3Wgcc
	k9vH2Xm9wCFiX0TgtQtnYmMOiR/H7zlYIDWHdyojYnI8wi+n5yatFwEXmluPKHpjxQqjWEiDATxub
	nVKLZ7xGijh4ckPTPoIzwMdUTia9oPq1GtxAEZ8GgSoqYVHXNlz+eYRD7EdTJT+qoTQFbbYjiMh5j
	q7Ww4rOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8si-008n7v-RU; Wed, 02 Nov 2022 08:13:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8sd-008n6j-Bx
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 08:13:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8sc-00025b-24; Wed, 02 Nov 2022 09:13:46 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oq8sb-00080Y-Pz; Wed, 02 Nov 2022 09:13:45 +0100
Date: Wed, 2 Nov 2022 09:13:45 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221102081345.GG3143@pengutronix.de>
References: <20221101133050.687403-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221101133050.687403-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_011347_443345_6C19BF87 
X-CRM114-Status: GOOD (  25.79  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP: increase off-on delay on the SD Vcc
 regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Nov 01, 2022 at 02:30:50PM +0100, Marco Felsch wrote:
> This commit is required to fix the SD card detection mechanism. Without
> this commit the SD card (auto-)detection fails when booted from this
> sd-card:
> 
>   mmc1: Query interface conditions failed: -110
>   mmc1: SD operation condition set timed out
> 
> The commit is ported from U-Boot:
> 
> | commit 247bbeb74c186963d9365db3136d0285618bd9a7
> | Author: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
> | Date:   Sat Dec 5 17:29:17 2020 +0000
> |
> |     ARM: dts: imx8m: increase off-on delay on the SD Vcc regulator
> |
> |     Some SD Card controller and power circuitry has increased capacitance,
> |     which keeps the internal logic remains powered after regulator is switch
> |     off. This is generally the case when card is switched to SD104 mode,
> |     where a power cycle should be performed. In case if the card internal
> |     logic remains powered, it causes a subsequent failure of mode
> |     transition, effectively leading to failed enumeration.
> |
> |     Introduce a delay of 20 msec in order to provide a possibility for
> |     internal card circuitry to drain voltages and perform a power cycle
> |     correctly.
> |
> |     Similar fix is done in commit c49d0ac38a76 ("ARM: dts: rmobile: Increase
> |     off-on delay on the SD Vcc regulator") targeted Renesas SOCs.
> |
> |     Signed-off-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
> |     Cc: Stefano Babic <sbabic@denx.de>
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp-evk.dts | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
> index 3264ade4b8..77b438287c 100644
> --- a/arch/arm/dts/imx8mp-evk.dts
> +++ b/arch/arm/dts/imx8mp-evk.dts
> @@ -35,6 +35,10 @@
>  	reset-deassert-us = <100000>;
>  };
>  
> +&reg_usdhc2_vmmc {
> +	off-on-delay-us = <20000>;
> +};
> +
>  &usdhc2 {
>  	#address-cells = <1>;
>  	#size-cells = <1>;
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


