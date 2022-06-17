Delivery-date: Fri, 17 Jun 2022 09:32:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o26TC-004x1c-I9
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 09:32:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o26TC-0007Q5-90
	for lore@pengutronix.de; Fri, 17 Jun 2022 09:32:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rkptio5r8MtbrPMWPMm1A9Ks8heLt4hvY5nRCWEobz4=; b=vKp73OiENEtJvwc5i9hwV0kBiR
	eAa8TtYHxjhkv4ALFORzxugoLtv0kVFgiD7jxFrCaWbAjiY+1v1cuvVUwBFPIS64DX219Ddgzj23S
	K0GrTrUueoPdGK4VOq4uvE0sftvQ42ChSY6la/Qwyl1XG6RI/lScLRB95v0yFbj2tbRb4mba+6l0e
	mKodrzfGmomrsyoz/PdmGNblm/t/vC1sL6Jj7AzMLfSFduUyUirSHRTmbRc//rrayVyxXWToiUe1B
	o9PspluTVj4Qw9+DjdYw/7Ee0jfN5MRNmokYUwrCEeBV/dPyeGVt1ocY4WmP0H4qj9h1nsjampWik
	yMEDZGag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26RS-005yED-EG; Fri, 17 Jun 2022 07:30:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26F2-005u9P-8O
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 07:18:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o26F0-0005AO-OP; Fri, 17 Jun 2022 09:18:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o26F0-0005PA-Fk; Fri, 17 Jun 2022 09:18:02 +0200
Date: Fri, 17 Jun 2022 09:18:02 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220617071802.GF1615@pengutronix.de>
References: <20220616140246.2191569-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220616140246.2191569-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_001804_351501_928DF1F0 
X-CRM114-Status: GOOD (  18.43  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX8MM: fix phy-reset gpio
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 16, 2022 at 04:02:45PM +0200, Marco Felsch wrote:
> Drop the Barebox local property since the upstream/linux device-tree is
> handling it now within the phy and we get an error:
> 
>    ERROR: gpiolib: _gpio_request: gpio-118 (ethernet-phy@0) status -16
>    ERROR: miibus0: failed to request reset gpio for: ethernet-phy@0
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/dts/imx8mm-evk.dts | 4 ----
>  1 file changed, 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mm-evk.dts b/arch/arm/dts/imx8mm-evk.dts
> index 304f150307..854e9db869 100644
> --- a/arch/arm/dts/imx8mm-evk.dts
> +++ b/arch/arm/dts/imx8mm-evk.dts
> @@ -24,10 +24,6 @@
>  	};
>  };
>  
> -&fec1 {
> -	phy-reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
> -};
> -
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


