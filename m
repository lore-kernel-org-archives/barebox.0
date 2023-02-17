Delivery-date: Fri, 17 Feb 2023 10:04:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSwf4-00A0JX-Ib
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 10:04:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSwf3-0002Hg-EA
	for lore@pengutronix.de; Fri, 17 Feb 2023 10:04:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9eR4C+dl+o662na98ixw3qAfCG5PbANTI3jio5hD2uY=; b=qFljM1cHhkXtSrPI7i2yxlw9K9
	nKROzTRCJ4efdqHk9jsdvwv6qRRnnGUz/x53BxwGWx3imen2YdOdGz4BfnZIh8sb34sdfZjb30lEM
	HVVOJueI4mZAttQ769lgsn032ns4V78BTEvhqKr8szPk2Zm0phRbN5wCwdaZfir8poqV9VR5780TK
	pp+1fULfy0QWq7gTdq2DzIUXiUWH2+JjGSP4lL+8hDenZMk0zNa//HPY2xnCEunvEEcqjh/6uKK4u
	2EuzUiKMrrLju3MM7si6gnodc7gvrrhs6QTiwdlq53kSSXnl3c7jLBCKDDql1PKNkSe9SZI+6Ft17
	YOe4aqGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSwdl-00DOxL-Ex; Fri, 17 Feb 2023 09:02:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSwdh-00DOvQ-Bm
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 09:02:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pSwdg-0001vl-0k; Fri, 17 Feb 2023 10:02:44 +0100
Message-ID: <4073a83d-e7b8-0965-b44b-ad1005b800c7@pengutronix.de>
Date: Fri, 17 Feb 2023 10:02:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Maxim Kochetkov <fido_max@inbox.ru>, barebox@lists.infradead.org
Cc: pmamonov@gmail.com, a.kuyan@yadro.com, p.mamonov@yadro.com,
 Maxim Kochetkov <m.kochetkov@yadro.com>
References: <20230217073157.21573-1-fido_max@inbox.ru>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230217073157.21573-1-fido_max@inbox.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_010245_433706_D7D097B2 
X-CRM114-Status: GOOD (  14.22  )
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
Subject: Re: [PATCH 1/1] serial: ns16550: move iomem/ioport init after clock
 init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Maxim,

On 17.02.23 08:31, Maxim Kochetkov wrote:
> -	ret = ns16550_init_iomem(dev, priv);
> -	if (ret)
> -		ret = ns16550_init_ioport(dev, priv);
> -
>  	if (ret)
>  		return ret;

ret is now uninitialized here.

>  
> @@ -511,6 +507,10 @@ static int ns16550_probe(struct device *dev)
>  		goto err;
>  	}
>  
> +	ret = ns16550_init_iomem(dev, priv);
> +	if (ret)
> +		ret = ns16550_init_ioport(dev, priv);

second ret is never checked.

If you move the second if (ret), patch looks ok to me.
jfyi, If you enable deep probe for your board/platform, clk_get()
would automatically probe the clock driver if unavailable, so you
shouldn't ever see -EPROBE_DEFER.

Cheers,
Ahmad



> +
>  	cdev = &priv->cdev;
>  	cdev->dev = dev;
>  	cdev->tstc = ns16550_tstc;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



