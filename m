Delivery-date: Mon, 08 Aug 2022 15:13:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2Zn-00GCxo-W7
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 15:13:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2Zo-0000ib-Li
	for lore@pengutronix.de; Mon, 08 Aug 2022 15:13:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RzVkvx+EeSLtdQQpZLLhzf3cmE+EYqivq2cSDoyKRJA=; b=GFZr3afkT6+Cywi662sENo/EtV
	LuS93yMlb4tExZCn/yVWd3w7vaV4pjpPw7TutCoAfUI9YkYhFF+tbov0ij+V5PDP1ZgLZltXRdNDY
	qoDVPuaSvHxkOxWDso9Lkhowsb8hR2csy6VKk++bVqxUJerjGfsziOXVIw/h/0ubS+3dr58FDbfxD
	CMTHIcSOPljWBmJGRX9RlpIJsijJ72P1DVAxuoQ8AzZCHwLuQWjjbRwiPwtgRg48Q6su+5ApcHOiT
	14zTYNiWfN5eLOTXX7eqb+wFv0X6HXtnRpMmM0PE4vxhDWUFJmYIkSOhlivfC3XSxjmlKdSsuaW+i
	zwc9cNxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2YX-00DzT9-7j; Mon, 08 Aug 2022 13:12:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2YO-00DzPC-B2
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 13:12:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2YL-0000Rk-00; Mon, 08 Aug 2022 15:12:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2YK-0003Hk-NJ; Mon, 08 Aug 2022 15:12:16 +0200
Date: Mon, 8 Aug 2022 15:12:16 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808131216.GN31528@pengutronix.de>
References: <20220730094955.1768207-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220730094955.1768207-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_061220_418197_2C39B955 
X-CRM114-Status: GOOD (  19.81  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] driver: probe: report power domain attach failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Jul 30, 2022 at 11:49:55AM +0200, Ahmad Fatoum wrote:
> Power domains are attached before driver probe and non-existence of
> power domain driver leads to permanent probe deferral without any
> pointer as to why. Add a status message to make debugging easier.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/base/platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> index 2fb73917b43c..c0ea2746b388 100644
> --- a/drivers/base/platform.c
> +++ b/drivers/base/platform.c
> @@ -17,7 +17,7 @@ static int platform_probe(struct device_d *dev)
>  
>  	ret = genpd_dev_pm_attach(dev);
>  	if (ret < 0)
> -		return ret;
> +		return dev_err_probe(dev, ret, "power domain attach failed\n");
>  
>  	return dev->driver->probe(dev);
>  }
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


