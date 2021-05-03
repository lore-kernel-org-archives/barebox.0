Delivery-date: Mon, 03 May 2021 12:40:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldVzd-0002rT-Lo
	for lore@lore.pengutronix.de; Mon, 03 May 2021 12:40:01 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldVzc-0008UA-QQ
	for lore@pengutronix.de; Mon, 03 May 2021 12:40:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K9BSQH2DAmuPV018MqGaz3HKFEM6d6RRCTxIggmq8yk=; b=Cxd3w8pgE3cBPEkYoZf72EIsV
	jDjfwDb1fvwwSFoO9qpJtKAuURyOb7q2gyGNdZifnJayw5gC5kIUgQnH63erU8W/SJdwHAVoOTAkj
	qy9q+HwXJlGwlddNWLS/z5ByxZQk5ES7Z2SdT/5/VMohK5TyRD8NeBlvReb9xVN/zTui90YoGNPYa
	EJv3s5pbjU09yrYhIa61Mnl9abyz97hn8eYZp2YiUeGvbWhyv2Sbire6ju+zhNapsN1zcZzR8bnIy
	dnTTNtgRKX6SYNjPxNF9KoOLYoUDsax0d7O8NfWoKv/gh2BusiHBYr5L8Av1lUvQidDM/ZQ+n9GBV
	B+DUD+FXA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldVyk-00DflB-Qu; Mon, 03 May 2021 10:39:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldVye-00Dfkj-KK
 for barebox@desiato.infradead.org; Mon, 03 May 2021 10:39:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=fAnG44q/y2PA4IauESA8Dv7pI4qGWpU5QXEPERoRaNI=; b=ChxILu8S9U3EBcf/eU1eG+HZdU
 Lc1rN+9LVZY/LZ6DGZWYBZj4SGMVl6UygfG2iethA1mmOgahcf5BRNPNthukOIllt8PzGlGJJlBTw
 kbwzE+6ovTYrT8vyySMRhYvq1D3HcoFnxOrhR+MNCuiEg7/7lWyeGHvfPo9eSq/kJyD6J9l105HEL
 ztFUumzInAYumW+zsa1YRg8JtmX7itDKTLcvHqAUGIlKZQGlbLau9GdhAQPPQ0wF7nnMfkyODOIpZ
 e1F8fslj2ekO5Gth7lOgalAgm5GJcmjGHejGXzAhY6YenJZkiaCdcPi/AGOWnXFKFW5Oro84Sa0ky
 aTWq2pEQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldVyb-002yt1-RZ
 for barebox@lists.infradead.org; Mon, 03 May 2021 10:38:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldVya-0008OU-K1; Mon, 03 May 2021 12:38:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldVya-0006Pb-A3; Mon, 03 May 2021 12:38:56 +0200
Date: Mon, 3 May 2021 12:38:56 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210503103856.GV19819@pengutronix.de>
References: <20210426113408.24903-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210426113408.24903-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:38:42 up 74 days, 14:02, 100 users,  load average: 0.08, 0.10,
 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_033857_911919_B3B738FD 
X-CRM114-Status: GOOD (  27.05  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] sandbox: watchdog: don't return positive
 values from set_timeout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 26, 2021 at 01:34:07PM +0200, Ahmad Fatoum wrote:
> linux_watchdog_set_timeout() does return alarm(), which can never fail
> and returns either zero or a positive value.
> 
> watchdog::set_timeout on the other hand should return either 0 or
> a negative number on error.
> 
> Ignore linux_watchdog_set_timeout()'s return value, so
> watchdog_set_timeout propagates the correct value.
> 
> This fixes an issue where seconds_to_expire wasn't updated on
> subsequent pings of this watchdog.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/board/watchdog.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/board/watchdog.c b/arch/sandbox/board/watchdog.c
> index 336451282fd3..e1cff7a0bf0b 100644
> --- a/arch/sandbox/board/watchdog.c
> +++ b/arch/sandbox/board/watchdog.c
> @@ -29,7 +29,8 @@ static int sandbox_watchdog_set_timeout(struct watchdog *wdd, unsigned int timeo
>  	if (timeout > wdd->timeout_max)
>  		return -EINVAL;
>  
> -	return linux_watchdog_set_timeout(timeout);
> +	linux_watchdog_set_timeout(timeout);
> +	return 0;
>  }
>  
>  static int sandbox_watchdog_probe(struct device_d *dev)
> -- 
> 2.29.2
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

