Delivery-date: Wed, 24 Jul 2024 10:37:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWXV7-002PlF-3B
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 10:37:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWXV7-0000Em-Aa
	for lore@pengutronix.de; Wed, 24 Jul 2024 10:37:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PnL9yQO7eewQWfm+8p3/xcrXXxYS/gKaoBSUT4kI1aU=; b=JZLIF7scx4AfiUdNnAqz5GBPu3
	82ba4kCA8uTG2RSSXbEsAYiwSXXke6R1JkbTre7MDpbmwuequgVxLmGU28CneV8iVLp9XjEdM23vL
	4FZpLzeTYMKS48W/MqusDRhkEvS8fY0wU82/fJbEI81ug10qtdKcKO6WJ3Pwl2ul4kJo1raHW3stE
	yqp0RoiEIJMM5gJ4cmFqqeNrG8+uABk3eecFNgOBruwaq/QshO12bSAvzqmes8yX+IvcrFzXhFFHw
	SBuXTffQFm0w+yeFfs4PTsKiyylFgAUTpPxnfcE2UfhCRdnyNPBLfa/SJZ4fK7eUgMjuob3FIXv+w
	0ZRJLDJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWXUc-0000000EmwN-0ead;
	Wed, 24 Jul 2024 08:37:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWXUY-0000000Emvr-3wJ1
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 08:37:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sWXUX-0000BX-9M; Wed, 24 Jul 2024 10:36:57 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sWXUW-001off-Sa; Wed, 24 Jul 2024 10:36:56 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sWXUW-00FJDM-2Y;
	Wed, 24 Jul 2024 10:36:56 +0200
Date: Wed, 24 Jul 2024 10:36:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZqC9KLfHU9fW_8j1@pengutronix.de>
References: <20240722172410.3876647-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240722172410.3876647-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_013658_997588_FF180A81 
X-CRM114-Status: GOOD (  30.59  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] of: fdt: fix overflows when parsing sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jul 22, 2024 at 07:24:10PM +0200, Ahmad Fatoum wrote:
> The function dt_struct_advance() is used to advance a pointer to the next
> offset within the structure block, while checking that the result is in
> bounds.
> 
> Unfortunately, the function used a signed size argument. This had the
> effect that a too-large size in the FDT wrapped around and caused the
> pointer to move backwards.
> 
> This issue was found by libfuzzer which generated an FDT that
> always triggered an out-of-memory condition: One struct indicated a size
> that caused the pointer to move backwards.
> 
> The resulting loop allocated memory on every iteration and eventually
> ran out.
> 
> Fix this by using unsigned sizes and treating wrap around as an
> error case.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/fdt.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 8dca41990c87..237468cd8164 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -32,12 +32,13 @@ static inline bool __dt_ptr_ok(const struct fdt_header *fdt, const void *p,
>  }
>  #define dt_ptr_ok(fdt, p) __dt_ptr_ok(fdt, p, sizeof(*(p)), __alignof__(*(p)))
>  
> -static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
> +static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, uint32_t size)
>  {
> -	dt += size;
> -	dt = ALIGN(dt, 4);
> +	if (check_add_overflow(dt, size, &dt))
> +		return 0;
>  
> -	if (dt > f->off_dt_struct + f->size_dt_struct)
> +	dt = ALIGN(dt, 4);
> +	if ((!dt && size) || dt > f->off_dt_struct + f->size_dt_struct)
>  		return 0;

I am not sure I fully understand the newly added (!dt && size).

I think it's for the case when the initial addition results in something
like 0xfffffffe and the ALIGN(dt, 4) makes dt become 0, right?

I think dt being zero is a an error anyway, so what is the && size good
for?

>  
>  	return dt;

When dt is zero it is returned here which will be considered an error by
the caller anyway, so it seems the (!dt && size) check doesn't add
anything.

Note we have dt_struct_advance() twice in the tree. Care to fix the
other place as well?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


