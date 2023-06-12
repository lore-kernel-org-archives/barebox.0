Delivery-date: Mon, 12 Jun 2023 08:30:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8b3y-003Uxg-6F
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 08:30:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8b3v-0002xO-S7
	for lore@pengutronix.de; Mon, 12 Jun 2023 08:30:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F9KHe4Yx8z6M0pw2bu4ZjrZfZ8uC2QsOFyH68MbCbdQ=; b=nn8ZP9iZhXJ3fs3FbHyNtw2jTs
	sPrt/SIHhuQoeK3s5up//MII/3Dn+zWzlTmOTtJ9boG257jBO/8cGtf/g9xSr22JrVrs41kcirUhr
	0+GhQ4Sui6FCKIDFj6Mr8Uvg9RWjTE2g6OPRELQi7JKsJyzVOtmu9ZVloh+9BNrUkjLHaqJWCe7U7
	fmGpLtSDh5b9CgVeHplMzoO2XXue4KMa/VmWQjTU7efL2Me/S30f0+DmuLS9ZBVJyYJv1APlWy3OG
	64ViX6x0EjT7VGi4EK/GMuWVWF0r9tSmsmHtgVyDp6Uc3aDT5Ozy9dH00oYDjNp8Gm51Rlb+YoUvu
	vqLM8aKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8b2V-002lXN-2g;
	Mon, 12 Jun 2023 06:28:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8b2S-002lWH-1V
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 06:28:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8b2M-0002qO-Jl; Mon, 12 Jun 2023 08:28:22 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8b2M-0001RH-Am; Mon, 12 Jun 2023 08:28:22 +0200
Date: Mon, 12 Jun 2023 08:28:22 +0200
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org
Message-ID: <20230612062822.GT18491@pengutronix.de>
References: <20230609090217.2492987-1-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230609090217.2492987-1-yegorslists@googlemail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_232828_508651_EA8D9F0B 
X-CRM114-Status: GOOD (  21.58  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] net: cpsw: increase a delay before reading the ALIVE
 register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 09, 2023 at 11:02:17AM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> At leasr am335x, the delay is not enough to reliably detect all PHYs.
> Hence, increase the timeout.
> 
> Tested with the followings PHYs:
> 
> - MotorComm YT8511
> - Atheros AT8035
> - CPlus IP101A
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  drivers/net/cpsw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index 0449240f98..fdf6ff1e8e 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -620,7 +620,7 @@ static int cpsw_mdio_probe(struct device *dev)
>  	 * silicon.  Since the effect of (b) was found to be largely
>  	 * negligible, we keep things simple here.
>  	 */
> -	udelay(1000);
> +	udelay(2000);
>  
>  	start = get_time_ns();
>  	while (1) {
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


