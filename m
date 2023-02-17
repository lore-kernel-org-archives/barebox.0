Delivery-date: Fri, 17 Feb 2023 15:17:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT1Yd-00AB6N-JO
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 15:17:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT1Yc-0004ps-Ay
	for lore@pengutronix.de; Fri, 17 Feb 2023 15:17:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VSY5PajXYt65VczZQAI7wiwRyY3Y6xJxB/fdbKD6jag=; b=32FnKgjy9/tdezN0HsIx3TOsY0
	+l1oFh7Pik/TEnYjULrSoCuMVLHH/dp3HQ9uMl2hGUy3GMzhd2AjB+8+dbyYK9FrJn74rGA+2O1LL
	8UubqINDflynQFH/t0u8qlyuRZ3ZHwqr/E8XS9c4k3AgLlnH8rBXPB8y+uELvng0voshFX/AU1UrJ
	2qBlM1BN0xRH4jdlY0YlP0q/qD4SZJ7sYGelAFRc+mJOd2UjqGyP+XnqeY4Cko+FVcoYpBzd1SkJh
	0ifZAZ9X39vommdLi1bT2zVPHx+BCMzYOYTjwEDxlHhYDdkdhkUV/oxiSW4fuUfIhmVxW8UThJqkA
	z5T5aY9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT1XL-00EUV0-LM; Fri, 17 Feb 2023 14:16:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT1Tq-00ET6q-3J
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 14:12:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pT1To-0003o6-Or; Fri, 17 Feb 2023 15:12:52 +0100
Message-ID: <f0169ae5-22aa-6acb-d020-e3b10912d8f9@pengutronix.de>
Date: Fri, 17 Feb 2023 15:12:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Maxim Kochetkov <fido_max@inbox.ru>, barebox@lists.infradead.org
Cc: pmamonov@gmail.com, a.kuyan@yadro.com, p.mamonov@yadro.com
References: <20230217140501.56964-1-fido_max@inbox.ru>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230217140501.56964-1-fido_max@inbox.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_061254_206471_DCF7B7D9 
X-CRM114-Status: GOOD (  21.16  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/1] serial: ns16550: move iomem/ioport init after
 clock init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.02.23 15:05, Maxim Kochetkov wrote:
> While probing ns16550 clock provider may be unavailable and
> clk_get() returns -EPROBE_DEFER. Next ns16550_probe() attempts
> will be failed too because of dev_request_mem_resource() has already
> acquired this resource for the device and returns -EBUSY.
> So move resource allocation just after clock init. It will let proper
> probe for defered clocks on boards with deep probe disabled.
> 
> Signed-off-by: Maxim Kochetkov <fido_max@inbox.ru>
> ---
>  drivers/serial/serial_ns16550.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index 16f3576645..bbf783f662 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -479,13 +479,6 @@ static int ns16550_probe(struct device *dev)
>  
>  	priv = xzalloc(sizeof(*priv));
>  
> -	ret = ns16550_init_iomem(dev, priv);
> -	if (ret)
> -		ret = ns16550_init_ioport(dev, priv);
> -
> -	if (ret)
> -		return ret;
> -
>  	if (plat)
>  		priv->plat = *plat;
>  	else
> @@ -511,6 +504,13 @@ static int ns16550_probe(struct device *dev)
>  		goto err;
>  	}
>  
> +	ret = ns16550_init_iomem(dev, priv);
> +	if (ret)
> +		ret = ns16550_init_ioport(dev, priv);
> +
> +	if (ret)
> +		return ret;

Sorry should've looked closer :/
This should be goto err like in the code above as not to leak
memory.

> +
>  	cdev = &priv->cdev;
>  	cdev->dev = dev;
>  	cdev->tstc = ns16550_tstc;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



