Delivery-date: Mon, 12 Sep 2022 11:45:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXg0U-0026ji-CU
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 11:45:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXg0S-0006LW-Rz
	for lore@pengutronix.de; Mon, 12 Sep 2022 11:45:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S6vU+si69xBvym/Eva0Md4IONr+2uTI77KUhkHM1NJU=; b=jZQms0ECZcyVgywm4xwcUgWpFb
	BHLzkwKZq6hwNyGrvyalPbf7nEO/XlCTUD+pWe3rwyq0y03zpev6CJf4ib+ja3sqincpNFmQFowMx
	KwpcewnXaWLLfaofH0DkIffms2WRXw7HsJZJtIWFS7Ie7lVEbopzaIef8nZOEje33JY1IqaQBLHel
	ChidUJbiK1u1qHZsCVk6LvNcEaV7nih+ILo02yhLvaVf6H+nMwHK0M3sCj7jU4CzRiHS8w/x4h2lV
	w0XJFMzRrDDkyg5uWxFCnXupwaWPmY6ImRvwlt/zW8JQpZQphJn3cAy8GAKMWyR5pTBcY2qtqdel3
	+7zsYIGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfzG-008MbP-LP; Mon, 12 Sep 2022 09:44:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfzB-008MZo-7d
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 09:44:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXfz9-0006AU-V7; Mon, 12 Sep 2022 11:44:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXfz9-0008IV-M7; Mon, 12 Sep 2022 11:44:11 +0200
Date: Mon, 12 Sep 2022 11:44:11 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220912094411.GN24324@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
 <20220905095557.596891-14-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905095557.596891-14-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_024413_765190_D8831C2A 
X-CRM114-Status: GOOD (  23.36  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 13/32] commands: tutorial: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 11:55:38AM +0200, Ahmad Fatoum wrote:
> We don't need to duplicate argv[i], because it persists for the lieftime

s/lieftime/lifetime/

> of print_tutorial_step. We can thus drop the strdup and while at it,
> just drop the redundant step variable altogether.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/tutorial.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/commands/tutorial.c b/commands/tutorial.c
> index 444177764311..afe5b66f0b0a 100644
> --- a/commands/tutorial.c
> +++ b/commands/tutorial.c
> @@ -84,7 +84,6 @@ out:
>  static int do_tutorial_next(int argc, char *argv[])
>  {
>  	int opt, i;
> -	char *step = NULL;
>  	char *oldcwd;
>  	ssize_t ret = 0;
>  	bool is_prev = *argv[0] == 'p';
> @@ -121,14 +120,12 @@ static int do_tutorial_next(int argc, char *argv[])
>  		next_step = next_step > 0 ? next_step - 1 : 0;
>  
>  	if (optind == argc) {
> -		step = steps.gl_pathv[next_step];
> -		ret = print_tutorial_step(step);
> +		ret = print_tutorial_step(steps.gl_pathv[next_step]);
>  		if (ret == 0 && !is_prev)
>  			next_step = (next_step + 1) % steps.gl_pathc;
>  	} else {
>  		for (i = optind; i < argc; i++) {
> -			step = strdup(argv[i]);
> -			ret = print_tutorial_step(step);
> +			ret = print_tutorial_step(argv[i]);
>  			if (ret)
>  				break;
>  		}
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


