Delivery-date: Mon, 20 Jun 2022 11:41:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3DuZ-007wsq-QE
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 11:41:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3DuY-0007MJ-Rc
	for lore@pengutronix.de; Mon, 20 Jun 2022 11:41:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1oVCLTcx8E1UrcqMFBw16CA9nys5hV+u623iasrdy7w=; b=4IlnHj5q0gBLqF5K2Tpauuiv/S
	Nvvg7NP86ThpEjkliC4i1++lKJb/zNd8DwA2tkKDmg6OCHYPKJ6998TfLS9tS9vequVh9PIcGJhqS
	QvBnZpn3hUIGxnp6lcIwvcgglO6TmvDlI9lnCIlCD7saNe8j8MUzz9voyI1wvt8SZTk7DLhWeCe46
	nJgtc/cDip3bPvG8rj+kLU3afgvq+srM5uQZ+BRqql8ymw8XEl3t29FfzaE1b9whx31CP/NWhq3ap
	Tl77MUEKQZkWunG03NNC0fVtusRZnh72lvq7hs7zoZ647eLMPFLC06dqFa9SJA8q0cNmBP6EPQW2a
	jOqgJKbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Dsm-00HGMv-9C; Mon, 20 Jun 2022 09:39:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Ds7-00HG4T-73
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 09:39:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o3Ds3-0006iO-1t; Mon, 20 Jun 2022 11:38:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o3Ds2-0006xh-PA; Mon, 20 Jun 2022 11:38:58 +0200
Date: Mon, 20 Jun 2022 11:38:58 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220620093858.GQ1615@pengutronix.de>
References: <20220620071936.1460295-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220620071936.1460295-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_023903_287324_65260A5C 
X-CRM114-Status: GOOD (  22.04  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] state: don't report error for -ENOMEDIUM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 20, 2022 at 09:19:36AM +0200, Ahmad Fatoum wrote:
> Since commit 863a2251393e ("state: make first boot less verbose"),
> state_load returns -ENOMEDIUM instead of -ENOENT if we detect
> a first load because all buckets are zero.
> 
> This case is expected and shouldn't warrant an error message, so
> adjust callers appropriately.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/state.c          | 3 +++
>  common/efi/payload/init.c | 2 +-
>  2 files changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/state.c b/commands/state.c
> index e7cb9902f71a..56ef93b19fa4 100644
> --- a/commands/state.c
> +++ b/commands/state.c
> @@ -53,6 +53,9 @@ static int do_state(int argc, char *argv[])
>  		ret = state_save(state);
>  	}
>  
> +	if (ret == -ENOMEDIUM)
> +		ret = 0;
> +
>  	return ret;
>  }
>  
> diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
> index e2bddabc9a42..6976285fb3c3 100644
> --- a/common/efi/payload/init.c
> +++ b/common/efi/payload/init.c
> @@ -359,7 +359,7 @@ static int efi_late_init(void)
>  			return PTR_ERR(state);
>  
>  		ret = state_load(state);
> -		if (ret)
> +		if (ret != -ENOMEDIUM)
>  			pr_warn("Failed to load persistent state, continuing with defaults, %d\n",
>  				ret);
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


