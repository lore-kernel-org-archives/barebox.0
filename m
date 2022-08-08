Delivery-date: Mon, 08 Aug 2022 13:50:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL1H2-00G7Yp-Vs
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 13:50:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL1H3-0004KY-5v
	for lore@pengutronix.de; Mon, 08 Aug 2022 13:50:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q86/8RAOUlCqWAAQZQhwgPJ2a7aDgVMsoI5yoXzbCJI=; b=dXFfVbLZpomHQPEbQfBbPp+JLj
	+vei8THNI4p3tQ9Fn71jJRPK0tpY9m/SFo5zA3zzVRDR+PhYUicQjLYppMo1c3xQnqvcdejGOjKwg
	b4OgRAVbXHTs3dPNC/rO3fJLKVxJH48DPlLylAe6tNsOCk4+sQzWphPT0xHB1+dyYsG7YvDf4G7r2
	biDENwRpVgPSxW+MVGIg7a503QPu+Dksnpi690NYD9FdrwW6IqiZN1184ImeGwJKEr9uHSQjMN+Ss
	kHt2cFVBstBAVWrDd34/sl9nwNayvbvEC6SnGbKcjXszRjZTUi/t5VQKg53MEVZNOOrzrEETtQSHp
	R/c6ZQEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1Fk-00DKwl-3X; Mon, 08 Aug 2022 11:49:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1Ff-00DKuX-73
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 11:48:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL1Fd-00045B-4H; Mon, 08 Aug 2022 13:48:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL1Fc-0006S3-R7; Mon, 08 Aug 2022 13:48:52 +0200
Date: Mon, 8 Aug 2022 13:48:52 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808114852.GI7333@pengutronix.de>
References: <20220808062010.390394-1-a.fatoum@pengutronix.de>
 <20220808062010.390394-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220808062010.390394-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_044855_276546_463DF699 
X-CRM114-Status: GOOD (  23.16  )
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
Subject: Re: [PATCH master 2/3] common: machine_id: guard against digest algo
 being unavailable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 08, 2022 at 08:20:09AM +0200, Ahmad Fatoum wrote:
> All callsites of digest_alloc(_by_algo) check for NULL pointer before
> proceeding except for machine_id_set_globalvar(). Fix this to fail
> more gracefully instead of the crash I ran into.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/machine_id.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/common/machine_id.c b/common/machine_id.c
> index a530fdeb1da8..189e74bd6796 100644
> --- a/common/machine_id.c
> +++ b/common/machine_id.c
> @@ -30,14 +30,15 @@ static int machine_id_set_globalvar(void)
>  	unsigned char machine_id[SHA1_DIGEST_SIZE];
>  	char hex_machine_id[MACHINE_ID_LENGTH];
>  	char *env_machine_id;
> -	int ret;
> +	int ret = -EOPNOTSUPP;
>  
>  	/* nothing to do if no hashable information provided */
>  	if (!__machine_id_hashable)
>  		return 0;
>  
>  	digest = digest_alloc_by_algo(HASH_ALGO_SHA1);

Had to read this twice to be sure it's correct. A plain

	if (!digest) {
		ret = -EOPNOTSUPP;
		goto out;
	}

seems easier to follow.

Sascha

> -	ret = digest_init(digest);
> +	if (digest)
> +		ret = digest_init(digest);
>  	if (ret)
>  		goto out;
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


