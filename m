Delivery-date: Tue, 05 Jul 2022 10:21:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8doX-006LMi-E5
	for lore@lore.pengutronix.de; Tue, 05 Jul 2022 10:21:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8doZ-0004Y2-HF
	for lore@pengutronix.de; Tue, 05 Jul 2022 10:21:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C/t99hi6y6mkp4PZFpwAZiEdTpzUnenr8QsazHoPVzs=; b=XKxvXJRaaWmOENfx7UbEzblaAD
	qb96EolpxgSGcVusVDv49HelESbvzMh9/JvAuJZggS5+OhFI7qcWScG1sr98KLDuRMea4L2kVQGRQ
	Xy4HzVJUfal6kKhqKZUQ7cv9pF9sUB6JPWKBllNWyVpaasJlM1tRyeHCuplmejvLq81xQ7n4sF+T1
	cjpNGU/vCxok3ezgohymQG+aaxYCNdaDBzGlK09BwCSeB5Zgp3DDsdqaQKWsc0598KE0mAXMnTlCF
	QopM5ElMHpcJ9fiM6apa1wok4TZ7VLps+aO4lv4/Pll/cDcT6EhO1DW12Tu0iHNZBQEi2lLBB0StY
	+2o26I8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8dnH-00G8Tc-5a; Tue, 05 Jul 2022 08:20:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8dnC-00G8Qn-RL
	for barebox@lists.infradead.org; Tue, 05 Jul 2022 08:20:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o8dnB-0004BO-Kh; Tue, 05 Jul 2022 10:20:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o8dnB-0006C5-Bo; Tue, 05 Jul 2022 10:20:21 +0200
Date: Tue, 5 Jul 2022 10:20:21 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220705082021.GB5208@pengutronix.de>
References: <20220704164846.589359-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220704164846.589359-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_012022_934226_791E4BFD 
X-CRM114-Status: GOOD (  19.14  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MN: fix phy-reset gpio
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 04, 2022 at 06:48:46PM +0200, Marco Felsch wrote:
> Drop the Barebox local 'phy-reset-gpios' property since the
> upstream/linux device-tree is handling it now within the ethernet-phy
> node and we get an error:
> 
> gpiolib: _gpio_request: gpio-118 (ethernet-phy@0) status -16
> miibus0: failed to request reset gpio for: ethernet-phy@0
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/dts/imx8mn-evk.dts | 4 ----
>  1 file changed, 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mn-evk.dts b/arch/arm/dts/imx8mn-evk.dts
> index b8e7e1acf5..8a0e92b299 100644
> --- a/arch/arm/dts/imx8mn-evk.dts
> +++ b/arch/arm/dts/imx8mn-evk.dts
> @@ -23,10 +23,6 @@
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


