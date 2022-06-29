Delivery-date: Wed, 29 Jun 2022 09:13:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6Rt6-000xga-94
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 09:13:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6Rt8-00046a-IE
	for lore@pengutronix.de; Wed, 29 Jun 2022 09:13:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pVHPm15cPtDQ9rXWJpPrd+zx/3m1cUYEdfi1lgW7wTs=; b=zGc7kyowXwfaFMWA4TrKKaB6lX
	c4ilgeAai7RZzn/U8HpQXijdgzL6bJwJe2+2g/3Fs0TRrk3rh9WW3dACgNGt2107RxrCHEgTWA4a9
	4i9zTj2rIVQuL8u1bTNAVzcXxZqElla69Rgfgz57ZiA8He88Tc/1AA6Zga96XYlQ7/g8KH+ia0ttM
	shDafORmUV1JUvXQqlD6Af2dRJhqzI6UnLKqM7gkqkLaEm9j1G3eh0vGG1/GVZAKYYD/58OhIxZcw
	7AN8YHceCCYzv3+YWvmk/mDS9EDJ+aNGkXJfXW411SJO46+vhFiTlReOEFHGouozHbpCrIvwa+7xu
	O3CpdrzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Rrz-00A1Wu-Qg; Wed, 29 Jun 2022 07:12:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Rrv-00A1W5-IJ
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 07:12:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6Rru-0003vl-BC; Wed, 29 Jun 2022 09:12:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6Rru-0002PM-2P; Wed, 29 Jun 2022 09:12:10 +0200
Date: Wed, 29 Jun 2022 09:12:10 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220629071210.GP19026@pengutronix.de>
References: <20220628061941.24199-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220628061941.24199-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_001211_642428_D1B008E1 
X-CRM114-Status: GOOD (  19.13  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: imx: src: Use postcore_platform_driver() macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 28, 2022 at 09:19:39AM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/mach-imx/src.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/src.c b/arch/arm/mach-imx/src.c
> index 8272d5b720..8366397e10 100644
> --- a/arch/arm/mach-imx/src.c
> +++ b/arch/arm/mach-imx/src.c
> @@ -43,9 +43,4 @@ static struct driver_d imx_src_reset_driver = {
>  	.probe	= imx_src_reset_probe,
>  	.of_compatible	= DRV_OF_COMPAT(imx_src_dt_ids),
>  };
> -
> -static int imx_src_reset_init(void)
> -{
> -	return platform_driver_register(&imx_src_reset_driver);
> -}
> -postcore_initcall(imx_src_reset_init);
> +postcore_platform_driver(imx_src_reset_driver);
> -- 
> 2.32.0
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


