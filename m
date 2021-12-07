Delivery-date: Tue, 07 Dec 2021 10:14:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWYL-0008E3-QQ
	for lore@lore.pengutronix.de; Tue, 07 Dec 2021 10:14:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWYK-0002NK-6E
	for lore@pengutronix.de; Tue, 07 Dec 2021 10:14:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p7qLGjK6ZwmYPMFLfwC6urjSCTlb68ouy/yEDI/527w=; b=WtHyGSaOFMRGJQbDc1q+ufktBJ
	Zs+VV37kKEvJlTVA/gmoBhqxBWhs3lUqaUdU7+7EUAHK4CpSPn0I37xWlnwkWb0U7tHyft9tI74nO
	FoBlnthW9SS3QgasQu/K2W4ZQkBGtpHp3Xbt7xsYVK5qaxsgmq4STBiU5WzQy8vTs2jtu48m114Pd
	ozGbCR8IEpWudU+KMHupsr3C0M9jSUR8/qQn6YvecMjtl9/wYD7ncGVzcJCJlLquqkPpBgPmb10Kw
	/QZSdlP8knfoKUB+i2JwOCmwWTSP8Ya1A2Hg3pUJK4eaS+Q3YWsSZsNb8+PMxc2cXtVJpk+Xws1xX
	CKvVI8Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muWVb-007jX3-Ty; Tue, 07 Dec 2021 09:11:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muWRH-007hl6-35
 for barebox@lists.infradead.org; Tue, 07 Dec 2021 09:07:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWRF-0000vw-8p; Tue, 07 Dec 2021 10:07:05 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWRE-00038l-Vp; Tue, 07 Dec 2021 10:07:04 +0100
Date: Tue, 7 Dec 2021 10:07:04 +0100
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211207090704.GG28260@pengutronix.de>
References: <20211130160308.316863-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211130160308.316863-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:06:55 up 292 days, 12:30, 143 users,  load average: 0.26, 0.36,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_010707_203199_874B9989 
X-CRM114-Status: GOOD (  26.59  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts/kwboot: Fix normalizing timeval
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Nov 30, 2021 at 05:03:08PM +0100, Uwe Kleine-K=F6nig wrote:
> If tv.tv_usec is 1000000 the structure needs normalizing, too. So the
> right check would be:
> =

> 	if (tv.tv_usec >=3D 1000000) {
> 		...
> =

> But as normalizing doesn't destroy anything even for smaller values,
> just do it unconditionally to simplify a bit.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  scripts/kwboot.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/scripts/kwboot.c b/scripts/kwboot.c
> index 60e8a69d187d..1cbb456935f2 100644
> --- a/scripts/kwboot.c
> +++ b/scripts/kwboot.c
> @@ -147,12 +147,11 @@ kwboot_tty_recv(int fd, void *buf, size_t len, int =
timeo)
>  	FD_ZERO(&rfds);
>  	FD_SET(fd, &rfds);
>  =

> -	tv.tv_sec =3D 0;
>  	tv.tv_usec =3D timeo * 1000;
> -	if (tv.tv_usec > 1000000) {
> -		tv.tv_sec +=3D tv.tv_usec / 1000000;
> -		tv.tv_usec %=3D 1000000;
> -	}
> +
> +	/* normalize timeval */
> +	tv.tv_sec =3D tv.tv_usec / 1000000;
> +	tv.tv_usec %=3D 1000000;
>  =

>  	do {
>  		nfds =3D select(fd + 1, &rfds, NULL, NULL, &tv);
> =

> base-commit: f2dd8896846757829fb3033f41b89be3fc037d78
> -- =

> 2.30.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

