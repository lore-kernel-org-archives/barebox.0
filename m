Delivery-date: Wed, 20 Apr 2022 08:47:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nh47Y-008qB0-FZ
	for lore@lore.pengutronix.de; Wed, 20 Apr 2022 08:47:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nh47V-0002QP-U5
	for lore@pengutronix.de; Wed, 20 Apr 2022 08:47:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IkV91zpE5TIrhpSwqHpWFq8W4Vm1etuBXqNY/iyypTI=; b=sRcNWOYTo7my+YwKCHyKvojVyR
	sEG0QhEHQ8hYF0RJgq7rILGjCB1Jp42O6cbIymcfNgwPCID5rCi/93xRRFcPeJVmTAfYksJ5QMrW4
	gMyDmee5nEnZVX7FTt4q2MAU0kKMFDJbYB8YmLGSffhoohubGuuALtZC5l9eTcE5isEP1EFjS15uv
	P9fab+iNSCmuDuOSvYhMg+C7N7L9HSVr/l0NZUBdgijLJ6LVwb7kBO+hQQ3IssiBBJEl1ca1je40W
	iQHtOyKV8N0uqlnDJeFVTf18DSCiGT2Ljh6hAEC4EP4b85hiVQowwu+6kFRO6qsPK6jTQE+TlImrM
	Lg5Be0Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh46K-007byd-Gk; Wed, 20 Apr 2022 06:46:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh46F-007bxr-Kg
 for barebox@lists.infradead.org; Wed, 20 Apr 2022 06:46:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nh46E-00028s-EO; Wed, 20 Apr 2022 08:46:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nh46E-0004QT-5I; Wed, 20 Apr 2022 08:46:02 +0200
Date: Wed, 20 Apr 2022 08:46:02 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220420064602.GR4012@pengutronix.de>
References: <20220419093606.59318-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220419093606.59318-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:45:53 up 20 days, 19:15, 57 users,  load average: 0.12, 0.14, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_234603_737467_1BC5E7B1 
X-CRM114-Status: GOOD (  23.16  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] GPIO: clps711x: Simplify initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 19, 2022 at 12:36:06PM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/gpio/gpio-clps711x.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/gpio/gpio-clps711x.c b/drivers/gpio/gpio-clps711x.c
> index 67bce79bc3..a1965b33e4 100644
> --- a/drivers/gpio/gpio-clps711x.c
> +++ b/drivers/gpio/gpio-clps711x.c
> @@ -25,17 +25,15 @@ static int clps711x_gpio_probe(struct device_d *dev)
>  		return PTR_ERR(iores);
>  	dat = IOMEM(iores->start);
>  
> +	iores = dev_request_mem_resource(dev, 1);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +
>  	switch (id) {
>  	case 3:
> -		iores = dev_request_mem_resource(dev, 1);
> -		if (IS_ERR(iores))
> -			return PTR_ERR(iores);
>  		dir_inv = IOMEM(iores->start);
>  		break;
>  	default:
> -		iores = dev_request_mem_resource(dev, 1);
> -		if (IS_ERR(iores))
> -			return PTR_ERR(iores);
>  		dir = IOMEM(iores->start);
>  		break;
>  	}
> -- 
> 2.32.0
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

