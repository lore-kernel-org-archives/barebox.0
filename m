Delivery-date: Wed, 13 Apr 2022 15:56:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nedUA-000kI9-CY
	for lore@lore.pengutronix.de; Wed, 13 Apr 2022 15:56:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nedU7-0002pJ-RD
	for lore@pengutronix.de; Wed, 13 Apr 2022 15:56:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4gFmmfFRwL3VyfsmTPeYZ3jCGHjhbTEmvF+B3+ABns=; b=vLdQrSwVJl+rrH
	3iSHiOssju0jp2dUJv3DfqB8KA0Li0YOrHwprVbsJoRjWJNmQIVYUyAMLomlQVb6wzt+pvjGEXuWi
	F2TN53anxZrS05Vv/Ocgnc0oHKixfeu+EUX5+ztsiLIgfAFqM/wE3oJi9kYtpG06naEvxb10LsvlI
	26AIzx9KA+658UUecjJWK+1jKq8rOPLmJV9YHbwfCTI6Z5fRfGitgXdRDcByLbeG6IpFt7pBKyqFe
	uZtarzdrO2O2lBqP5dPWTzGLRSslkE/UUwBk96yPeu7ecVvkprdhzuYnN5YQHYcnka1dld47j56s3
	P8unGJgjKa86XRXMA8Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nedSe-001I4F-0y; Wed, 13 Apr 2022 13:55:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nedSZ-001I1p-Ur
 for barebox@lists.infradead.org; Wed, 13 Apr 2022 13:55:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nedSQ-0002Y9-Ud; Wed, 13 Apr 2022 15:54:55 +0200
Message-ID: <63ddfbdb-9d82-43fc-189d-d6b3b53e11f3@pengutronix.de>
Date: Wed, 13 Apr 2022 15:54:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org,
 Lucas Stach <lst@pengutronix.de>
References: <20220413123708.623736-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220413123708.623736-1-o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_065504_018251_5C009205 
X-CRM114-Status: GOOD (  18.80  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] net: designware: eqos: fix link speed configuration
 for speed < 1000
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Oleksij,

On 13.04.22 14:37, Oleksij Rempel wrote:
> Put phy_device_connect() after MAC/DMA reset, otherwise link speed
> configuration will be zeroed by the MAC/DMA reset. By an accident zero
> configuration equal to the speed 1000, so it was still working for many users.

This hunk used to be farther down, but Lucas moved it in
7c5c6561f0ca ("net: designware: eqos: attach PHY earlier").

I suspect your patch might break his hardware configuration.

Cheers,
Ahmad

> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/designware_eqos.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
> index 6b372e4274..d93cccd634 100644
> --- a/drivers/net/designware_eqos.c
> +++ b/drivers/net/designware_eqos.c
> @@ -390,11 +390,6 @@ static int eqos_start(struct eth_device *edev)
>  	int ret;
>  	int i;
>  
> -	ret = phy_device_connect(edev, &eqos->miibus, eqos->phy_addr,
> -				 eqos->ops->adjust_link, 0, eqos->interface);
> -	if (ret)
> -		return ret;
> -
>  	setbits_le32(&eqos->dma_regs->mode, EQOS_DMA_MODE_SWR);
>  
>  	ret = readl_poll_timeout(&eqos->dma_regs->mode, mode_set,
> @@ -405,6 +400,11 @@ static int eqos_start(struct eth_device *edev)
>  		return ret;
>  	}
>  
> +	ret = phy_device_connect(edev, &eqos->miibus, eqos->phy_addr,
> +				 eqos->ops->adjust_link, 0, eqos->interface);
> +	if (ret)
> +		return ret;
> +
>  	/* Reset above clears MAC address */
>  	eqos_set_ethaddr(edev, eqos->macaddr);
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

