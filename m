Delivery-date: Wed, 29 Jun 2022 09:12:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RsI-000xfb-DF
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 09:12:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RsK-0003zP-6C
	for lore@pengutronix.de; Wed, 29 Jun 2022 09:12:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m6sMQfucOgk0B40GjkCDIcIOgIlnw7QpOfR/t246rbw=; b=EQyO29nGf85+N1M0uiMM+RJR49
	GijujMLHwXimeVI0H/l1iY03VYhIa7ZECGYhz6Nf42s1GiELbW4474yCwj6yoACq/gu8sGBeHyHFZ
	MjC7ir+aiWeK4YGlM7qteuITVYhyzdXHSbxg6FFKCgX77GxbPuzj/G4H1IZs9SbBRO+kzrSjMy+mm
	eWeyUhnNN7lcquHy2+srcEoKaUy8H1Gl9pJticTyJqTSGkn6KUsMfcD4cTsodwKrYB2terYiroZmK
	xgANukbgr8pUmeriDX2TFBE6T3SIHXSrpctSaOeTU/GjS+jqrXc/VcvWg5H38NaQbyZ7hzoDnusRt
	obU31hCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RrB-00A1C7-6c; Wed, 29 Jun 2022 07:11:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Rr5-00A1AR-MR
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 07:11:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6Rr4-0003cw-2d; Wed, 29 Jun 2022 09:11:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6Rr3-0002Oq-PU; Wed, 29 Jun 2022 09:11:17 +0200
Date: Wed, 29 Jun 2022 09:11:17 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220629071117.GO19026@pengutronix.de>
References: <20220627095855.32842-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220627095855.32842-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_001119_748214_3432FD72 
X-CRM114-Status: GOOD (  21.82  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] video: imxfb: Fix call of memalign()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 27, 2022 at 11:58:55AM +0200, Uwe Kleine-König wrote:
> The first argument is the alignment not the allocation size ...
> 
> Fixes: 36152c5aa546 ("video: imx: assert that image buffer doesn't cross a 4 MiB boundary")
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/video/imx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to master, thanks

Sascha

> 
> diff --git a/drivers/video/imx.c b/drivers/video/imx.c
> index d15c2d88fb91..633815f5d919 100644
> --- a/drivers/video/imx.c
> +++ b/drivers/video/imx.c
> @@ -404,7 +404,7 @@ static int imxfb_allocate_fbbuffer(const struct device_d *dev,
>  		 * allocation as necessary, but in the absense of a better
>  		 * function just use it.
>  		 */
> -		info->screen_base = memalign(fbsize, SZ_4M);
> +		info->screen_base = memalign(SZ_4M, fbsize);
>  		if (!info->screen_base)
>  			return -ENOMEM;
>  		memset(info->screen_base, 0, fbsize);
> 
> base-commit: ff087598f4cdc426ba883a8720367a4ff3d6b9fe
> -- 
> 2.36.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


