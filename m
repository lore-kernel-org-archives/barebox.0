Delivery-date: Sun, 18 Jul 2021 07:10:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m4z4P-0000gs-QP
	for lore@lore.pengutronix.de; Sun, 18 Jul 2021 07:10:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m4z4O-00061V-TJ
	for lore@pengutronix.de; Sun, 18 Jul 2021 07:10:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MS2ZRhpxv/WDrZvexgnjdrnQ+XoMhhn0vnKZsdpWvdI=; b=bbw3m6qq8TLnBI8yMOyQjHhcEC
	WFqzQEhszKok0+DvciVc+1vv6iv7YwvI70PD8eMXfS8dzZDfoq79nZmjTQ6WRrqSxPCxRWr8IXuab
	7IBhx0g+OgD1sEb+Nh7OyIdgOy+OWk7g9lEVsc5dICQdirLb/+22Jljbi55+YXRObcQnRS7RCcybO
	hZVyhiVyapAK1cxuHsTmVA8AoDV8eIoFFSjzDo/Fg3mX4/Hz5mtuX6e0OJmqrBx5qjw1GnNqF+Qys
	JgMeQa5jTuy0Z+0pWrA0Xha4wKCe9Ru4LQtgkKApDs+cqiZweEHWfrFuh8gifZSqeTuu9uzNI17ru
	C9zolUmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4z39-007Lgu-EN; Sun, 18 Jul 2021 05:09:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4z34-007LgR-Ez
 for barebox@lists.infradead.org; Sun, 18 Jul 2021 05:09:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1m4z32-0005oV-MT; Sun, 18 Jul 2021 07:09:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1m4z32-00062y-DT; Sun, 18 Jul 2021 07:09:04 +0200
Date: Sun, 18 Jul 2021 07:09:04 +0200
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>
Message-ID: <20210718050904.GG9782@pengutronix.de>
References: <20210716122110.4022409-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210716122110.4022409-1-mkl@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:08:53 up 150 days,  8:32, 75 users,  load average: 0.04, 0.20,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210717_220906_549493_E127F600 
X-CRM114-Status: GOOD (  25.52  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] habv4: habv4_get_status(): do not print HAB error event
 in case of known RNG self test failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 16, 2021 at 02:21:10PM +0200, Marc Kleine-Budde wrote:
> In commit
> 
> | 655e085e3a22 ("crypto: caam - Always do rng selftest")
> 
> the kconfig option CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST was
> removed, which resulted in the pr_debug() never being executed. Remove
> the IS_ENABLED() to restore the original behavior, i.e. to not print
> the HAB error Event if it is the known RNG self-test failure.
> 
> Fixes: 655e085e3a22 ("crypto: caam - Always do rng selftest")
> Reported-by: Roland Hieber <rhi@pengutronix.de>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/hab/habv4.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index c2acb81369d8..d58768fa5481 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -553,8 +553,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
>  			break;
>  
>  		/* suppress RNG self-test fail events if they can be handled in software */
> -		if (IS_ENABLED(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) &&
> -		    is_known_rng_fail_event(data, len)) {
> +		if (is_known_rng_fail_event(data, len)) {
>  			pr_debug("RNG self-test failure detected, will run software self-test\n");
>  		} else {
>  			pr_err("-------- HAB Event %d --------\n", i);
> -- 
> 2.30.2
> 
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

