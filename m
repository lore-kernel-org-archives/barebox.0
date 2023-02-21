Delivery-date: Tue, 21 Feb 2023 11:29:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUPtk-00DnCJ-5D
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 11:29:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUPti-0001gy-Vz
	for lore@pengutronix.de; Tue, 21 Feb 2023 11:29:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XXQ11j/XYbPFOSIKoyDahZWi7N0O4fd/zkBBnWQam/I=; b=m9gXG65P/7aaY1lPb6iktfJDcT
	gmmf7CC/Hk97yGzHEWx56zj7t5UQ9dJX6F6DB2eM/x9g4aGGACcQSHb+GOQ9RJ88VP3Z8hcyIFB/D
	e06l9E7U7a163kdI3lGsNvGT7GAv+WlXS2hCVak+rTjLfT42bS43/VM2nRTqtP1qaeKw2ubOXFW/I
	jniTuMkBm+4jQUsrb6hg8R+pufD/4XGyYjcPKII+DMc/MjBm0w/nUTyCLtM8B1itDyDBFKPksSgvo
	IC0KMCtFgc84+95Nl4pElx8Gng/ydbgnNRM/ZQ69Y+1Qd5+qimp1UsgPHkXtaKBPY67ILEeMWfel4
	KJ3tTClg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUPsW-007Nll-Eg; Tue, 21 Feb 2023 10:28:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUPsR-007Nkt-Qk
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 10:28:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUPsQ-0001bB-Hw; Tue, 21 Feb 2023 11:28:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUPsP-000531-Ir; Tue, 21 Feb 2023 11:28:01 +0100
Date: Tue, 21 Feb 2023 11:28:01 +0100
To: Maxim Kochetkov <fido_max@inbox.ru>
Cc: barebox@lists.infradead.org, pmamonov@gmail.com, a.kuyan@yadro.com,
	p.mamonov@yadro.com, Maxim Kochetkov <m.kochetkov@yadro.com>
Message-ID: <20230221102801.GF10447@pengutronix.de>
References: <20230217142006.60228-1-fido_max@inbox.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230217142006.60228-1-fido_max@inbox.ru>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_022803_881597_10C51F22 
X-CRM114-Status: GOOD (  21.86  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 1/1] serial: ns16550: move iomem/ioport init after
 clock init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 17, 2023 at 05:20:06PM +0300, Maxim Kochetkov wrote:
> While probing ns16550 clock provider may be unavailable and
> clk_get() returns -EPROBE_DEFER. Next ns16550_probe() attempts
> will be failed too because of dev_request_mem_resource() has already
> acquired this resource for the device and returns -EBUSY.
> So move resource allocation just after clock init. It will let proper
> probe for defered clocks on boards with deep probe disabled.
> 
> Signed-off-by: Maxim Kochetkov <m.kochetkov@yadro.com>
> Signed-off-by: Maxim Kochetkov <fido_max@inbox.ru>
> ---
>  drivers/serial/serial_ns16550.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index 16f3576645..9ce4feed43 100644
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
> +		goto err;
> +
>  	cdev = &priv->cdev;
>  	cdev->dev = dev;
>  	cdev->tstc = ns16550_tstc;
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


