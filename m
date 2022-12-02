Delivery-date: Fri, 02 Dec 2022 09:55:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11pl-008L22-9L
	for lore@lore.pengutronix.de; Fri, 02 Dec 2022 09:55:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11pk-0003Lf-Gp
	for lore@pengutronix.de; Fri, 02 Dec 2022 09:55:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z1ANh0C89TxwdcgSQbj8cWHwpLdUWkQViehxG+44lJo=; b=At1Yl79yBlQO1zc88yqBa1jE0j
	S3g/qMBPHmDC1z4Ohm07Zg/3r63ItH0O1fkd7+7HfaUgX9OlBcdKsPG9ODrdexzNn2tp7KjXxe+lR
	Bbcoa92wmg3Po3nwqVY4pSXytNM8gt0X0DZUtagzgLTe1KnrcaenoQ71YRf9/XVO7zgonEvNQv6ba
	6/v5vGL8EU5PJ+wY5MlZ1LBvUA6n/oQDHFmxuCkvc7sdJQCiKSNfGm+hY3XHWdz9bOS+2PtXjofkF
	YgN1ieK1hwABpExHMbcAcCMl/S4NhKPni5PjZy5z8ez2WoUeiICLhIFwk4u+8k0U+foiFwM5iZ4zx
	So/06swg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11oZ-00EhrM-23; Fri, 02 Dec 2022 08:54:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11oS-00EhkM-Hn
	for barebox@lists.infradead.org; Fri, 02 Dec 2022 08:54:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11oQ-0002xN-Qj; Fri, 02 Dec 2022 09:54:26 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11oQ-0006NQ-KU; Fri, 02 Dec 2022 09:54:26 +0100
Date: Fri, 2 Dec 2022 09:54:26 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Message-ID: <20221202085426.GN29728@pengutronix.de>
References: <20221201133846.639078-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221201133846.639078-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_005428_682296_0B80C4D2 
X-CRM114-Status: GOOD (  20.90  )
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
Subject: Re: [PATCH] i2c: bcm283x: fix use of unregistered device in debug
 print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 01, 2022 at 02:38:46PM +0100, Ahmad Fatoum wrote:
> bcm283x_i2c_init is called before the i2c adapter device is allocated
> and thus these message are prefixed with "<NULL>:". Use the hardware
> device instead to fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Cc: Daniel Brát <danek.brat@gmail.com>
> ---
>  drivers/i2c/busses/i2c-bcm283x.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/i2c/busses/i2c-bcm283x.c b/drivers/i2c/busses/i2c-bcm283x.c
> index fdba3b91bd4c..d9bbc17b1368 100644
> --- a/drivers/i2c/busses/i2c-bcm283x.c
> +++ b/drivers/i2c/busses/i2c-bcm283x.c
> @@ -74,7 +74,7 @@ static inline struct bcm283x_i2c *to_bcm283x_i2c(struct i2c_adapter *adapter)
>  
>  static inline int bcm283x_i2c_init(struct bcm283x_i2c *bcm_i2c)
>  {
> -	struct device_d *dev = &bcm_i2c->adapter.dev;
> +	struct device_d *dev = bcm_i2c->adapter.dev.parent;
>  	u32 mclk_rate, cdiv, redl, fedl;
>  
>  	/*
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


