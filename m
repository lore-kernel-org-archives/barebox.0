Delivery-date: Wed, 22 Oct 2025 11:58:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVbs-00AZ60-2x
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 11:58:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVbs-00035t-C2
	for lore@pengutronix.de; Wed, 22 Oct 2025 11:58:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cjVR5gSSIQ7SCvLhcHtMVmuNRi5oaVOlxn3CGl8TWqM=; b=kVN3vIx8Xn2zSwYwDsDX9wgDuQ
	vu94NyIy2MzcKl2ETpmAKbPgKMnfUHof5xpR8yo2IVWIq3dbzh3Av9xpkztcl21jynhxV3vq/Q2ce
	RWePm0NTo+56woM/KoHGU7uOq/XLNGIzbwQkk0gH5m0qe7dyK7THp1jsbcUYY8/9Ly/HOaDR5gEaS
	l8kvuCvU4XJ5Fj8fjYZ9+W/30wXYGQNdWbU4DFhz1OXTPUDBq7MpPEVVgB+fvbajjZYFAktTlCEBq
	yAeyik0rDmi9l8Nb5DSvWRC5hKLKgYYfqX1/qfWWkRV8LQoDMxflkHVShZxzxvAksA3VGbnNmNI/U
	uw19jSJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVbE-00000002Lk8-1Gyn;
	Wed, 22 Oct 2025 09:57:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVbA-00000002Lde-399M
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 09:57:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vBVb5-0002uO-Gr; Wed, 22 Oct 2025 11:57:35 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vBVb5-004rzK-15;
	Wed, 22 Oct 2025 11:57:35 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vBVb5-00B7Gc-0n;
	Wed, 22 Oct 2025 11:57:35 +0200
Date: Wed, 22 Oct 2025 11:57:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Jonas Rebmann <jre@pengutronix.de>
Message-ID: <20251022095735.bqyrvior5jsq6rho@pengutronix.de>
References: <20251022093813.4191649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251022093813.4191649-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_025741_358224_2F342D92 
X-CRM114-Status: GOOD (  18.25  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! FIT: compare key name hint with streq_ptr for
 clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-10-22, Ahmad Fatoum wrote:
> FIT: fix use of multiple FIT keys
> 
> streq_ptr returns true if both arguments are NULL. This can happen if we

Damn!

> have no FIT key name hints at all and shouldn't lead to ignoring keys,
> so add the check for the hint.
> 
> Cc: Marco Felsch <m.felsch@pengutronix.de>
> Reported-by: Jonas Rebmann <jre@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  common/image-fit.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 3017ccb5048f..22f768e7a070 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -290,8 +290,8 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
>  	for_each_public_key(key) {
>  		fail_reason = "verification failed";
>  
> -		/* Don't recheck with same key as before */
> -		if (streq_ptr(key->key_name_hint, key_name))
> +		/* Don't recheck with same key_name as before */
> +		if (key_name && streq_ptr(key->key_name_hint, key_name))
>  			continue;
>  
>  		ret = public_key_verify(key, sig_value, sig_len, hash, algo);
> -- 
> 2.47.3
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


