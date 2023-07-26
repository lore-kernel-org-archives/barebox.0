Delivery-date: Wed, 26 Jul 2023 12:09:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qObSa-00AfMs-3x
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 12:09:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qObSX-0001gm-Lk
	for lore@pengutronix.de; Wed, 26 Jul 2023 12:09:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j+5t6YnRSJtIy/mIQgCZs2bMXoiEZIUcleUfDlnFkr0=; b=F15pWp8jd4lN3xu4+Rk1WwYBCZ
	H78BnsZYrrNMoqY4Bw2yClFOMmTR6SHrSTqgv3SVWlnXB6rpoES0KpSipxR3/oZsY/OtNEE2J0zXm
	osrlWhgJzkP1eeyGqyhBZvT9g5RDY5rspoPyJLfqQHGQJ5wzSlKuDkk6xS4f8fop4ipCeYyJUcfVC
	9H7VGVXvREcK79kfbmrMJTTPg1u1iBvDvVLlIPbAGtytk4tHHzis2+OU+MsSuroC7QRYib1D7/0wu
	WD195z5UaqMqvf8DJyKojvotRw+k79UraiKbG2SEtD1JVEZK5m1S52vPFYP5gdqM9vfbsNQ8Lah/B
	tjxjt7qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qObRK-009rZs-0z;
	Wed, 26 Jul 2023 10:08:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qObRH-009rZ0-1O
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 10:08:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qObRD-0001Rn-Qy; Wed, 26 Jul 2023 12:08:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qObRD-0007aA-KI; Wed, 26 Jul 2023 12:08:11 +0200
Date: Wed, 26 Jul 2023 12:08:11 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230726100811.GI18491@pengutronix.de>
References: <20230721110744.3699054-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230721110744.3699054-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_030815_471159_F821EB42 
X-CRM114-Status: GOOD (  25.07  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] net: ifup: check for ctrl+c during ifup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 21, 2023 at 01:07:43PM +0200, Ahmad Fatoum wrote:
> When global.net.server is set, barebox will attempt to bring up all
> interfaces on ifup -a1 to see which interface can resolve it.
> 
> That can take a while and there's no way to abort that, so stick in a
> ctrlc(), so user can change their mind (and e.g. remove
> global.net.server, so ifup -a1 takes first interface that has link up).
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  net/ifup.c | 24 ++++++++++++++++--------
>  1 file changed, 16 insertions(+), 8 deletions(-)
> 

Applied, thanks

Sascha

> diff --git a/net/ifup.c b/net/ifup.c
> index 64298b44ebf3..993d2a115fda 100644
> --- a/net/ifup.c
> +++ b/net/ifup.c
> @@ -276,7 +276,7 @@ static bool ifup_edev_need_conf(struct eth_device *edev)
>  		edev->global_mode != ETH_MODE_DISABLED;
>  }
>  
> -static void __ifup_all_parallel(unsigned flags)
> +static int __ifup_all_parallel(unsigned flags)
>  {
>  	struct eth_device *edev;
>  	unsigned netdev_count = 0;
> @@ -292,6 +292,9 @@ static void __ifup_all_parallel(unsigned flags)
>  	start = get_time_ns();
>  	while (netdev_count && !is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
>  		for_each_netdev(edev) {
> +			if (ctrlc())
> +				return -EINTR;
> +
>  			if (!ifup_edev_need_conf(edev))
>  				continue;
>  
> @@ -306,21 +309,28 @@ static void __ifup_all_parallel(unsigned flags)
>  			netdev_count--;
>  
>  			if ((flags & IFUP_FLAG_UNTIL_NET_SERVER) && net_get_server())
> -				return;
> +				return 0;
>  		}
>  	}
> +
> +	return 0;
>  }
>  
> -static void __ifup_all_sequence(unsigned flags)
> +static int __ifup_all_sequence(unsigned flags)
>  {
>  	struct eth_device *edev;
>  
>  	for_each_netdev(edev) {
> +		if (ctrlc())
> +			return -EINTR;
> +
>  		ifup_edev(edev, flags);
>  
>  		if ((flags & IFUP_FLAG_UNTIL_NET_SERVER) && net_get_server())
> -			return;
> +			return 0;
>  	}
> +
> +	return 0;
>  }
>  
>  int ifup_all(unsigned flags)
> @@ -358,11 +368,9 @@ int ifup_all(unsigned flags)
>  		flags &= ~IFUP_FLAG_UNTIL_NET_SERVER;
>  
>  	if (flags & IFUP_FLAG_PARALLEL)
> -		__ifup_all_parallel(flags);
> +		return __ifup_all_parallel(flags);
>  	else
> -		__ifup_all_sequence(flags);
> -
> -	return 0;
> +		return __ifup_all_sequence(flags);
>  }
>  
>  void ifdown_all(void)
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


