Delivery-date: Wed, 10 Aug 2022 08:47:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLfUt-000h7O-1H
	for lore@lore.pengutronix.de; Wed, 10 Aug 2022 08:47:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLfUt-0000f1-Oa
	for lore@pengutronix.de; Wed, 10 Aug 2022 08:47:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pQa/MEbluxdtPqpsWxuTX0Nyf7uq7kyzzMsnTKRHYQU=; b=cxXz4Moen/OgVlprK5Ycsa+5s0
	4wxnq0NlwQSygJGvaVqI2Udyuv7jiH83NRgyZVDCX4uiAtB0GpBkxEk6rdnxp7UyzZ297d5ww2IcC
	mZjM/o48C1sN5z3/j9DM3t/QfQ1rOVxz4arls0IHTaM+b59N9zNaI8BLMcabD39wTqZLtRZ/NAEp7
	7wNshqz6HmAvWMpZtma9ibA/dJV6b5NMu1/CY3ixtbQuSl3zctnYrDOr1XNlxRLWcCnELc3BobTsh
	8YPPJOwO5z5p1ZfHoS4hdput5ib2fxE21wP8kUiOPj5REJa+3mYB8uNp41W9rBZkXfX14wU23OYL1
	mMrXEsCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLfTY-00A6FI-0R; Wed, 10 Aug 2022 06:45:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLfTP-00A6CV-RI
	for barebox@lists.infradead.org; Wed, 10 Aug 2022 06:45:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLfTO-0000Q8-GL; Wed, 10 Aug 2022 08:45:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLfTO-0001Nx-7M; Wed, 10 Aug 2022 08:45:46 +0200
Date: Wed, 10 Aug 2022 08:45:46 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220810064546.GW31528@pengutronix.de>
References: <20220809153723.3126440-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220809153723.3126440-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_234547_977381_D502F1ED 
X-CRM114-Status: GOOD (  18.52  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] fixup! FIT: add first support for compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 09, 2022 at 05:37:23PM +0200, Ahmad Fatoum wrote:
> printf argument was missing, add it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/image-fit.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 82357731fa7a..3e6e7fbd6d12 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -625,7 +625,8 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
>  		void *uc_data;
>  
>  		if (!IS_ENABLED(CONFIG_UNCOMPRESS)) {
> -			pr_err("image has compression = \"%s\", but support not compiled in\n");
> +			pr_err("image has compression = \"%s\", but support not compiled in\n",
> +			       compression);
>  			return -ENOSYS;
>  		}
>  
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


