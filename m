Delivery-date: Fri, 23 Dec 2022 10:10:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8e4Q-005u5R-1K
	for lore@lore.pengutronix.de; Fri, 23 Dec 2022 10:10:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8e4N-0004vP-Hs
	for lore@pengutronix.de; Fri, 23 Dec 2022 10:10:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U4COs2TcEqMVG0ljmmEgv2RgPYZBiiOGtmXxIkzSVOM=; b=x+nkTVmFtBe/lK87nxMN/Uj9zE
	/eq+oFWzfNu77jnXKM0geDUAHZzcoprzttviIe/5qqCoia45R++LoJ4StyAOZA9m4Z9diz1aMQTqG
	D/bpO/18BrWrdNsxGUTFBcdZrGZvQElK+6hc4wG3vTFIFOAgbycIHwhV8CXjauQR89EYeRkb+mBiH
	HzWVFP7Z7gp+ssD/O47R/XdOpQlZ61n7vlyHFwFsKYev2TERxTs/g6gbfobhIDfNfuvuj/EBR1+Kr
	z4u9Ph222Vd44+S/2Z218EeDANKha3PPnoM7qjs8Yp76GEInS84am3rr4s1Ktmy10dfPmt2e4na56
	ScIH02Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8e34-005Xoq-IS; Fri, 23 Dec 2022 09:09:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8e2k-005Xgn-7O
	for barebox@lists.infradead.org; Fri, 23 Dec 2022 09:08:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p8e2i-0004eD-Lk; Fri, 23 Dec 2022 10:08:40 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p8e2i-0000xj-9Y; Fri, 23 Dec 2022 10:08:40 +0100
Date: Fri, 23 Dec 2022 10:08:40 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Leif Middelschulte <leif.middelschulte@klsmartin.com>,
	uol@pengutronix.de, ore@pengutronix.de,
	=?utf-8?B?U8O4cmVu?= Andersen <san@skov.dk>
Message-ID: <20221223090840.o4yg7sezgej6zpjz@pengutronix.de>
References: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
 <20221222141201.3087192-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221222141201.3087192-5-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_010842_304987_0F633FF5 
X-CRM114-Status: GOOD (  21.59  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/6] ARM: i.MX6: skov: fix LVDS deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-12-22, Ahmad Fatoum wrote:
> With deep probe, barebox will have registered most drivers by the time
> it walks the device tree and will then keep probing devices on demand.
> 
> This simplifies the common case of devices having dependencies on each
> other, but on the other hand expects board code to be deep probe aware.
> 
> The Skov board code already takes care to explicitly probe the GPIO
> controllers it requires, but it also optionally enables and registers
> devices that were initially disabled in the device tree.
> 
> It's paramount that devices are only registered _after_ the relevant
> device tree parts are rewritten. This was currently not accounted for,
> which led to LDB device being probed before its child lvds-channel node
> was enabled: We thus ended up with a LDB device, what the driver
> couldn't do anything with:
> 
>   mode_name: invalid:0 (type: enum)
> 
> Fixes: 31d2289da2f3 ("ARM: boards: skov-imx6: start using deep-probe")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  arch/arm/boards/skov-imx6/board.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
> index 7ddc6e937b0b..8f4d7efe4278 100644
> --- a/arch/arm/boards/skov-imx6/board.c
> +++ b/arch/arm/boards/skov-imx6/board.c
> @@ -474,14 +474,15 @@ static void skov_init_ldb(void)
>  		return;
>  	}
>  
> -	of_device_enable_and_register(ldb);
> -
> -	/* ... as well as its channel 0 */
> +	/* First enable channel 0, prior to enabling parent */
>  	chan = of_find_node_by_name_address(ldb, "lvds-channel@0");
>  	if (chan)
>  		of_device_enable(chan);
>  	else
>  		dev_err(skov_priv->dev, "Cannot find \"lvds-channel@0\" node\n");
> +
> +	/* Now probe will see the expected device tree */
> +	of_device_enable_and_register(ldb);
>  }
>  
>  /*
> -- 
> 2.30.2
> 
> 
> 


