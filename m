Delivery-date: Tue, 30 Nov 2021 11:30:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0PS-00033G-Ry
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 11:30:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0PR-0000gr-Fk
	for lore@pengutronix.de; Tue, 30 Nov 2021 11:30:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7w6GokwNt/Dzr8p5dzAlUo7aztjpe5bfLQ+DXkezFaU=; b=FnfvH2b+cLka0PNhS/M2X9m39b
	m9glQuWI7Zdx+GW8NRsw5Wmpi3vmjm0QFZ90POWS7z48Ex/zBPFqNBIZaZ9H2+NHs0Ib4O3crIGFJ
	xzVWl7/oh2kWvoquko4TVp4lr8dB7Fu7h72UNkVjAfM9atrMrydCjIazHAAuWTy/uSnLJf1BodROk
	3FIcnLB9TdpO0KfUueqRHl7d//qK7V5GwS3bBvS9Gx/2No5+1PjH4+xyEGhWqhZqaplXTMm0jpAWp
	UrK+CHajhr0ILyOPVwV+JIpoqzG75v+2LLetL3adI/QoP3UHU91ukv+fBuOBJ3QdgSL8kPAArcqf7
	Z50qkTRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms0O1-004cT2-9g; Tue, 30 Nov 2021 10:29:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms0Hw-004aED-05
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 10:23:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ms0Hu-00080A-Ln; Tue, 30 Nov 2021 11:23:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ms0Hu-0008Pd-Ah; Tue, 30 Nov 2021 11:23:02 +0100
Date: Tue, 30 Nov 2021 11:23:02 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20211130102302.GP28260@pengutronix.de>
References: <20211129072235.2016324-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211129072235.2016324-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:21:39 up 285 days, 13:45, 144 users,  load average: 0.10, 0.14,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_022304_104785_197C33E5 
X-CRM114-Status: GOOD (  28.32  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] state: make first boot with uninitialized legacy state
 less verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 29, 2021 at 08:22:35AM +0100, Ahmad Fatoum wrote:
> With non-legacy state, barebox checks a header for a specific magic
> signature. This can be all zero on an uninitialized state, so in that
> particular case, bump down the log message severity.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> Applies on top of https://lore.barebox.org/barebox/20211125161042.3829996-3-a.fatoum@pengutronix.de/
> ---
>  common/state/backend_bucket_direct.c | 4 ++--
>  common/state/backend_storage.c       | 7 +++++--
>  2 files changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
> index 517aec60634b..117cdfb46c9e 100644
> --- a/common/state/backend_bucket_direct.c
> +++ b/common/state/backend_bucket_direct.c
> @@ -76,9 +76,9 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
>  		if (meta.magic != ~0 && !!meta.magic)
>  			bucket->wrong_magic = 1;
>  		if (!IS_ENABLED(CONFIG_STATE_BACKWARD_COMPATIBLE)) {
> -			dev_err(direct->dev, "No meta data header found\n");
>  			dev_dbg(direct->dev, "Enable backward compatibility or increase stride size\n");
> -			return -EINVAL;
> +			return dev_err_state_init(direct->dev, meta.magic ? -EINVAL : -ENOMEDIUM,
> +						  "No meta data header found\n");

What is dev_err_state_init()? I don't have that in my tree.

>  		}
>  		read_len = direct->max_size;
>  		if (lseek(direct->fd, direct->offset, SEEK_SET) !=
> diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
> index 72f8bcf521ad..c55d22e37f70 100644
> --- a/common/state/backend_storage.c
> +++ b/common/state/backend_storage.c
> @@ -156,10 +156,13 @@ int state_storage_read(struct state_backend_storage *storage,
>  		totalbuckets++;
>  
>  		ret = bucket->read(bucket, &bucket->buf, &bucket->len);
> -		if (ret == -EUCLEAN)
> +		if (ret == -EUCLEAN) {
>  			bucket->needs_refresh = 1;
> -		else if (ret)
> +		} else if (ret) {
> +			if (ret == -ENOMEDIUM)
> +				zerobuckets++;

This variable also does not exist. Does this patch depend on other
patches?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

