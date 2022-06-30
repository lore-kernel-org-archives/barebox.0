Delivery-date: Thu, 30 Jun 2022 09:25:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6oYF-001nyC-1h
	for lore@lore.pengutronix.de; Thu, 30 Jun 2022 09:25:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6oYH-0002XH-24
	for lore@pengutronix.de; Thu, 30 Jun 2022 09:25:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hbSUxxYvd/gNBlNKBjnLGuSH49F+adnDiaL6v+SSfAE=; b=3tir3jnN0r+NDpJUgmaIEgoQdW
	w6nLFoM6sQRTe5mcL57fiD0SG/1vousaTOnd70n+0cde/7WMv7KBzn9Ol8C3XVndCKVjDRfQc+NwG
	YzpQajcPfHMmUpSW1FHd13SH1mWfzAVSGLbLCClnjXn1ZbGv2fTdch8ItVfhANHTEvAWwxdFzhxD2
	uk8qgiECsBDLcpgeL20sFl7unjmLSEzKvWrNshYaamblEey+wXMmpgwm7dMHP+QGOycwVH41Lilkx
	1hFIpl2/whIi6fh8CBeBhfOsoPiFq8NGvoZECh/w1nsZJeTZbjIVk/l2/Z/YIaoTIavqWjkid3xpj
	ENt8K/gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6oWD-00FlDW-I5; Thu, 30 Jun 2022 07:23:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6oW8-00FlBT-4H
	for barebox@lists.infradead.org; Thu, 30 Jun 2022 07:23:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6oW1-0002PM-2V; Thu, 30 Jun 2022 09:23:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6oW0-0003Ir-Q4; Thu, 30 Jun 2022 09:23:04 +0200
Date: Thu, 30 Jun 2022 09:23:04 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220630072304.GT19026@pengutronix.de>
References: <20220629085628.106086-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220629085628.106086-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_002312_210778_FB811B17 
X-CRM114-Status: GOOD (  21.51  )
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
Subject: Re: [PATCH v2 1/2] watchdog: imxwd: Convert error messages in .probe
 to dev_err_probe()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 29, 2022 at 10:56:27AM +0200, Uwe Kleine-König wrote:
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/watchdog/imxwd.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index 31ea388c2cf2..e9856c94c2fc 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -239,10 +239,9 @@ static int imx_wd_probe(struct device_d *dev)
>  
>  	priv = xzalloc(sizeof(struct imx_wd));
>  	iores = dev_request_mem_resource(dev, 0);
> -	if (IS_ERR(iores)) {
> -		dev_err(dev, "could not get memory region\n");
> -		return PTR_ERR(iores);
> -	}
> +	if (IS_ERR(iores))
> +		return dev_err_probe(dev, PTR_ERR(iores),
> +				     "could not get memory region\n");
>  
>  	clk = clk_get(dev, NULL);
>  	if (IS_ERR(clk))
> @@ -279,7 +278,8 @@ static int imx_wd_probe(struct device_d *dev)
>  	if (priv->ops->init) {
>  		ret = priv->ops->init(priv);
>  		if (ret) {
> -			dev_err(dev, "Failed to init watchdog device %d\n", ret);
> +			dev_err_probe(dev, ret,
> +				      "Failed to init watchdog device\n");
>  			goto error_unregister;
>  		}
>  	}
> -- 
> 2.36.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


