Delivery-date: Mon, 12 Sep 2022 10:51:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfAZ-0022QJ-LS
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 10:51:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfAY-000775-7Z
	for lore@pengutronix.de; Mon, 12 Sep 2022 10:51:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dAbw5fyeTd03EzEa0b8SjomZ5e+FJcP3ThlEgY8Ptuo=; b=v/uBSudrTc0O0AkKiL2TswWY4N
	BiwTOOMGJ/XJQC7Wh7943hlclKWeBQeONo8VTZKxUIJwEbdFSD9TsGd6jfnDTdH7BIKtnUjjBdkkX
	oLRSacZ0VN+4xHJ/Fn7J62frehDIgbo6uIHfbYc8D7FZLhIb0AFSkX7oZ+y4p32hRAc8vtVGr6wfu
	W3zYubAmXRfEt+D0PSYu++Y8b0IK5kJcbKYWAxkA8xce3GLb3ZzS/NYw5mZgz/Lw6UGqSkCxTJhN9
	WxMbzkeDYDMxm+jDVNw4L2NgnZK1z6tDyU3qU1rS43QqhepzcJaVjXzeYAN0Gt5hNjGKzzfNM7+h3
	JJMiW2Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf9D-007yBM-T6; Mon, 12 Sep 2022 08:50:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf91-007y6b-24
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 08:50:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXf8z-0006cw-G6; Mon, 12 Sep 2022 10:50:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXf8z-0004TZ-4t; Mon, 12 Sep 2022 10:50:17 +0200
Date: Mon, 12 Sep 2022 10:50:17 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220912085017.GG24324@pengutronix.de>
References: <20220905115944.1911301-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905115944.1911301-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_015019_275167_B50DA38F 
X-CRM114-Status: GOOD (  22.77  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] of: platform: propagate
 of_devices_ensure_probed_by(name|property) errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 01:59:44PM +0200, Ahmad Fatoum wrote:
> The of_devices_ensure_probed_by functions are expected to return an
> error code after iterating over all matching devices should any device
> have failed its of_device_ensure_probed. Doing this unearths one common
> failure: a matching node has status = "disabled". These will have
> of_device_ensure_probed return -ENODEV, which makes sense for users
> wanting to ensure a specific device is probed, but doesn't when
> iterating over multiple nodes.
> 
> We already have of_devices_ensure_probed_by_dev_id, which does an early
> of_device_is_available check, so do likewise for the other to
> ensure_probed_by_* functions.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/platform.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index dc784ea8e550..a9a5d4c2daf2 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -525,12 +525,15 @@ int of_devices_ensure_probed_by_property(const char *property_name)
>  		return 0;
>  
>  	for_each_node_with_property(node, property_name) {
> -		ret = of_device_ensure_probed(node);
> +		if (!of_device_is_available(node))
> +			continue;
> +
> +		err = of_device_ensure_probed(node);
>  		if (err)
>  			ret = err;
>  	}
>  
> -	return 0;
> +	return ret;
>  }
>  EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_property);
>  
> @@ -543,12 +546,15 @@ int of_devices_ensure_probed_by_name(const char *name)
>  		return 0;
>  
>  	for_each_node_by_name(node, name) {
> -		ret = of_device_ensure_probed(node);
> +		if (!of_device_is_available(node))
> +			continue;
> +
> +		err = of_device_ensure_probed(node);
>  		if (err)
>  			ret = err;
>  	}
>  
> -	return 0;
> +	return ret;
>  }
>  EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_name);
>  
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


