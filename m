Delivery-date: Mon, 08 Aug 2022 13:41:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL18j-00G6o0-MP
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 13:41:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL18k-0003Jw-Fi
	for lore@pengutronix.de; Mon, 08 Aug 2022 13:41:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/EskJCSF8dmUrbm0KDOkcR3BRM75ySj10t5PWmGWxWA=; b=Iqy+3pCfLy3rhGQWzgGLB/taIB
	sExGoCSsVU1nDpBND6ZuFEh4jiqxHfBfQsryA5O539Iy5QwncQfVe1qkYcKYDth4rZQh3lc6yPXB1
	1gPxWXJcQYza5q3hkwuHFRtI8GkvPZ7JAPaAaWbHp31dOhsEnh9uDwKF00M2WqHHO3h7sl9y6oBk5
	sVBuzaih6IKe3ubz+k65CVMOAVnMGV1s3YlCa1r08tGuzOY9z8fFu9oKcL+yA7pTKTI3p8anfwT15
	ZdFLRxoqt/Li4am0EB+6r/rVJn2CG3FLbz+kTxKedklFEOPBVxFoU+xwUoVmgHpd6RqV4FU+9ZRwA
	dzTYrWxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL17W-00DGYX-6B; Mon, 08 Aug 2022 11:40:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL17R-00DGXU-L1
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 11:40:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL17Q-00031K-EV; Mon, 08 Aug 2022 13:40:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL17Q-0006GW-62; Mon, 08 Aug 2022 13:40:24 +0200
Date: Mon, 8 Aug 2022 13:40:24 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808114024.GH7333@pengutronix.de>
References: <20220808062010.390394-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220808062010.390394-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_044025_711366_A46487F5 
X-CRM114-Status: GOOD (  25.67  )
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
Subject: Re: [PATCH master 1/3] common: machine_id: simplify early exit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 08, 2022 at 08:20:08AM +0200, Ahmad Fatoum wrote:
> We don't need the goto if we haven't done anything to clean up anyway.
> also globalvar_add_simple("machine_id", NULL) is a no-op when we have
> just called globalvar_add_simple above with an actual argument.
> It doesn't clean the parameter, nor should it, because the code is
> executed for the successful code as well and there is nothing that can
> fail that late.
> 
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/machine_id.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/common/machine_id.c b/common/machine_id.c
> index 6480806cd287..a530fdeb1da8 100644
> --- a/common/machine_id.c
> +++ b/common/machine_id.c
> @@ -30,11 +30,11 @@ static int machine_id_set_globalvar(void)
>  	unsigned char machine_id[SHA1_DIGEST_SIZE];
>  	char hex_machine_id[MACHINE_ID_LENGTH];
>  	char *env_machine_id;
> -	int ret = 0;
> +	int ret;
>  
>  	/* nothing to do if no hashable information provided */
>  	if (!__machine_id_hashable)
> -		goto out;
> +		return 0;
>  
>  	digest = digest_alloc_by_algo(HASH_ALGO_SHA1);
>  	ret = digest_init(digest);
> @@ -58,8 +58,6 @@ static int machine_id_set_globalvar(void)
>  	free(env_machine_id);
>  
>  out:
> -	globalvar_add_simple("machine_id", NULL);

Without this patch we always created a global.machine_id variable,
either empty or with a value. With this patch we only create this
variable when it's non-empty. I think this change is ok as we also
don't have this variable when CONFIG_MACHINE_ID is disabled.

Still the "No functional change" doesn't hold true, so we should remove
it from the commit message.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


